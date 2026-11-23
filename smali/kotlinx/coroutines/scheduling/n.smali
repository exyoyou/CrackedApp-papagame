.class public final Lkotlinx/coroutines/scheduling/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final c:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final d:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final e:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static f:Lkotlinx/coroutines/scheduling/i; = null
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:Lkotlinx/coroutines/scheduling/k;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Lkotlinx/coroutines/scheduling/k;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "kotlinx.coroutines.scheduler.default.name"

    .line 2
    .line 3
    const-string v1, "DefaultDispatcher"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/t0;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lkotlinx/coroutines/scheduling/n;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "kotlinx.coroutines.scheduler.resolution.ns"

    .line 12
    .line 13
    const-wide/32 v2, 0x186a0

    .line 14
    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    const-wide/16 v6, 0x0

    .line 19
    .line 20
    const/16 v8, 0xc

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    invoke-static/range {v1 .. v9}, Lkotlinx/coroutines/internal/t0;->h(Ljava/lang/String;JJJILjava/lang/Object;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    sput-wide v0, Lkotlinx/coroutines/scheduling/n;->b:J

    .line 28
    .line 29
    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    .line 30
    .line 31
    invoke-static {}, Lkotlinx/coroutines/internal/t0;->a()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x2

    .line 36
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x1

    .line 41
    const/4 v5, 0x0

    .line 42
    const/16 v6, 0x8

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/internal/t0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    sput v0, Lkotlinx/coroutines/scheduling/n;->c:I

    .line 50
    .line 51
    const-string v1, "kotlinx.coroutines.scheduler.max.pool.size"

    .line 52
    .line 53
    const v2, 0x1ffffe

    .line 54
    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    const v4, 0x1ffffe

    .line 58
    .line 59
    .line 60
    const/4 v5, 0x4

    .line 61
    const/4 v6, 0x0

    .line 62
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/internal/t0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    sput v0, Lkotlinx/coroutines/scheduling/n;->d:I

    .line 67
    .line 68
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 69
    .line 70
    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    .line 71
    .line 72
    const-wide/16 v2, 0x3c

    .line 73
    .line 74
    const-wide/16 v4, 0x0

    .line 75
    .line 76
    const-wide/16 v6, 0x0

    .line 77
    .line 78
    invoke-static/range {v1 .. v9}, Lkotlinx/coroutines/internal/t0;->h(Ljava/lang/String;JJJILjava/lang/Object;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    sput-wide v0, Lkotlinx/coroutines/scheduling/n;->e:J

    .line 87
    .line 88
    sget-object v0, Lkotlinx/coroutines/scheduling/g;->a:Lkotlinx/coroutines/scheduling/g;

    .line 89
    .line 90
    sput-object v0, Lkotlinx/coroutines/scheduling/n;->f:Lkotlinx/coroutines/scheduling/i;

    .line 91
    .line 92
    new-instance v0, Lkotlinx/coroutines/scheduling/l;

    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/l;-><init>(I)V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lkotlinx/coroutines/scheduling/n;->i:Lkotlinx/coroutines/scheduling/k;

    .line 99
    .line 100
    new-instance v0, Lkotlinx/coroutines/scheduling/l;

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/l;-><init>(I)V

    .line 104
    .line 105
    .line 106
    sput-object v0, Lkotlinx/coroutines/scheduling/n;->j:Lkotlinx/coroutines/scheduling/k;

    .line 107
    .line 108
    return-void
.end method

.method public static final a(Lkotlinx/coroutines/scheduling/j;)Z
    .locals 1
    .param p0    # Lkotlinx/coroutines/scheduling/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/j;->c:Lkotlinx/coroutines/scheduling/k;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlinx/coroutines/scheduling/k;->s()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method
