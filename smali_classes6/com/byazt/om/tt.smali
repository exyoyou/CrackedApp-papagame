.class public Lcom/byazt/om/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pq/c;
.implements Lcom/byazt/om/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x22a,
        0xd
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;>;"
        }
    .end annotation
.end field

.field public da:Lcom/byazt/py/c;

.field public i:Landroid/os/Handler;

.field public n:Lcom/byazt/nbs/tt;

.field public sl:Z

.field public sp:Lcom/byazt/ll/tt;

.field public tt:Lcom/byazt/iz/c;

.field public uj:Lcom/byazt/iz/tt;

.field public final ve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/om/tt;->ve:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/byazt/om/tt;->sl:Z

    .line 13
    .line 14
    invoke-static {}, Lcom/byazt/eu/n;->tt()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v1, Lcom/byazt/om/tt$1;

    .line 21
    .line 22
    invoke-direct {v1, p0, v0}, Lcom/byazt/om/tt$1;-><init>(Lcom/byazt/om/tt;Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/byazt/om/tt;->i:Landroid/os/Handler;

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {}, Lcom/byazt/eu/n;->c()V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/byazt/om/tt$2;

    .line 32
    .line 33
    invoke-static {}, Lcom/byazt/eu/n;->tt()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, p0, v1}, Lcom/byazt/om/tt$2;-><init>(Lcom/byazt/om/tt;Landroid/os/Looper;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/byazt/om/tt;->i:Landroid/os/Handler;

    .line 41
    .line 42
    return-void
.end method

.method public static synthetic c(Lcom/byazt/om/tt;)Lcom/byazt/ll/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/om/tt;->sp:Lcom/byazt/ll/tt;

    return-object p0
.end method

.method private c(II)V
    .locals 5

    .line 31
    iget-object v0, p0, Lcom/byazt/om/tt;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v2}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "loadLevelWaterFall start...\u6267\u884c\u5f53\u524d\u52a0\u8f7d\u5c42\u7ea7 \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " levelSort:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  waterFallConfig.size:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 34
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTMediationSDK"

    .line 35
    invoke-static {v2, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {v0}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 37
    :cond_2
    iget-object v1, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/byazt/iz/c;->c(II)V

    .line 38
    invoke-static {p1}, Lcom/byazt/qv/sp;->ve(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    iget-object v1, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->gu()J

    move-result-wide v1

    goto :goto_1

    .line 40
    :cond_3
    iget-object v1, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->sv()J

    move-result-wide v1

    .line 41
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 42
    invoke-static {p1}, Lcom/byazt/qv/sp;->c(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    .line 43
    iput v4, v3, Landroid/os/Message;->what:I

    goto :goto_2

    .line 44
    :cond_4
    invoke-static {p1}, Lcom/byazt/qv/sp;->ve(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    .line 45
    iput v4, v3, Landroid/os/Message;->what:I

    goto :goto_2

    .line 46
    :cond_5
    invoke-static {p1}, Lcom/byazt/qv/sp;->tt(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x3

    .line 47
    iput v4, v3, Landroid/os/Message;->what:I

    goto :goto_2

    :cond_6
    const/4 v4, 0x4

    .line 48
    iput v4, v3, Landroid/os/Message;->what:I

    .line 49
    invoke-static {p1}, Lcom/byazt/vx/rh;->c(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    :goto_2
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 51
    iget-object p1, p0, Lcom/byazt/om/tt;->i:Landroid/os/Handler;

    if-eqz p1, :cond_7

    .line 52
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 53
    :cond_7
    iget-object p1, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->bx()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_8

    .line 54
    iget-object p1, p0, Lcom/byazt/om/tt;->i:Landroid/os/Handler;

    if-eqz p1, :cond_8

    const/4 v3, 0x5

    .line 55
    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 56
    iget-object p1, p0, Lcom/byazt/om/tt;->i:Landroid/os/Handler;

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 57
    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_a

    .line 58
    :try_start_0
    new-instance p1, Lcom/byazt/om/tt$4;

    invoke-direct {p1, p0, v0, p2}, Lcom/byazt/om/tt$4;-><init>(Lcom/byazt/om/tt;Ljava/util/List;I)V

    invoke-static {p1}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    .line 59
    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->yv()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 60
    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 61
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_a
    return-void
.end method

.method private c(Landroid/os/Message;)V
    .locals 7

    .line 85
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 86
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "\u5e7f\u544a\u89e6\u53d1\u5c42\u8d85\u65f6.........levelSort:"

    const/4 v3, 0x1

    const-string v4, "TTMediationSDK"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 87
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v0}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u89e6\u53d1\u603b\u8d85\u65f6........."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "total_t_out"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v1}, Lcom/byazt/iz/tt;->c()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v1}, Lcom/byazt/iz/tt;->cu()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {p1}, Lcom/byazt/iz/c;->uj()V

    .line 91
    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    move-result-object p1

    iput-boolean v3, p1, Lcom/byazt/nbs/i;->a:Z

    .line 92
    invoke-virtual {p0}, Lcom/byazt/om/tt;->tt()Z

    goto/16 :goto_2

    .line 93
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v1}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u89e6\u53d1\u6700\u5c0f\u5c42\u8d85\u65f6.........levelSort:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/byazt/om/tt;->tt()Z

    return-void

    .line 95
    :pswitch_2
    iget-object v1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "cb_t_out"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v5}, Lcom/byazt/iz/tt;->c()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v5}, Lcom/byazt/iz/tt;->cu()J

    move-result-wide v5

    invoke-static {v1, v3, v5, v6}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 97
    :cond_1
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v3}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    const-string p1, "ClientBidding\u5c42"

    goto :goto_0

    :cond_2
    const-string p1, "ServerBidding\u5c42\u5c42"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {p1, v0}, Lcom/byazt/iz/c;->uj(I)V

    .line 99
    invoke-virtual {p0}, Lcom/byazt/om/tt;->tt()Z

    return-void

    .line 100
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v5}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v3, :cond_3

    const-string p1, "P\u5c42"

    goto :goto_1

    :cond_3
    const-string p1, "\u666e\u901a\u5c42"

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    if-eqz p1, :cond_4

    .line 102
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "t_out_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v2}, Lcom/byazt/iz/tt;->c()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v2}, Lcom/byazt/iz/tt;->cu()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 103
    :cond_4
    iget-object p1, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {p1, v0}, Lcom/byazt/iz/c;->uj(I)V

    .line 104
    invoke-virtual {p0}, Lcom/byazt/om/tt;->tt()Z

    move-result p1

    if-nez p1, :cond_5

    .line 105
    invoke-virtual {p0, v0}, Lcom/byazt/om/tt;->tt(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/byazt/om/tt;->ve(I)V

    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Lcom/byazt/ll/tt;Ljava/util/List;Lcom/byazt/pl/tt;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ll/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;",
            "Lcom/byazt/pl/tt;",
            "J)V"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/byazt/pl/tt;->uj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    move-result-object v0

    iget-object v1, p3, Lcom/byazt/pl/tt;->uj:Ljava/lang/String;

    iput-object v1, v0, Lcom/byazt/nbs/i;->c:Ljava/lang/String;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 166
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->x()Ljava/util/Map;

    move-result-object v0

    iget v1, p3, Lcom/byazt/pl/tt;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "price_source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    .line 167
    iget-object v0, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {v0}, Lcom/byazt/iz/c;->n()Z

    move-result v0

    .line 168
    invoke-static {p1, p3, v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;Lcom/byazt/pl/tt;I)V

    .line 169
    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    if-eqz p1, :cond_2

    .line 170
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->cu()J

    move-result-wide v0

    const-string v2, "ret_sb"

    invoke-static {p1, v2, v0, v1}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    :cond_2
    const-string p1, "TTMediationSDK"

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_6

    .line 171
    iget-object v2, p3, Lcom/byazt/pl/tt;->tt:Ljava/util/List;

    invoke-static {v2}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 172
    iget-object p2, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {p2, v1}, Lcom/byazt/iz/c;->c(I)V

    .line 173
    iget-object p2, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p2}, Lcom/byazt/iz/tt;->uj()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p2}, Lcom/byazt/iz/tt;->n()Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_0

    .line 174
    :cond_3
    iget-object p2, p0, Lcom/byazt/om/tt;->ve:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 175
    iget-object p2, p0, Lcom/byazt/om/tt;->ve:Ljava/util/List;

    iget-object v2, p3, Lcom/byazt/pl/tt;->tt:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    iget-object p2, p0, Lcom/byazt/om/tt;->i:Landroid/os/Handler;

    if-eqz p2, :cond_4

    .line 177
    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object p2, p0, Lcom/byazt/om/tt;->i:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-object p2, p0, Lcom/byazt/om/tt;->i:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    :cond_4
    iget-object p2, p3, Lcom/byazt/pl/tt;->tt:Ljava/util/List;

    invoke-static {p2}, Lcom/byazt/vx/h;->c(Ljava/util/List;)V

    .line 181
    iget-object p2, p3, Lcom/byazt/pl/tt;->tt:Ljava/util/List;

    iget-object v2, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {v2}, Lcom/byazt/nbs/tt;->yp()Z

    move-result v2

    invoke-static {p2, v2}, Lcom/byazt/qv/sp;->c(Ljava/util/List;Z)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/byazt/om/tt;->c:Ljava/util/Map;

    .line 182
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/byazt/om/tt;->x:Ljava/util/List;

    .line 183
    iget-object v2, p0, Lcom/byazt/om/tt;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    iget-object p2, p0, Lcom/byazt/om/tt;->x:Ljava/util/List;

    invoke-static {p2}, Lcom/byazt/oi/tt;->c(Ljava/util/List;)V

    .line 185
    iget-object p2, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    iget-object v2, p0, Lcom/byazt/om/tt;->x:Ljava/util/List;

    invoke-virtual {p2, v2}, Lcom/byazt/iz/c;->c(Ljava/util/List;)V

    .line 186
    iget-object p2, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    iget-object v2, p3, Lcom/byazt/pl/tt;->tt:Ljava/util/List;

    iget-object v3, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->l()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/qv/sp;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {v4}, Lcom/byazt/nbs/tt;->l()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/byazt/qv/sp;->ve(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2, v2, v3, v4}, Lcom/byazt/iz/c;->c(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 187
    iget-object p2, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    iget-object v2, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    iget-object v3, p3, Lcom/byazt/pl/tt;->tt:Ljava/util/List;

    invoke-static {p2, v2, v3}, Lcom/byazt/ye/c;->c(Lcom/byazt/nbs/tt;Lcom/byazt/iz/tt;Ljava/util/List;)V

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v2}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "serverBidding\u54cd\u5e94\u56de\u6765..........\u5f00\u59cb\u4ece\u5934\u5f00\u59cb\u8bf7\u6c42waterFallConfig  \u4ee3\u7801\u4f4d\u603b\u6570\u91cf\uff1a"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lcom/byazt/pl/tt;->tt:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, v0}, Lcom/byazt/om/tt;->ve(I)V

    .line 190
    invoke-virtual {p0}, Lcom/byazt/om/tt;->tt()Z

    goto :goto_2

    :cond_5
    :goto_0
    return-void

    .line 191
    :cond_6
    iget-object v2, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/byazt/iz/c;->c(I)V

    .line 192
    iget-object v2, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v2}, Lcom/byazt/iz/tt;->uj()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v2}, Lcom/byazt/iz/tt;->n()Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_3

    .line 193
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v3}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "serverBidding\u54cd\u5e94\u5931\u8d25\u4e86.......... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {p1, v0}, Lcom/byazt/iz/c;->tt(I)V

    if-eqz p2, :cond_8

    .line 195
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_8

    .line 196
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/nbs/da;

    .line 197
    iget-object v3, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    iget-object v4, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v4, v2}, Lcom/byazt/qv/sp;->c(Lcom/byazt/nbs/tt;Lcom/byazt/nbs/da;)I

    move-result v4

    invoke-virtual {v2}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/byazt/iz/c;->c(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_8
    invoke-virtual {p0}, Lcom/byazt/om/tt;->tt()Z

    move-result p1

    if-nez p1, :cond_9

    .line 199
    iget-object p1, p0, Lcom/byazt/om/tt;->da:Lcom/byazt/py/c;

    if-eqz p1, :cond_9

    .line 200
    invoke-interface {p1}, Lcom/byazt/py/c;->c()V

    :cond_9
    :goto_2
    if-eqz p3, :cond_a

    .line 201
    iget-object p1, p3, Lcom/byazt/pl/tt;->sl:Lorg/json/JSONObject;

    const-string p2, "0-req"

    invoke-static {p1, p2, p4, p5}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 202
    :cond_a
    iget-object p1, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    if-eqz p1, :cond_b

    if-eqz p3, :cond_b

    .line 203
    invoke-static {}, Lcom/byazt/psp/tt;->uj()Lcom/byazt/psp/tt;

    move-result-object v2

    iget-wide v3, p3, Lcom/byazt/pl/tt;->t:D

    iget-wide v5, p3, Lcom/byazt/pl/tt;->yp:D

    iget-object p1, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->cu()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/byazt/psp/c;->c(DDLjava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz p3, :cond_c

    .line 204
    iget-boolean p1, p3, Lcom/byazt/pl/tt;->ve:Z

    if-eqz p1, :cond_c

    .line 205
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/qe/tt;->c(Lcom/byazt/qe/c;)Lcom/byazt/qe/tt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/qe/tt;->c()Lcom/byazt/qe/tt;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/byazt/qe/tt;->c(I)V

    :cond_c
    :goto_3
    return-void
.end method

.method public static synthetic c(Lcom/byazt/om/tt;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/om/tt;->ve(I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/om/tt;Landroid/os/Message;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/om/tt;->c(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/om/tt;Lcom/byazt/ll/tt;Ljava/util/List;Lcom/byazt/pl/tt;J)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Lcom/byazt/om/tt;->c(Lcom/byazt/ll/tt;Ljava/util/List;Lcom/byazt/pl/tt;J)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/om/tt;)Lcom/byazt/iz/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    return-object p0
.end method

.method private tt(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 43
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yl/ve;

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/yl/ve;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->canAdReuse()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/om/tt;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/om/tt;->sp:Lcom/byazt/ll/tt;

    invoke-virtual {v4}, Lcom/byazt/ll/tt;->n()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/byazt/hk/c;->n(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/yl/ve;

    if-eqz v3, :cond_0

    .line 48
    new-instance v4, Lcom/byazt/ix/sp;

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/byazt/om/tt;->sp:Lcom/byazt/ll/tt;

    invoke-direct {v4, v3, v5, v6, v7}, Lcom/byazt/ix/sp;-><init>(Lcom/byazt/yl/ve;JLcom/byazt/ll/tt;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 50
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ix/sp;

    iget-object p1, p1, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--==-- \u5e7f\u544a\u590d\u7528:\u5e7f\u544a\u7f13\u5b58\u6210\u529f -------"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", adType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v4

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getSubAdType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/byazt/yl/c;->c(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", adnSlotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ad\u4e2a\u6570: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "TTMediationSDK"

    .line 54
    invoke-static {v3, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v0}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_2
    return-void
.end method

.method private uj(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->uj()Z

    move-result v0

    const-string v1, "TTMediationSDK"

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/byazt/om/tt;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->da()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v0}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5df2\u7ecf\u89e6\u53d1\u8fc7destroy\u64cd\u4f5c..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/om/tt;->tt()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/byazt/om/tt;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "\u7b2c "

    if-lt p1, v0, :cond_3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v3}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u5c42\u6ca1\u6709\u5e7f\u544a\u53ef\u4ee5\u8bf7\u6c42..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/byazt/om/tt;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 8
    iget-object v3, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {v3, v0}, Lcom/byazt/iz/c;->ve(I)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 p1, p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lcom/byazt/om/tt;->ve(I)V

    return-void

    .line 10
    :cond_4
    invoke-static {v0}, Lcom/byazt/qv/sp;->tt(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {v3}, Lcom/byazt/iz/c;->tt()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v3}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5f00\u542fserverBidding exchange \u8bf7\u6c42...."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/byazt/om/tt;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/byazt/om/tt;->c(Ljava/util/List;)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/byazt/om/tt;->c(I)V

    return-void

    .line 14
    :cond_5
    iget-object v3, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {v3, v0}, Lcom/byazt/iz/c;->tt(I)V

    .line 15
    invoke-direct {p0, v0, p1}, Lcom/byazt/om/tt;->c(II)V

    .line 16
    invoke-static {v0}, Lcom/byazt/qv/sp;->ve(I)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0}, Lcom/byazt/qv/sp;->tt(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 17
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v4}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u5c42 ClientBidding,ServerBidding \u5e7f\u544a\uff0clevelSort\uff1a"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u540c\u65f6\u8bf7\u6c42\u4e0b\u4e00\u5c42\u5e7f\u544a..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    .line 18
    invoke-direct {p0, p1}, Lcom/byazt/om/tt;->ve(I)V

    :cond_7
    return-void

    .line 19
    :cond_8
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v0}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5df2\u7ecf\u89e6\u53d1\u8fc7\u6210\u529f\u3001\u5931\u8d25\u56de\u8c03..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private ve(I)V
    .locals 3

    if-gez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/byazt/om/tt;->x:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/byazt/qv/sp;->c(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->lt()I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v2}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " level is first level normal ad and ParallelNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTMediationSDK"

    invoke-static {v2, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    add-int v2, p1, v1

    .line 4
    invoke-direct {p0, v2}, Lcom/byazt/om/tt;->uj(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 5
    :cond_2
    invoke-direct {p0, p1}, Lcom/byazt/om/tt;->uj(I)V

    return-void
.end method

.method private ve(Lcom/byazt/nbs/da;I)V
    .locals 1

    if-eqz p1, :cond_6

    .line 6
    iget-object v0, p0, Lcom/byazt/om/tt;->i:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->cu()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->or()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/byazt/nbs/da;->qp()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->zb()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x2

    .line 10
    :goto_1
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->pf()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Lcom/byazt/om/tt;->i:Landroid/os/Handler;

    invoke-static {p2}, Lcom/byazt/vx/rh;->c(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/byazt/om/tt;->i:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private ve(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/yl/ve;

    if-eqz v0, :cond_1

    .line 16
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/om/tt;->a:Ljava/lang/String;

    new-instance v3, Lcom/byazt/ix/sp;

    iget-object v4, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    .line 17
    invoke-virtual {v4}, Lcom/byazt/iz/tt;->eo()J

    move-result-wide v4

    iget-object v6, p0, Lcom/byazt/om/tt;->sp:Lcom/byazt/ll/tt;

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/byazt/ix/sp;-><init>(Lcom/byazt/yl/ve;JLcom/byazt/ll/tt;)V

    .line 18
    invoke-virtual {v1, v2, v3}, Lcom/byazt/ix/uj;->c(Ljava/lang/String;Lcom/byazt/ix/sp;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v1}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onAdVideoCache....."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/byazt/om/tt;->uj()V

    return-void
.end method

.method public c(I)V
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v0}, Lcom/byazt/py/n;->c(Lcom/byazt/nbs/tt;)Lcom/byazt/py/c;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/om/tt;->da:Lcom/byazt/py/c;

    .line 84
    iget-object v1, p0, Lcom/byazt/om/tt;->i:Landroid/os/Handler;

    iget-object v2, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    new-instance v3, Lcom/byazt/py/tt;

    new-instance v4, Lcom/byazt/om/tt$6;

    invoke-direct {v4, p0, p1}, Lcom/byazt/om/tt$6;-><init>(Lcom/byazt/om/tt;I)V

    invoke-direct {v3, v2, v4}, Lcom/byazt/py/tt;-><init>(Lcom/byazt/nbs/tt;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/py/c;->c(Landroid/os/Handler;Lcom/byazt/nbs/tt;Lcom/byazt/py/tt;)V

    return-void
.end method

.method public c(Landroid/content/Context;Lcom/byazt/ll/tt;Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/byazt/ll/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;Z)V"
        }
    .end annotation

    .line 151
    invoke-static {}, Lcom/byazt/pl/n;->c()Lcom/byazt/pl/uj;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v1, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/byazt/iz/c;->c(I)V

    .line 153
    iget-object v1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v1}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/byazt/nbs/i;->uj:Z

    .line 154
    new-instance v1, Lcom/byazt/pl/ve;

    invoke-direct {v1}, Lcom/byazt/pl/ve;-><init>()V

    .line 155
    iput-object p2, v1, Lcom/byazt/pl/ve;->c:Lcom/byazt/ll/tt;

    .line 156
    iput-object p3, v1, Lcom/byazt/pl/ve;->tt:Ljava/util/List;

    .line 157
    iget-object v3, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    iput-object v3, v1, Lcom/byazt/pl/ve;->uj:Lcom/byazt/nbs/tt;

    .line 158
    iput-boolean p4, v1, Lcom/byazt/pl/ve;->a:Z

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/byazt/pl/ve;->sp:J

    .line 160
    iget-object p4, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    iput-object p4, v1, Lcom/byazt/pl/ve;->x:Lcom/byazt/iz/tt;

    if-nez p2, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/ll/tt;->ve()I

    move-result v2

    :goto_0
    iput v2, v1, Lcom/byazt/pl/ve;->n:I

    .line 162
    iget-object p4, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p4}, Lcom/byazt/iz/tt;->gr()Ljava/util/Map;

    move-result-object p4

    new-instance v2, Lcom/byazt/om/tt$7;

    invoke-direct {v2, p0, p2, p3, v1}, Lcom/byazt/om/tt$7;-><init>(Lcom/byazt/om/tt;Lcom/byazt/ll/tt;Ljava/util/List;Lcom/byazt/pl/ve;)V

    invoke-interface {v0, p4, p1, v1, v2}, Lcom/byazt/pl/uj;->c(Ljava/util/Map;Landroid/content/Context;Lcom/byazt/pl/ve;Lcom/byazt/pl/uj$c;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/nbs/da;I)V
    .locals 8

    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/byazt/om/tt;->sp:Lcom/byazt/ll/tt;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/byazt/nbs/da;->m()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/byazt/om/tt;->sp:Lcom/byazt/ll/tt;

    .line 64
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->my()I

    move-result v0

    invoke-virtual {p1}, Lcom/byazt/nbs/da;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/byazt/yl/c;->c(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "\u5e7f\u544a\u8bf7\u6c42\u4e2d"

    move-object v1, p0

    .line 65
    invoke-virtual/range {v1 .. v7}, Lcom/byazt/om/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v1}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb \u67d0\u4e00\u5c42\u7ea7\u7684waterFallConfig\u8bf7\u6c42 WaterFallConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/byazt/nbs/da;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p1, p0}, Lcom/byazt/dv/tt;->c(Lcom/byazt/nbs/da;Lcom/byazt/pq/c;)Lcom/byazt/dv/tt;

    move-result-object p1

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p1, v0}, Lcom/byazt/dv/tt;->ve(I)V

    .line 69
    invoke-virtual {p1, v0}, Lcom/byazt/dv/tt;->tt(I)V

    .line 70
    invoke-virtual {p1, p2}, Lcom/byazt/dv/tt;->c(I)V

    .line 71
    iget-object p2, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p2}, Lcom/byazt/iz/tt;->yv()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/byazt/dv/tt;->c(Z)V

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/dv/tt;->c(J)V

    .line 73
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v0, Lcom/byazt/xt/tt;

    invoke-direct {v0}, Lcom/byazt/xt/tt;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Lcom/byazt/xt/sp;

    invoke-direct {v0}, Lcom/byazt/xt/sp;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v0, Lcom/byazt/xt/uj;

    invoke-direct {v0}, Lcom/byazt/xt/uj;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v0, Lcom/byazt/xt/a;

    invoke-direct {v0}, Lcom/byazt/xt/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcom/byazt/xt/ve;

    invoke-direct {v0}, Lcom/byazt/xt/ve;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Lcom/byazt/xt/n;

    invoke-direct {v0, p2}, Lcom/byazt/xt/n;-><init>(Ljava/util/List;)V

    .line 80
    iget-object p2, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v0, p2, p1}, Lcom/byazt/xt/n;->c(Lcom/byazt/iz/tt;Lcom/byazt/dv/tt;)V

    return-void
.end method

.method public c(Lcom/byazt/om/c$c;)V
    .locals 10

    .line 5
    invoke-interface {p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    .line 6
    iget-object v1, p0, Lcom/byazt/om/tt;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/byazt/iz/tt;->c(Landroid/os/Handler;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->nu()Lcom/byazt/iz/c;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    .line 8
    iget-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    .line 9
    iget-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/om/tt;->sp:Lcom/byazt/ll/tt;

    .line 10
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/om/tt;->a:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->md()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/om/tt;->c:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/byazt/om/tt;->x:Ljava/util/List;

    .line 13
    iget-object v1, p0, Lcom/byazt/om/tt;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    iget-object v0, p0, Lcom/byazt/om/tt;->x:Ljava/util/List;

    invoke-static {v0}, Lcom/byazt/oi/tt;->c(Ljava/util/List;)V

    .line 15
    iget-object v0, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    iget-object v1, p0, Lcom/byazt/om/tt;->x:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/byazt/iz/c;->c(Ljava/util/List;)V

    .line 16
    iget-object v0, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    iget-object v1, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->zm()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/iz/c;->sp(I)V

    .line 17
    iget-object v0, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->l()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/qv/sp;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->l()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/qv/sp;->tt(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/byazt/iz/c;->x(I)V

    .line 20
    iget-object v0, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/byazt/iz/c;->i(I)V

    .line 21
    iget-object v0, p0, Lcom/byazt/om/tt;->i:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 22
    iget-object v1, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->aw()J

    move-result-wide v1

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->zm()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 24
    iget-object v4, p0, Lcom/byazt/om/tt;->sp:Lcom/byazt/ll/tt;

    iget-object v0, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->lo()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->yv()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    iget-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    move-result-object v0

    iget-object v7, v0, Lcom/byazt/nbs/i;->c:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    invoke-interface {p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/byazt/om/c$c;->c(Lcom/byazt/iz/tt;)V

    goto :goto_2

    .line 27
    :cond_4
    invoke-static {}, Lcom/byazt/eu/tt;->tt()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v0}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5f00\u59cb\u52a0\u8f7d\u5e7f\u544a num:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->zm()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTMediationSDK"

    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_5
    invoke-direct {p0, v3}, Lcom/byazt/om/tt;->ve(I)V

    .line 30
    :goto_2
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/qe/tt;->c(Lcom/byazt/qe/c;)Lcom/byazt/qe/tt;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/byazt/qe/tt;->c(I)V

    return-void
.end method

.method public c(Lcom/byazt/pp/c;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/iz/tt;->c(Lcom/byazt/pp/c;)V

    return-void
.end method

.method public c(Lcom/byazt/pp/c;Lcom/byazt/nbs/da;)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, v0, p1}, Lcom/byazt/om/tt;->c(Ljava/util/List;Lcom/byazt/pp/c;)V

    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p2}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->nu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->m()Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-virtual {p2}, Lcom/byazt/nbs/da;->u()I

    move-result v0

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/byazt/yl/c;->c(II)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/byazt/pp/c;->ve:I

    iget-object v7, p1, Lcom/byazt/pp/c;->uj:Ljava/lang/String;

    move-object v1, p0

    .line 136
    invoke-virtual/range {v1 .. v7}, Lcom/byazt/om/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    :cond_1
    invoke-static {p1, p2}, Lcom/byazt/oi/ve;->c(Lcom/byazt/pp/c;Lcom/byazt/nbs/da;)V

    .line 138
    invoke-virtual {p2}, Lcom/byazt/nbs/da;->pf()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    iget-object v0, p0, Lcom/byazt/om/tt;->ve:Ljava/util/List;

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/byazt/ye/c;->c(Lcom/byazt/iz/c;Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 139
    :cond_2
    iget-object p1, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {p1, p2}, Lcom/byazt/qv/sp;->c(Lcom/byazt/nbs/tt;Lcom/byazt/nbs/da;)I

    move-result p1

    .line 140
    iget-object v0, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/byazt/iz/c;->c(ILjava/lang/String;)V

    const/4 v0, 0x2

    .line 141
    invoke-virtual {p0, p2, v0}, Lcom/byazt/om/tt;->tt(Lcom/byazt/nbs/da;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {v0, p1}, Lcom/byazt/iz/c;->n(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {v0, p1}, Lcom/byazt/iz/c;->a(I)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->nb()Z

    move-result v0

    if-nez v0, :cond_3

    .line 143
    invoke-virtual {p0, p1}, Lcom/byazt/om/tt;->tt(I)I

    move-result v0

    .line 144
    invoke-direct {p0, p2, p1}, Lcom/byazt/om/tt;->ve(Lcom/byazt/nbs/da;I)V

    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v1}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onAdFailed levelSort "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u5e7f\u544a\u5168\u90e8\u54cd\u5e94\u7ed3\u675f&\u4e0d\u6ee1\u8db3\u8fd4\u56de\u6761\u4ef6\uff0c\u76f4\u63a5\u8bf7\u6c42\u4e0b\u4e00\u5c42\u5e7f\u544a nextIdx\uff1a"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TTMediationSDK"

    invoke-static {p2, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, v0}, Lcom/byazt/om/tt;->ve(I)V

    :cond_3
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->p()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/pp/tt;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/byazt/pp/tt;

    invoke-direct {v0}, Lcom/byazt/pp/tt;-><init>()V

    .line 210
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/pp/tt;->tt(Ljava/lang/String;)Lcom/byazt/pp/tt;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/byazt/pp/tt;->ve(Ljava/lang/String;)Lcom/byazt/pp/tt;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/byazt/pp/tt;->uj(Ljava/lang/String;)Lcom/byazt/pp/tt;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/byazt/pp/tt;->c(I)Lcom/byazt/pp/tt;

    move-result-object p2

    invoke-virtual {p2, p6}, Lcom/byazt/pp/tt;->n(Ljava/lang/String;)Lcom/byazt/pp/tt;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/byazt/pp/tt;->c(Ljava/lang/String;)Lcom/byazt/pp/tt;

    .line 211
    iget-object p2, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p2}, Lcom/byazt/iz/tt;->p()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v1, Lcom/byazt/om/tt$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/byazt/om/tt$5;-><init>(Lcom/byazt/om/tt;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;Lcom/byazt/nbs/da;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Lcom/byazt/nbs/da;",
            ")V"
        }
    .end annotation

    .line 106
    invoke-static {p1}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {p0, p1, v0}, Lcom/byazt/om/tt;->c(Ljava/util/List;Lcom/byazt/nbs/tt;)V

    .line 108
    invoke-virtual {p2}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->m()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {p2}, Lcom/byazt/nbs/da;->u()I

    move-result v0

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/byazt/yl/c;->c(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    move-object v1, p0

    .line 110
    invoke-virtual/range {v1 .. v7}, Lcom/byazt/om/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/byazt/om/tt;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/byazt/vx/p;->tt(Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yl/ve;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-static {v0, p2, v1}, Lcom/byazt/oi/ve;->c(Ljava/lang/String;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/byazt/om/tt;->tt(Ljava/util/List;)V

    .line 113
    iget-object v0, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v0, p2}, Lcom/byazt/qv/sp;->c(Lcom/byazt/nbs/tt;Lcom/byazt/nbs/da;)I

    move-result v0

    .line 114
    invoke-virtual {p2}, Lcom/byazt/nbs/da;->pf()Z

    move-result v1

    const-string v4, "TTMediationSDK"

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    iget-object v5, p0, Lcom/byazt/om/tt;->ve:Ljava/util/List;

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/byazt/ye/c;->c(Lcom/byazt/iz/c;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v1}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u8fd4\u56de\u7684\u666e\u901a\u5e7f\u544a\u88abserver Bidding\u8fc7\u6ee4\u4e86......slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object p2, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p2}, Lcom/byazt/iz/tt;->u()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-static {v1, p1, v2}, Lcom/byazt/qv/c;->c(Lcom/byazt/iz/tt;Ljava/util/List;Z)V

    .line 118
    iget-object v1, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/byazt/iz/c;->c(ILjava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v1}, Lcom/byazt/iz/tt;->yv()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    invoke-direct {p0, p1}, Lcom/byazt/om/tt;->ve(Ljava/util/List;)V

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {v1}, Lcom/byazt/iz/c;->n()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    new-instance v1, Lcom/byazt/pp/c;

    const/16 v2, 0x271c

    const-string v5, "load ad timeout !!!"

    invoke-direct {v1, v2, v5}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3, v1}, Lcom/byazt/om/tt;->c(Ljava/util/List;Lcom/byazt/pp/c;)V

    goto :goto_1

    .line 123
    :cond_4
    invoke-virtual {p0, p1, v3}, Lcom/byazt/om/tt;->c(Ljava/util/List;Lcom/byazt/pp/c;)V

    .line 124
    :goto_1
    iget-object v1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v1, p1}, Lcom/byazt/iz/tt;->tt(Ljava/util/List;)V

    .line 125
    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->sp()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->yv()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->zm()Z

    move-result p1

    if-nez p1, :cond_5

    .line 126
    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1, p2}, Lcom/byazt/iz/tt;->uj(Lcom/byazt/nbs/da;)V

    :cond_5
    const/4 p1, 0x1

    .line 127
    invoke-virtual {p0, p2, p1}, Lcom/byazt/om/tt;->tt(Lcom/byazt/nbs/da;I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 128
    iget-object p1, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {p1, v0}, Lcom/byazt/iz/c;->a(I)I

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->nb()Z

    move-result p1

    if-nez p1, :cond_6

    .line 129
    invoke-virtual {p0, v0}, Lcom/byazt/om/tt;->tt(I)I

    move-result p1

    .line 130
    invoke-direct {p0, p2, v0}, Lcom/byazt/om/tt;->ve(Lcom/byazt/nbs/da;I)V

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v1}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onAdLoaded levelSort: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u5e7f\u544a\u5168\u90e8\u54cd\u5e94\u7ed3\u675f&\u4e0d\u6ee1\u8db3\u8fd4\u56de\u6761\u4ef6\uff0c\u76f4\u63a5\u8bf7\u6c42\u4e0b\u4e00\u5c42\u5e7f\u544a nextIdx\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, p1}, Lcom/byazt/om/tt;->ve(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public c(Ljava/util/List;Lcom/byazt/nbs/tt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Lcom/byazt/nbs/tt;",
            ")V"
        }
    .end annotation

    .line 206
    invoke-static {p1, p2}, Lcom/byazt/psp/uj;->c(Ljava/util/List;Lcom/byazt/nbs/tt;)V

    .line 207
    invoke-static {p1, p2}, Lcom/byazt/bg/c;->c(Ljava/util/List;Lcom/byazt/nbs/tt;)V

    return-void
.end method

.method public c(Ljava/util/List;Lcom/byazt/pp/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Lcom/byazt/pp/c;",
            ")V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/iz/tt;->c(Ljava/util/List;Lcom/byazt/pp/c;)V

    return-void
.end method

.method public n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->n()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/byazt/om/tt;->sl:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/fid/c;->c(Lcom/byazt/nbs/tt;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_1
    return v1
.end method

.method public tt(I)I
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/byazt/om/tt;->x:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 41
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public tt(Lcom/byazt/om/c$c;)V
    .locals 7

    .line 2
    invoke-static {}, Lcom/byazt/pl/n;->c()Lcom/byazt/pl/uj;

    move-result-object p1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/byazt/pl/a;

    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->bx()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/byazt/om/tt;->sp:Lcom/byazt/ll/tt;

    iget-object v5, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    new-instance v6, Lcom/byazt/om/tt$3;

    invoke-direct {v6, p0, v2, v3}, Lcom/byazt/om/tt$3;-><init>(Lcom/byazt/om/tt;J)V

    invoke-virtual/range {v0 .. v6}, Lcom/byazt/pl/a;->c(Ljava/lang/String;JLcom/byazt/ll/tt;Lcom/byazt/nbs/tt;Lcom/byazt/pl/uj$c;)V

    return-void
.end method

.method public tt()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/byazt/om/tt;->tt(Lcom/byazt/nbs/da;I)Z

    move-result v0

    return v0
.end method

.method public tt(Lcom/byazt/nbs/da;I)Z
    .locals 6

    .line 6
    iget-object p2, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p2}, Lcom/byazt/iz/tt;->uj()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_11

    invoke-virtual {p0}, Lcom/byazt/om/tt;->n()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_5

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {p2}, Lcom/byazt/iz/c;->n()Z

    move-result p2

    const-string v1, "TTMediationSDK"

    if-eqz p2, :cond_4

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {p2}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u89e6\u53d1\u603b\u8d85\u65f6\u6216\u5168\u90e8\u4ee3\u7801\u4f4d\u54cd\u5e94\u7ed3\u675f.....totalTimeout\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {p2}, Lcom/byazt/iz/c;->n()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "  allWtfFinish:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {p2}, Lcom/byazt/iz/c;->x()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->sl()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->t()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {p1}, Lcom/byazt/fid/c;->tt(Lcom/byazt/nbs/tt;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {p2}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u603b\u52a0\u8f7d\u65f6\u95f4\u8d85\u65f6.......isCallback:true"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    iget-object p2, p0, Lcom/byazt/om/tt;->x:Ljava/util/List;

    iget-object v1, p0, Lcom/byazt/om/tt;->c:Ljava/util/Map;

    invoke-static {p1, p2, v1}, Lcom/byazt/fid/c;->c(Lcom/byazt/iz/tt;Ljava/util/List;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/byazt/om/tt;->ve()V

    return v0

    .line 14
    :cond_2
    iput-boolean v0, p0, Lcom/byazt/om/tt;->sl:Z

    .line 15
    new-instance p1, Lcom/byazt/pp/c;

    const/16 p2, 0x2713

    invoke-static {p2}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/byazt/om/tt;->c(Lcom/byazt/pp/c;)V

    goto :goto_1

    .line 16
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/om/tt;->ve()V

    :goto_1
    return v0

    .line 17
    :cond_4
    iget-object p2, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {p2}, Lcom/byazt/iz/c;->x()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {p2}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u5168\u90e8\u5e7f\u544a\u5b8c\u6210\u54cd\u5e94..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->sl()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->t()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 20
    :cond_5
    new-instance p1, Lcom/byazt/pp/c;

    const/16 p2, 0x4e25

    invoke-static {p2}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/byazt/om/tt;->c(Lcom/byazt/pp/c;)V

    goto :goto_3

    .line 21
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/byazt/om/tt;->ve()V

    :goto_3
    return v0

    .line 22
    :cond_7
    iget-object p2, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p2}, Lcom/byazt/iz/tt;->rh()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {p2}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "p\u5c42\u5e7f\u544a\u5df2\u7ecf\u6ee1\u8db3\u8fd4\u56de\u6761\u4ef6..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/byazt/om/tt;->ve()V

    return v0

    .line 25
    :cond_8
    iget-object p2, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {p2}, Lcom/byazt/nbs/tt;->zb()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {p2}, Lcom/byazt/iz/c;->ve()Z

    move-result p2

    if-nez p2, :cond_a

    :cond_9
    iget-object p2, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-virtual {p2}, Lcom/byazt/nbs/tt;->zb()Z

    move-result p2

    if-nez p2, :cond_10

    :cond_a
    if-nez p1, :cond_c

    .line 26
    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->my()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->rl()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {p2}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "p\u5c42&\u666e\u901a\u5c42\u5e7f\u544a \u5df2\u7ecf\u6ee1\u8db3\u8fd4\u56de\u6761\u4ef6 V1 ........."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/byazt/om/tt;->ve()V

    return v0

    .line 29
    :cond_b
    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->gt()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {p1}, Lcom/byazt/iz/c;->i()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {p1}, Lcom/byazt/iz/c;->da()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->qy()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {p2}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "p\u5c42&\u666e\u901a&Bidding\u5c42\u5e7f\u544a \u5df2\u7ecf\u6ee1\u8db3\u8fd4\u56de\u6761\u4ef6 V2 ........."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/byazt/om/tt;->ve()V

    return v0

    .line 32
    :cond_c
    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->my()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->rl()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 33
    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->t()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/yl/ve;

    .line 34
    iget-object v2, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v2}, Lcom/byazt/gp/uj;->c(Lcom/byazt/nbs/tt;)Lcom/byazt/gp/c;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    iget-object v4, p0, Lcom/byazt/om/tt;->c:Ljava/util/Map;

    if-nez v4, :cond_e

    const/4 v4, 0x0

    goto :goto_4

    :cond_e
    iget-object v5, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {v5, p2}, Lcom/byazt/qv/sp;->c(Lcom/byazt/nbs/tt;Lcom/byazt/yl/ve;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    :goto_4
    invoke-interface {v2, v3, p2, v4}, Lcom/byazt/gp/c;->c(Lcom/byazt/iz/tt;Lcom/byazt/yl/ve;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {p2}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "p\u5c42&\u666e\u901a\u5c42\u5e7f\u544a \u5df2\u7ecf\u6ee1\u8db3\u8fd4\u56de\u6761\u4ef6 V3 ........."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/byazt/om/tt;->ve()V

    return v0

    .line 37
    :cond_f
    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->gt()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {p1}, Lcom/byazt/iz/c;->i()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/byazt/om/tt;->tt:Lcom/byazt/iz/c;

    invoke-virtual {p1}, Lcom/byazt/iz/c;->da()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->qy()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/byazt/om/tt;->n:Lcom/byazt/nbs/tt;

    invoke-static {p2}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "p\u5c42&\u666e\u901a&Bidding\u5c42\u5e7f\u544a \u5df2\u7ecf\u6ee1\u8db3\u8fd4\u56de\u6761\u4ef6 V4 ........."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/byazt/om/tt;->ve()V

    return v0

    :cond_10
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_5
    return v0
.end method

.method public uj()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->i()V

    return-void
.end method

.method public ve()V
    .locals 1

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/byazt/om/tt;->sl:Z

    .line 14
    iget-object v0, p0, Lcom/byazt/om/tt;->uj:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->x()V

    return-void
.end method
