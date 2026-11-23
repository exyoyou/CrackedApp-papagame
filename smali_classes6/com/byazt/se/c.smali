.class public abstract Lcom/byazt/se/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x29f,
        0x14
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;

.field public final tt:Lcom/byazt/co/c;

.field public uj:Lorg/json/JSONObject;

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/se/c;->ve:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/byazt/se/c;->c:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/byazt/se/c;->uj:Lorg/json/JSONObject;

    .line 11
    .line 12
    new-instance p1, Lcom/byazt/co/c;

    .line 13
    .line 14
    invoke-direct {p1}, Lcom/byazt/co/c;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/byazt/se/c;->tt:Lcom/byazt/co/c;

    .line 18
    .line 19
    return-void
.end method

.method private uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/se/c;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public c()Lcom/byazt/co/c;
    .locals 7

    .line 1
    const-string v0, "index"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {p0}, Lcom/byazt/se/c;->tt()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    iget-object v6, p0, Lcom/byazt/se/c;->tt:Lcom/byazt/co/c;

    .line 16
    .line 17
    invoke-virtual {v6, v3}, Lcom/byazt/co/c;->tt(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/byazt/se/c;->tt:Lcom/byazt/co/c;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/byazt/se/c;->ve()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v3, v6}, Lcom/byazt/co/c;->c(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/byazt/se/c;->tt:Lcom/byazt/co/c;

    .line 30
    .line 31
    sub-long/2addr v4, v1

    .line 32
    invoke-virtual {v3, v4, v5}, Lcom/byazt/co/c;->c(J)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/byazt/se/c;->tt:Lcom/byazt/co/c;

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/byazt/se/c;->uj()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/byazt/co/c;->ve(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/byazt/se/c;->tt:Lcom/byazt/co/c;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/byazt/co/c;->ve()V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/byazt/se/c;->uj:Lorg/json/JSONObject;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    iget-object v1, p0, Lcom/byazt/se/c;->tt:Lcom/byazt/co/c;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/byazt/se/c;->uj:Lorg/json/JSONObject;

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {v1, v0}, Lcom/byazt/co/c;->c(I)V

    .line 66
    .line 67
    .line 68
    :cond_0
    iget-object v0, p0, Lcom/byazt/se/c;->tt:Lcom/byazt/co/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, "__kite"

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/byazt/se/c;->ve()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, " doLoad# error "

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/byazt/tf/c;->tt(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/byazt/se/c;->tt:Lcom/byazt/co/c;

    .line 106
    .line 107
    return-object v0
.end method

.method public abstract tt()Ljava/lang/String;
.end method

.method public abstract ve()Ljava/lang/String;
.end method
