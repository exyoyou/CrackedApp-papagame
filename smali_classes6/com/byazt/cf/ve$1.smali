.class public Lcom/byazt/cf/ve$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x12,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cf/ve;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/cf/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/cf/ve;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cf/ve$1;->ve:Lcom/byazt/cf/ve;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/cf/ve$1;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/cf/ve$1;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/byazt/lvl/c;->c()Lcom/byazt/lvl/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/cf/ve$1;->c:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/cf/ve$1;->tt:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/byazt/lvl/c;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/dj/tt;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/byazt/cf/ve$1;->ve:Lcom/byazt/cf/ve;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/byazt/cf/ve;->tt()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x0

    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/byazt/eti/n;->c(Ljava/lang/String;ZJ)Lcom/byazt/ete/ic;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Lcom/byazt/ogz/sl;->tt(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->b()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->dz()J

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    add-long/2addr v4, v2

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    cmp-long v6, v4, v2

    .line 77
    .line 78
    if-gez v6, :cond_1

    .line 79
    .line 80
    iget-object v2, p0, Lcom/byazt/cf/ve$1;->ve:Lcom/byazt/cf/ve;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/byazt/cf/ve;->tt()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-static {v2}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v2, v3}, Lcom/byazt/eti/n;->c(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    if-nez v1, :cond_2

    .line 98
    .line 99
    iget-object v1, p0, Lcom/byazt/cf/ve$1;->ve:Lcom/byazt/cf/ve;

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Lcom/byazt/cf/ve;->c(Lcom/byazt/dj/tt;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_0
    return-void
.end method
