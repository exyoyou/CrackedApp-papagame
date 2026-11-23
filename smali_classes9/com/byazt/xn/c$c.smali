.class public final Lcom/byazt/xn/c$c;
.super Lcom/byazt/na/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x369,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/xn/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xn/c;

.field public final uj:Lcom/byazt/xn/c;

.field public final ve:Lcom/byazt/gqp/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/xn/c;Lcom/byazt/gqp/ve;Lcom/byazt/xn/c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/byazt/xn/c$c;->c:Lcom/byazt/xn/c;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    new-array p1, p1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v0, "net-async-call"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Lcom/byazt/na/n;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/byazt/xn/c$c;->ve:Lcom/byazt/gqp/ve;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/byazt/xn/c$c;->uj:Lcom/byazt/xn/c;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xn/c$c;->uj:Lcom/byazt/xn/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/byazt/xn/c;->uj:Lcom/byazt/gqp/sl;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/gqp/sl;->uj()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public tt()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/xn/c$c;->uj:Lcom/byazt/xn/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/byazt/xn/c;->uj:Lcom/byazt/gqp/sl;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/gqp/sl;->c()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/xn/c$c;->c:Lcom/byazt/xn/c;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/xn/c;->n()Lcom/byazt/gqp/m;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/xn/c$c;->ve:Lcom/byazt/gqp/ve;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/byazt/xn/c$c;->c:Lcom/byazt/xn/c;

    .line 23
    .line 24
    new-instance v2, Ljava/io/IOException;

    .line 25
    .line 26
    const-string v3, "response is null"

    .line 27
    .line 28
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1, v2}, Lcom/byazt/gqp/ve;->onFailure(Lcom/byazt/gqp/tt;Ljava/io/IOException;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/byazt/xn/c$c;->ve:Lcom/byazt/gqp/ve;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/byazt/xn/c$c;->c:Lcom/byazt/xn/c;

    .line 38
    .line 39
    invoke-interface {v1, v2, v0}, Lcom/byazt/gqp/ve;->onResponse(Lcom/byazt/gqp/tt;Lcom/byazt/gqp/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    .line 41
    .line 42
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/byazt/xn/c$c;->uj:Lcom/byazt/xn/c;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/byazt/xn/c;->tt:Lcom/byazt/xn/uj;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Lcom/byazt/xn/uj;->tt(Lcom/byazt/xn/c$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_1
    move-exception v0

    .line 56
    :try_start_2
    instance-of v1, v0, Ljava/io/IOException;

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    iget-object v1, p0, Lcom/byazt/xn/c$c;->ve:Lcom/byazt/gqp/ve;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/byazt/xn/c$c;->c:Lcom/byazt/xn/c;

    .line 63
    .line 64
    check-cast v0, Ljava/io/IOException;

    .line 65
    .line 66
    invoke-interface {v1, v2, v0}, Lcom/byazt/gqp/ve;->onFailure(Lcom/byazt/gqp/tt;Ljava/io/IOException;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/byazt/xn/c$c;->ve:Lcom/byazt/gqp/ve;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/byazt/xn/c$c;->c:Lcom/byazt/xn/c;

    .line 73
    .line 74
    new-instance v3, Ljava/io/IOException;

    .line 75
    .line 76
    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v1, v2, v3}, Lcom/byazt/gqp/ve;->onFailure(Lcom/byazt/gqp/tt;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 80
    .line 81
    .line 82
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/byazt/xn/c$c;->uj:Lcom/byazt/xn/c;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/byazt/xn/c;->tt:Lcom/byazt/xn/uj;

    .line 85
    .line 86
    invoke-virtual {v0, p0}, Lcom/byazt/xn/uj;->tt(Lcom/byazt/xn/c$c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :catchall_2
    move-exception v0

    .line 91
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :catchall_3
    move-exception v0

    .line 96
    :try_start_4
    iget-object v1, p0, Lcom/byazt/xn/c$c;->uj:Lcom/byazt/xn/c;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/byazt/xn/c;->tt:Lcom/byazt/xn/uj;

    .line 99
    .line 100
    invoke-virtual {v1, p0}, Lcom/byazt/xn/uj;->tt(Lcom/byazt/xn/c$c;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :catchall_4
    move-exception v1

    .line 105
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    :goto_2
    throw v0
.end method
