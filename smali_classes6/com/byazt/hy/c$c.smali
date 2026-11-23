.class public Lcom/byazt/hy/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gqp/i;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x25c,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/hy/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/gqp/i$c;)Lcom/byazt/gqp/m;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p1}, Lcom/byazt/gqp/i$c;->c()Lcom/byazt/gqp/yp;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {p1, v2}, Lcom/byazt/gqp/i$c;->c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/m;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v3, "GET"

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/byazt/gqp/yp;->ve()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_0
    invoke-virtual {v2}, Lcom/byazt/gqp/nu;->c()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    sub-long/2addr v4, v0

    .line 41
    const-wide/16 v0, 0x0

    .line 42
    .line 43
    cmp-long v6, v4, v0

    .line 44
    .line 45
    if-lez v6, :cond_1

    .line 46
    .line 47
    const-wide/16 v0, 0x2800

    .line 48
    .line 49
    cmp-long v6, v2, v0

    .line 50
    .line 51
    if-lez v6, :cond_1

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    .line 56
    long-to-double v1, v2

    .line 57
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    .line 58
    .line 59
    div-double/2addr v1, v6

    .line 60
    long-to-double v3, v4

    .line 61
    div-double/2addr v1, v3

    .line 62
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    mul-double v1, v1, v3

    .line 68
    .line 69
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v2, 0x0

    .line 74
    aput-object v1, v0, v2

    .line 75
    .line 76
    const-string v1, "%.2f"

    .line 77
    .line 78
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/byazt/hy/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    invoke-static {v0, v1}, Lcom/byazt/hy/c;->c(J)J

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/byazt/hy/c;->tt()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    :cond_1
    return-object p1
.end method
