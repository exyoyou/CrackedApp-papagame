.class public Lcn/fly/commons/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile a:Lcn/fly/commons/a/d;


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/fly/commons/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcn/fly/commons/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcn/fly/commons/a/d;->c:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Lcn/fly/commons/a/a;

    .line 20
    .line 21
    invoke-direct {v0}, Lcn/fly/commons/a/a;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcn/fly/commons/a/d;->a(Lcn/fly/commons/a/c;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcn/fly/commons/a/b;

    .line 28
    .line 29
    invoke-direct {v0}, Lcn/fly/commons/a/b;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0}, Lcn/fly/commons/a/d;->a(Lcn/fly/commons/a/c;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcn/fly/commons/a/f;

    .line 36
    .line 37
    invoke-direct {v0}, Lcn/fly/commons/a/f;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0}, Lcn/fly/commons/a/d;->a(Lcn/fly/commons/a/c;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcn/fly/commons/a/g;

    .line 44
    .line 45
    invoke-direct {v0}, Lcn/fly/commons/a/g;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0}, Lcn/fly/commons/a/d;->a(Lcn/fly/commons/a/c;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcn/fly/commons/a/l;

    .line 52
    .line 53
    invoke-direct {v0}, Lcn/fly/commons/a/l;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v0}, Lcn/fly/commons/a/d;->a(Lcn/fly/commons/a/c;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcn/fly/commons/a/h;

    .line 60
    .line 61
    invoke-direct {v0}, Lcn/fly/commons/a/h;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcn/fly/commons/a/c;->c()V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, v0}, Lcn/fly/commons/a/d;->a(Lcn/fly/commons/a/c;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Lcn/fly/commons/a/i;

    .line 71
    .line 72
    invoke-direct {v0}, Lcn/fly/commons/a/i;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, v0}, Lcn/fly/commons/a/d;->a(Lcn/fly/commons/a/c;)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Lcn/fly/commons/a/k;

    .line 79
    .line 80
    invoke-direct {v0}, Lcn/fly/commons/a/k;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v0}, Lcn/fly/commons/a/d;->a(Lcn/fly/commons/a/c;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcn/fly/commons/a/j;

    .line 87
    .line 88
    invoke-direct {v0}, Lcn/fly/commons/a/j;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v0}, Lcn/fly/commons/a/d;->a(Lcn/fly/commons/a/c;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lcn/fly/commons/a/n;

    .line 95
    .line 96
    invoke-direct {v0}, Lcn/fly/commons/a/n;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, v0}, Lcn/fly/commons/a/d;->a(Lcn/fly/commons/a/c;)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Lcn/fly/commons/a/o;

    .line 103
    .line 104
    invoke-direct {v0}, Lcn/fly/commons/a/o;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, v0}, Lcn/fly/commons/a/d;->a(Lcn/fly/commons/a/c;)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Lcn/fly/commons/a/p;

    .line 111
    .line 112
    invoke-direct {v0}, Lcn/fly/commons/a/p;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v0}, Lcn/fly/commons/a/d;->a(Lcn/fly/commons/a/c;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lcn/fly/commons/a/e;

    .line 119
    .line 120
    invoke-direct {v0}, Lcn/fly/commons/a/e;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, v0}, Lcn/fly/commons/a/d;->a(Lcn/fly/commons/a/c;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public static a()Lcn/fly/commons/a/d;
    .locals 2

    .line 1
    sget-object v0, Lcn/fly/commons/a/d;->a:Lcn/fly/commons/a/d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcn/fly/commons/ab;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcn/fly/commons/a/d;->a:Lcn/fly/commons/a/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcn/fly/commons/a/d;

    invoke-direct {v1}, Lcn/fly/commons/a/d;-><init>()V

    sput-object v1, Lcn/fly/commons/a/d;->a:Lcn/fly/commons/a/d;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcn/fly/commons/a/d;->a:Lcn/fly/commons/a/d;

    return-object v0
.end method

.method private a(Lcn/fly/commons/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/fly/commons/a/c;",
            ">(TT;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcn/fly/commons/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c()J
    .locals 2

    .line 1
    const-string v0, "0034ekXkj"

    .line 2
    .line 3
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x12c

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcn/fly/commons/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0, v1}, Lcn/fly/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    mul-int/lit16 v0, v0, 0x3e8

    .line 28
    .line 29
    int-to-long v0, v0

    .line 30
    return-wide v0
.end method


# virtual methods
.method public a(Lcn/fly/commons/a/c;JI)V
    .locals 1

    .line 8
    invoke-static {}, Lcn/fly/commons/a/m;->a()Lcn/fly/commons/a/m;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p1, p4}, Lcn/fly/commons/a/m;->a(JLcn/fly/commons/a/c;I)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/fly/commons/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcn/fly/commons/ac;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Lcn/fly/commons/a/c;JI)V
    .locals 6

    .line 3
    invoke-static {}, Lcn/fly/commons/a/m;->a()Lcn/fly/commons/a/m;

    move-result-object v0

    const/4 v5, 0x0

    move-wide v1, p2

    move-object v3, p1

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcn/fly/commons/a/m;->a(JLcn/fly/commons/a/c;IZ)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/fly/commons/a/d;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    invoke-static {}, Lcn/fly/commons/c;->e()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-static {}, Lcn/fly/commons/e;->j()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    :try_start_0
    iget-object v0, p0, Lcn/fly/commons/a/d;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcn/fly/commons/a/c;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcn/fly/commons/a/c;->i()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1}, Lcn/fly/commons/a/c;->f()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    :cond_1
    invoke-virtual {v1}, Lcn/fly/commons/a/c;->j()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    :cond_2
    invoke-static {}, Lcn/fly/commons/a/m;->a()Lcn/fly/commons/a/m;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p0}, Lcn/fly/commons/a/d;->c()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    invoke-virtual {v0, v1, v2, p0}, Lcn/fly/commons/a/m;->b(JLjava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    invoke-static {}, Lcn/fly/commons/a/m;->a()Lcn/fly/commons/a/m;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-wide/32 v1, 0xea60

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v2, p0}, Lcn/fly/commons/a/m;->b(JLjava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    invoke-static {}, Lcn/fly/commons/a/m;->a()Lcn/fly/commons/a/m;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-direct {p0}, Lcn/fly/commons/a/d;->c()J

    .line 83
    .line 84
    .line 85
    move-result-wide v1

    .line 86
    invoke-virtual {v0, v1, v2, p0}, Lcn/fly/commons/a/m;->b(JLjava/lang/Runnable;)Z

    .line 87
    .line 88
    .line 89
    :goto_1
    return-void
.end method
