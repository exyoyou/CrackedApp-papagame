.class public Lcom/byazt/xky/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa9,
        0x14
    }
.end annotation


# direct methods
.method public static c()Lcom/byazt/lz/ve;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/xky/c$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/xky/c$1;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static tt()Lcom/byazt/yj/my;
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    div-int/lit8 v0, v0, 0x10

    .line 18
    .line 19
    const/high16 v1, 0xa00000

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/high16 v1, 0x500000

    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    new-instance v0, Lcom/byazt/ep/c;

    .line 32
    .line 33
    const/high16 v4, 0x80000

    .line 34
    .line 35
    const-wide/32 v5, 0x2800000

    .line 36
    .line 37
    .line 38
    const/4 v7, 0x1

    .line 39
    const/4 v8, 0x1

    .line 40
    new-instance v9, Ljava/io/File;

    .line 41
    .line 42
    invoke-static {}, Lcom/byazt/bzd/sl;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    move-object v2, v0

    .line 50
    invoke-direct/range {v2 .. v9}, Lcom/byazt/ep/c;-><init>(IIJZZLjava/io/File;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lcom/byazt/oz/n$c;

    .line 54
    .line 55
    invoke-direct {v1}, Lcom/byazt/oz/n$c;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Lcom/byazt/oz/n$c;->c(Lcom/byazt/yj/tt;)Lcom/byazt/oz/n$c;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {}, Lcom/byazt/bwm/n;->c()Ljava/util/concurrent/ExecutorService;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/byazt/oz/n$c;->c(Ljava/util/concurrent/ExecutorService;)Lcom/byazt/oz/n$c;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Lcom/byazt/xky/c$2;

    .line 71
    .line 72
    invoke-direct {v1}, Lcom/byazt/xky/c$2;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/byazt/oz/n$c;->c(Lcom/byazt/yj/n;)Lcom/byazt/oz/n$c;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/byazt/oz/n$c;->c()Lcom/byazt/oz/n;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0
.end method
