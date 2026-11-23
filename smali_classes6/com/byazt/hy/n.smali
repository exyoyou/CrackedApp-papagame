.class public Lcom/byazt/hy/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x25c,
        0x2e
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/hy/n;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public tt:Landroid/content/Context;

.field public final uj:Lcom/byazt/hm/c;

.field public ve:Lcom/byazt/re/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    iput-object p1, p0, Lcom/byazt/hy/n;->tt:Landroid/content/Context;

    .line 16
    .line 17
    new-instance p1, Lcom/byazt/hm/c$c;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/byazt/hm/c$c;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    const-wide/16 v1, 0x2710

    .line 25
    .line 26
    invoke-virtual {p1, v1, v2, v0}, Lcom/byazt/hm/c$c;->c(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/hm/c$c;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, v1, v2, v0}, Lcom/byazt/hm/c$c;->tt(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/hm/c$c;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v1, v2, v0}, Lcom/byazt/hm/c$c;->ve(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/hm/c$c;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Lcom/byazt/hy/c$c;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/byazt/hy/c$c;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/byazt/hm/c$c;->c(Lcom/byazt/gqp/i;)Lcom/byazt/hm/c$c;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {}, Lcom/byazt/ete/cu;->c()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Lcom/byazt/hm/c$c;->c(Ljava/util/Set;)Lcom/byazt/hm/c$c;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {}, Lcom/byazt/ete/cu;->tt()Lcom/byazt/gqp/i;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Lcom/byazt/hm/c$c;->c(Lcom/byazt/gqp/i;)Lcom/byazt/hm/c$c;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, v0}, Lcom/byazt/hm/c$c;->c(Z)Lcom/byazt/hm/c$c;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/byazt/hm/c$c;->c()Lcom/byazt/hm/c;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/byazt/hy/n;->uj:Lcom/byazt/hm/c;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/byazt/hm/c;->a()Lcom/byazt/gqp/t;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/byazt/gqp/t;->c()Lcom/byazt/gqp/uj;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    const/16 v0, 0x20

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/byazt/gqp/uj;->c(I)V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/byazt/by/ve;->n()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-virtual {p1, v0}, Lcom/byazt/gqp/uj;->tt(I)V

    .line 98
    .line 99
    .line 100
    :cond_1
    return-void
.end method

.method public static c()Lcom/byazt/hy/n;
    .locals 4

    .line 1
    sget-object v0, Lcom/byazt/hy/n;->c:Lcom/byazt/hy/n;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const-class v0, Lcom/byazt/hy/n;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/hy/n;->c:Lcom/byazt/hy/n;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lcom/byazt/yr/c;->c()Lcom/byazt/yr/c;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/byazt/by/ve;->a()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq v2, v3, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    :goto_0
    invoke-virtual {v1, v2}, Lcom/byazt/yr/c;->c(Z)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/byazt/hy/n;

    .line 34
    .line 35
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v1, v2}, Lcom/byazt/hy/n;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    sput-object v1, Lcom/byazt/hy/n;->c:Lcom/byazt/hy/n;

    .line 43
    .line 44
    :cond_1
    monitor-exit v0

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw v1

    .line 49
    :cond_2
    :goto_1
    sget-object v0, Lcom/byazt/hy/n;->c:Lcom/byazt/hy/n;

    .line 50
    .line 51
    return-object v0
.end method

.method private uj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hy/n;->ve:Lcom/byazt/re/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/re/c;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/re/c;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/hy/n;->ve:Lcom/byazt/re/c;

    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public tt()Lcom/byazt/hm/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hy/n;->uj:Lcom/byazt/hm/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lcom/byazt/re/c;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/hy/n;->uj()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/hy/n;->ve:Lcom/byazt/re/c;

    .line 5
    .line 6
    return-object v0
.end method
