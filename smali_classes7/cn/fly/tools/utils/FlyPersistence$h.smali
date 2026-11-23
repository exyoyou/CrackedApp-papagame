.class final Lcn/fly/tools/utils/FlyPersistence$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/tools/utils/FlyPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field private final a:I

.field private volatile b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcn/fly/tools/utils/FlyPersistence$g;",
            "Lcn/fly/tools/utils/FlyPersistence$c;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Ljava/util/concurrent/atomic/AtomicLong;

.field private d:J

.field private e:J

.field private final f:Ljava/util/concurrent/atomic/AtomicLong;

.field private g:D

.field private h:D


# direct methods
.method private constructor <init>(IJJDD)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    iput p1, p0, Lcn/fly/tools/utils/FlyPersistence$h;->a:I

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p4, p5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    iput-wide p2, p0, Lcn/fly/tools/utils/FlyPersistence$h;->e:J

    .line 7
    iput-wide p4, p0, Lcn/fly/tools/utils/FlyPersistence$h;->d:J

    .line 8
    iput-wide p6, p0, Lcn/fly/tools/utils/FlyPersistence$h;->g:D

    .line 9
    iput-wide p8, p0, Lcn/fly/tools/utils/FlyPersistence$h;->h:D

    .line 10
    new-instance p2, Lcn/fly/tools/utils/FlyPersistence$h$1;

    const/high16 p3, 0x3f400000    # 0.75f

    const/4 p4, 0x1

    invoke-direct {p2, p0, p1, p3, p4}, Lcn/fly/tools/utils/FlyPersistence$h$1;-><init>(Lcn/fly/tools/utils/FlyPersistence$h;IFZ)V

    iput-object p2, p0, Lcn/fly/tools/utils/FlyPersistence$h;->b:Ljava/util/LinkedHashMap;

    return-void
.end method

.method synthetic constructor <init>(IJJDDLcn/fly/tools/utils/FlyPersistence$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcn/fly/tools/utils/FlyPersistence$h;-><init>(IJJDD)V

    return-void
.end method

.method private a(Lcn/fly/tools/utils/FlyPersistence$g;)Lcn/fly/tools/utils/FlyPersistence$c;
    .locals 1

    .line 6
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/fly/tools/utils/FlyPersistence$c;

    return-object p1
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$h;Lcn/fly/tools/utils/FlyPersistence$g;)Lcn/fly/tools/utils/FlyPersistence$c;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$h;->a(Lcn/fly/tools/utils/FlyPersistence$g;)Lcn/fly/tools/utils/FlyPersistence$c;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 11
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 12
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method private a(J)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 20
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    .line 21
    invoke-direct {p0}, Lcn/fly/tools/utils/FlyPersistence$h;->c()V

    :cond_0
    return-void
.end method

.method private a(JJDD)V
    .locals 1

    .line 13
    invoke-direct/range {p0 .. p8}, Lcn/fly/tools/utils/FlyPersistence$h;->b(JJDD)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    iput-wide p1, p0, Lcn/fly/tools/utils/FlyPersistence$h;->d:J

    .line 15
    iput-wide p3, p0, Lcn/fly/tools/utils/FlyPersistence$h;->e:J

    .line 16
    iput-wide p5, p0, Lcn/fly/tools/utils/FlyPersistence$h;->g:D

    .line 17
    iput-wide p7, p0, Lcn/fly/tools/utils/FlyPersistence$h;->h:D

    .line 18
    invoke-direct {p0}, Lcn/fly/tools/utils/FlyPersistence$h;->b()V

    return-void
.end method

.method private a(Lcn/fly/tools/utils/FlyPersistence$g;Lcn/fly/tools/utils/FlyPersistence$c;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p2}, Lcn/fly/tools/utils/FlyPersistence$c;->c(Lcn/fly/tools/utils/FlyPersistence$c;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 8
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/fly/tools/utils/FlyPersistence$c;

    if-eqz p1, :cond_0

    .line 9
    iget-object p2, p0, Lcn/fly/tools/utils/FlyPersistence$h;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$c;->c(Lcn/fly/tools/utils/FlyPersistence$c;)J

    move-result-wide v0

    neg-long v0, v0

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 10
    :cond_0
    invoke-direct {p0}, Lcn/fly/tools/utils/FlyPersistence$h;->c()V

    return-void
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/fly/tools/utils/FlyPersistence$h;->a()V

    return-void
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$h;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcn/fly/tools/utils/FlyPersistence$h;->a(J)V

    return-void
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$h;JJDD)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p8}, Lcn/fly/tools/utils/FlyPersistence$h;->a(JJDD)V

    return-void
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$h;Lcn/fly/tools/utils/FlyPersistence$g;Lcn/fly/tools/utils/FlyPersistence$c;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcn/fly/tools/utils/FlyPersistence$h;->a(Lcn/fly/tools/utils/FlyPersistence$g;Lcn/fly/tools/utils/FlyPersistence$c;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 14
    :try_start_0
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/fly/tools/utils/DH;->requester(Landroid/content/Context;)Lcn/fly/tools/utils/DH$RequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lcn/fly/tools/utils/DH$RequestBuilder;->getRuntimeMemory(Z)Lcn/fly/tools/utils/DH$RequestBuilder;

    move-result-object v0

    new-instance v1, Lcn/fly/tools/utils/FlyPersistence$h$2;

    invoke-direct {v1, p0}, Lcn/fly/tools/utils/FlyPersistence$h$2;-><init>(Lcn/fly/tools/utils/FlyPersistence$h;)V

    .line 16
    invoke-virtual {v0, v1}, Lcn/fly/tools/utils/DH$RequestBuilder;->request(Lcn/fly/tools/utils/DH$DHResponder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LRU"

    .line 17
    invoke-static {v0, v1}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b(Lcn/fly/tools/utils/FlyPersistence$g;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/fly/tools/utils/FlyPersistence$c;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$c;->c(Lcn/fly/tools/utils/FlyPersistence$c;)J

    move-result-wide v1

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/fly/tools/utils/FlyPersistence$h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/fly/tools/utils/FlyPersistence$h;->b()V

    return-void
.end method

.method static synthetic b(Lcn/fly/tools/utils/FlyPersistence$h;Lcn/fly/tools/utils/FlyPersistence$g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$h;->b(Lcn/fly/tools/utils/FlyPersistence$g;)V

    return-void
.end method

.method private b(JJDD)Z
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 5
    iget-wide p1, p0, Lcn/fly/tools/utils/FlyPersistence$h;->d:J

    :cond_0
    cmp-long v2, p3, v0

    if-gtz v2, :cond_1

    .line 6
    iget-wide p3, p0, Lcn/fly/tools/utils/FlyPersistence$h;->e:J

    :cond_1
    cmp-long v0, p3, p1

    if-gez v0, :cond_2

    .line 7
    iget-wide p1, p0, Lcn/fly/tools/utils/FlyPersistence$h;->d:J

    .line 8
    iget-wide p3, p0, Lcn/fly/tools/utils/FlyPersistence$h;->e:J

    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpg-double v4, p5, v2

    if-lez v4, :cond_3

    cmpl-double v4, p5, v0

    if-ltz v4, :cond_4

    .line 9
    :cond_3
    iget-wide p5, p0, Lcn/fly/tools/utils/FlyPersistence$h;->g:D

    :cond_4
    cmpg-double v4, p7, v2

    if-lez v4, :cond_5

    cmpl-double v2, p7, v0

    if-ltz v2, :cond_6

    .line 10
    :cond_5
    iget-wide p7, p0, Lcn/fly/tools/utils/FlyPersistence$h;->h:D

    :cond_6
    cmpg-double v0, p5, p7

    if-gez v0, :cond_7

    .line 11
    iget-wide p5, p0, Lcn/fly/tools/utils/FlyPersistence$h;->g:D

    .line 12
    iget-wide p7, p0, Lcn/fly/tools/utils/FlyPersistence$h;->h:D

    .line 13
    :cond_7
    iget-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->d:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_9

    iget-wide p1, p0, Lcn/fly/tools/utils/FlyPersistence$h;->e:J

    cmp-long v0, p1, p3

    if-nez v0, :cond_9

    iget-wide p1, p0, Lcn/fly/tools/utils/FlyPersistence$h;->g:D

    cmpl-double p3, p1, p5

    if-nez p3, :cond_9

    iget-wide p1, p0, Lcn/fly/tools/utils/FlyPersistence$h;->h:D

    cmpl-double p3, p1, p7

    if-eqz p3, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x0

    goto :goto_1

    :cond_9
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic c(Lcn/fly/tools/utils/FlyPersistence$h;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->a:I

    return p0
.end method

.method private c()V
    .locals 6

    const-string v0, "LRU"

    .line 2
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$h;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence$h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$h;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$h;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7
    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence$h;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/fly/tools/utils/FlyPersistence$c;

    invoke-static {v2}, Lcn/fly/tools/utils/FlyPersistence$c;->c(Lcn/fly/tools/utils/FlyPersistence$c;)J

    move-result-wide v4

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 8
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence$h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence$h;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 10
    invoke-static {v1, v0}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic d(Lcn/fly/tools/utils/FlyPersistence$h;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcn/fly/tools/utils/FlyPersistence$h;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcn/fly/tools/utils/FlyPersistence$h;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->g:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic g(Lcn/fly/tools/utils/FlyPersistence$h;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic h(Lcn/fly/tools/utils/FlyPersistence$h;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->h:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic i(Lcn/fly/tools/utils/FlyPersistence$h;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$h;->e:J

    .line 2
    .line 3
    return-wide v0
.end method
