.class public final Lcom/byazt/sw/uj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x364,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sw/uj;->c(Lcom/byazt/ete/ic;Lcom/byazt/oce/c;Lcom/byazt/jzl/a;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic n:Z

.field public final synthetic tt:Lcom/byazt/oce/c;

.field public final synthetic uj:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/jzl/a;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Lcom/byazt/oce/c;Lcom/byazt/jzl/a;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sw/uj$1;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/sw/uj$1;->tt:Lcom/byazt/oce/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/sw/uj$1;->ve:Lcom/byazt/jzl/a;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/sw/uj$1;->uj:Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/byazt/sw/uj$1;->n:Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/byazt/sw/uj$1;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/sw/uj$1;->tt:Lcom/byazt/oce/c;

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/sw/uj$1;->ve:Lcom/byazt/jzl/a;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->xx()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Lcom/byazt/bzd/sl;->c(I)Lcom/byazt/fk/c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/byazt/sw/uj$1;->ve:Lcom/byazt/jzl/a;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/byazt/fk/c;->getCachedSize(Lcom/byazt/fk/u;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iget-object v2, p0, Lcom/byazt/sw/uj$1;->c:Lcom/byazt/ete/ic;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/byazt/sw/uj$1;->ve:Lcom/byazt/jzl/a;

    .line 32
    .line 33
    invoke-static {v2, v3, v0, v1}, Lcom/byazt/sw/uj;->c(Lcom/byazt/ete/ic;Lcom/byazt/jzl/a;J)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    new-instance v3, Lcom/byazt/afw/nu;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    iget-object v7, p0, Lcom/byazt/sw/uj$1;->uj:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v9, p0, Lcom/byazt/sw/uj$1;->ve:Lcom/byazt/jzl/a;

    .line 46
    .line 47
    iget-object v10, p0, Lcom/byazt/sw/uj$1;->c:Lcom/byazt/ete/ic;

    .line 48
    .line 49
    move-object v4, v3

    .line 50
    move v8, v2

    .line 51
    invoke-direct/range {v4 .. v10}, Lcom/byazt/afw/nu;-><init>(JLjava/lang/String;ILcom/byazt/jzl/a;Lcom/byazt/ete/ic;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/byazt/sw/uj;->tt()Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    iget-object v5, p0, Lcom/byazt/sw/uj$1;->tt:Lcom/byazt/oce/c;

    .line 59
    .line 60
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    new-instance v3, Lcom/byazt/afw/m;

    .line 64
    .line 65
    invoke-direct {v3}, Lcom/byazt/afw/m;-><init>()V

    .line 66
    .line 67
    .line 68
    const-wide/16 v4, 0x0

    .line 69
    .line 70
    cmp-long v6, v0, v4

    .line 71
    .line 72
    if-lez v6, :cond_1

    .line 73
    .line 74
    invoke-virtual {v3, v0, v1}, Lcom/byazt/afw/m;->c(J)V

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-boolean v4, p0, Lcom/byazt/sw/uj$1;->n:Z

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Lcom/byazt/afw/m;->c(Z)V

    .line 80
    .line 81
    .line 82
    iget-object v4, p0, Lcom/byazt/sw/uj$1;->c:Lcom/byazt/ete/ic;

    .line 83
    .line 84
    iget-object v5, p0, Lcom/byazt/sw/uj$1;->ve:Lcom/byazt/jzl/a;

    .line 85
    .line 86
    invoke-static {v2, v0, v1, v4, v5}, Lcom/byazt/whk/u;->c(IJLcom/byazt/ete/ic;Lcom/byazt/jzl/a;)V

    .line 87
    .line 88
    .line 89
    iget-object v4, p0, Lcom/byazt/sw/uj$1;->ve:Lcom/byazt/jzl/a;

    .line 90
    .line 91
    iget-object v5, p0, Lcom/byazt/sw/uj$1;->uj:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v4}, Lcom/byazt/jzl/a;->getPlayerType()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    iget-object v8, p0, Lcom/byazt/sw/uj$1;->c:Lcom/byazt/ete/ic;

    .line 98
    .line 99
    const-wide/16 v9, 0x0

    .line 100
    .line 101
    move v6, v2

    .line 102
    invoke-static/range {v4 .. v10}, Lcom/byazt/sw/uj;->c(Lcom/byazt/jzl/a;Ljava/lang/String;IILcom/byazt/ete/ic;J)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/byazt/sw/uj$1;->ve:Lcom/byazt/jzl/a;

    .line 107
    .line 108
    const-string v2, "EXTRA_PLAY_START"

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Lcom/byazt/jzl/a;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Lcom/byazt/sw/uj;->c(Lorg/json/JSONObject;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/byazt/sw/uj$1;->c:Lcom/byazt/ete/ic;

    .line 118
    .line 119
    invoke-static {v1}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    new-instance v2, Lcom/byazt/afw/tt;

    .line 124
    .line 125
    iget-object v4, p0, Lcom/byazt/sw/uj$1;->c:Lcom/byazt/ete/ic;

    .line 126
    .line 127
    invoke-direct {v2, v4, v1, v0, v3}, Lcom/byazt/afw/tt;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/afw/uj;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/byazt/sw/uj$1;->ve:Lcom/byazt/jzl/a;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/byazt/jzl/a;->getPlayerType()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    const/4 v1, -0x1

    .line 137
    if-ne v0, v1, :cond_2

    .line 138
    .line 139
    const/4 v0, 0x1

    .line 140
    goto :goto_0

    .line 141
    :cond_2
    const/4 v0, 0x0

    .line 142
    :goto_0
    invoke-virtual {v2, v0}, Lcom/byazt/afw/tt;->c(Z)V

    .line 143
    .line 144
    .line 145
    const-string v0, "play_start"

    .line 146
    .line 147
    invoke-static {v2, v0}, Lcom/byazt/sw/uj;->c(Lcom/byazt/afw/tt;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    :goto_1
    return-void
.end method
