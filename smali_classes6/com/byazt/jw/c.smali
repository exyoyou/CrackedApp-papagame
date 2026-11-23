.class public Lcom/byazt/jw/c;
.super Lcom/byazt/vd/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4c0,
        0x14
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/vd/c;-><init>(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/vd/c;->a:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/vd/c;->a:Ljava/util/Map;

    .line 13
    .line 14
    const-string v1, "id"

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    iget-object v1, p0, Lcom/byazt/vd/c;->ve:Lcom/byazt/xj/ve;

    .line 34
    .line 35
    invoke-virtual {v1, v1}, Lcom/byazt/xj/ve;->tt(Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-virtual {v1, v0}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    instance-of v1, v0, Lcom/byazt/yn/c;

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    check-cast v0, Lcom/byazt/yn/c;

    .line 51
    .line 52
    const/4 v1, 0x4

    .line 53
    const/4 v2, 0x3

    .line 54
    :try_start_0
    iget-object v3, p0, Lcom/byazt/vd/c;->a:Ljava/util/Map;

    .line 55
    .line 56
    const-string v4, "col"

    .line 57
    .line 58
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iget-object v3, p0, Lcom/byazt/vd/c;->a:Ljava/util/Map;

    .line 71
    .line 72
    const-string v4, "row"

    .line 73
    .line 74
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    iget-object v3, p0, Lcom/byazt/vd/c;->a:Ljava/util/Map;

    .line 87
    .line 88
    const-string v4, "duration"

    .line 89
    .line 90
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception v3

    .line 104
    invoke-static {v3}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    const/16 v3, 0x258

    .line 108
    .line 109
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/yn/c;->c(III)V

    .line 110
    .line 111
    .line 112
    :cond_3
    :goto_1
    return-void
.end method
