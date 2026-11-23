.class public Lcom/byazt/feb/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x15f,
        0xd
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/feb/tt;


# instance fields
.field public tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/pik/ve;",
            ">;"
        }
    .end annotation
.end field

.field public ve:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
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
    iput-object v0, p0, Lcom/byazt/feb/tt;->tt:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {}, Lcom/byazt/jze/tt;->c()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/byazt/feb/tt$1;

    .line 18
    .line 19
    invoke-static {}, Lcom/byazt/jze/tt;->c()Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, p0, v1}, Lcom/byazt/feb/tt$1;-><init>(Lcom/byazt/feb/tt;Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/byazt/feb/tt;->ve:Landroid/os/Handler;

    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public static c()Lcom/byazt/feb/tt;
    .locals 2

    .line 2
    sget-object v0, Lcom/byazt/feb/tt;->c:Lcom/byazt/feb/tt;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/byazt/feb/tt;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/byazt/feb/tt;->c:Lcom/byazt/feb/tt;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/byazt/feb/tt;

    invoke-direct {v1}, Lcom/byazt/feb/tt;-><init>()V

    sput-object v1, Lcom/byazt/feb/tt;->c:Lcom/byazt/feb/tt;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/feb/tt;->c:Lcom/byazt/feb/tt;

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/feb/tt;Lcom/byazt/pik/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/feb/tt;->c(Lcom/byazt/pik/ve;)V

    return-void
.end method

.method private c(Lcom/byazt/pik/ve;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 13
    iget-object v0, p0, Lcom/byazt/feb/tt;->ve:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/pik/ve;->uj()Lcom/byazt/pik/n;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Lcom/byazt/pik/n;->ve()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/byazt/pik/n;->tt()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/pik/ve;->c()Ljava/lang/String;

    move-result-object p1

    .line 18
    iget-object v1, p0, Lcom/byazt/feb/tt;->ve:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 19
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 20
    iput v2, v1, Landroid/os/Message;->what:I

    .line 21
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    iget-object p1, p0, Lcom/byazt/feb/tt;->ve:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/byazt/pik/n;->tt()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/pik/ve;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/byazt/feb/tt;->ve()V

    .line 9
    iget-object v0, p0, Lcom/byazt/feb/tt;->tt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/byazt/feb/tt;->tt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/pik/ve;

    .line 12
    invoke-direct {p0, v0}, Lcom/byazt/feb/tt;->c(Lcom/byazt/pik/ve;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ve()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/feb/tt;->ve:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lcom/byazt/pik/ve;
    .locals 4

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/byazt/feb/tt;->tt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/pik/ve;

    .line 27
    invoke-virtual {v2}, Lcom/byazt/pik/ve;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public c(Lorg/json/JSONArray;)V
    .locals 0

    .line 23
    invoke-static {p1}, Lcom/byazt/jze/c;->c(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lcom/byazt/feb/tt;->c(Ljava/util/List;)V

    return-void
.end method

.method public tt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/pik/ve;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/feb/tt;->tt:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
