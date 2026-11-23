.class public Lcom/byazt/ydv/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ydv/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34a,
        0xf
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/gqp/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/byazt/ydv/uj;->c:Lcom/byazt/gqp/t;

    .line 6
    .line 7
    invoke-static {}, Lcom/byazt/oy/tt;->ve()Lcom/byazt/gqp/t;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/byazt/ydv/uj;->c:Lcom/byazt/gqp/t;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ydv/n;)Lcom/byazt/ydv/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/gqp/yp$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/gqp/yp$c;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p1, Lcom/byazt/ydv/n;->n:Ljava/util/Map;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_0

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/String;

    .line 47
    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    const-string v2, ""

    .line 51
    .line 52
    :cond_1
    invoke-virtual {v0, v3, v2}, Lcom/byazt/gqp/yp$c;->tt(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/gqp/yp$c;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object v1, p1, Lcom/byazt/ydv/n;->tt:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/String;)Lcom/byazt/gqp/yp$c;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/byazt/gqp/yp$c;->c()Lcom/byazt/gqp/yp$c;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/byazt/gqp/yp$c;->tt()Lcom/byazt/gqp/yp;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/byazt/ydv/uj;->c:Lcom/byazt/gqp/t;

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Lcom/byazt/gqp/t;->c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/tt;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0}, Lcom/byazt/gqp/tt;->tt()Lcom/byazt/gqp/m;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, "NetworkSoureVolleyImpl"

    .line 81
    .line 82
    const/4 v2, 0x2

    .line 83
    new-array v2, v2, [Ljava/lang/Object;

    .line 84
    .line 85
    const-string v3, "response code = "

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    aput-object v3, v2, v4

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/byazt/gqp/m;->ve()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const/4 v4, 0x1

    .line 99
    aput-object v3, v2, v4

    .line 100
    .line 101
    invoke-static {v1, v2}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    new-instance v1, Lcom/byazt/ydv/a;

    .line 105
    .line 106
    invoke-direct {v1, v0, p1}, Lcom/byazt/ydv/a;-><init>(Lcom/byazt/gqp/m;Lcom/byazt/ydv/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    return-object v1

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    const/4 p1, 0x0

    .line 115
    return-object p1
.end method
