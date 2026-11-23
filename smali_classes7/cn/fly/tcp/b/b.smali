.class public Lcn/fly/tcp/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcn/fly/tcp/a/b;

.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lcn/fly/tcp/d/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/fly/tcp/a/b;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/fly/tcp/a/b;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lcn/fly/tcp/d/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcn/fly/tcp/b/b;->a:Lcn/fly/tcp/a/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcn/fly/tcp/b/b;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 7
    .line 8
    return-void
.end method

.method private a(Lcn/fly/tcp/a/a;Lcn/fly/tcp/b/a;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcn/fly/tcp/b/b;->a:Lcn/fly/tcp/a/b;

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v0

    const-string v1, "rcv type: pu5h"

    invoke-virtual {v0, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcn/fly/tcp/b/b;->a:Lcn/fly/tcp/a/b;

    invoke-interface {v0, p1, p2}, Lcn/fly/tcp/a/b;->a(Lcn/fly/tcp/a/a;Lcn/fly/tcp/b/a;)V

    :cond_0
    return-void
.end method

.method private a(Lcn/fly/tcp/b/a;)Z
    .locals 1

    .line 6
    iget p1, p1, Lcn/fly/tcp/b/a;->b:I

    const/16 v0, 0x2329

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcn/fly/tcp/b/a;)V
    .locals 4

    .line 1
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "rcv type: non-pu5h"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcn/fly/tcp/b/b;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 11
    .line 12
    iget-wide v1, p1, Lcn/fly/tcp/b/a;->c:J

    .line 13
    .line 14
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcn/fly/tcp/d/a;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "TP response future not found, maybe response for canceled receipt or one-way msg. type: "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, p1, Lcn/fly/tcp/b/a;->b:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ", uniqueId: "

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-wide v2, p1, Lcn/fly/tcp/b/a;->c:J

    .line 51
    .line 52
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    invoke-virtual {v0, p1}, Lcn/fly/tcp/d/a;->a(Lcn/fly/tcp/b/a;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public a(Lcn/fly/tcp/a/a;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/fly/tcp/a/a;",
            "Ljava/util/List<",
            "Lcn/fly/tcp/b/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/fly/tcp/b/a;

    .line 3
    invoke-direct {p0, v0}, Lcn/fly/tcp/b/b;->a(Lcn/fly/tcp/b/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0, p1, v0}, Lcn/fly/tcp/b/b;->a(Lcn/fly/tcp/a/a;Lcn/fly/tcp/b/a;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, v0}, Lcn/fly/tcp/b/b;->b(Lcn/fly/tcp/b/a;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
