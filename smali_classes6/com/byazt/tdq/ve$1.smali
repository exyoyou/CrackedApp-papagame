.class public Lcom/byazt/tdq/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c4,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tdq/ve;->c(Lcom/byazt/ete/os;Lcom/byazt/dj/tt;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:Lcom/byazt/ete/os;

.field public final synthetic uj:Lcom/byazt/tdq/ve;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/tdq/ve;Lcom/byazt/ete/ic;Lcom/byazt/ete/os;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tdq/ve$1;->uj:Lcom/byazt/tdq/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/tdq/ve$1;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/tdq/ve$1;->tt:Lcom/byazt/ete/os;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/tdq/ve$1;->ve:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-object v3, v0, Lcom/byazt/tdq/ve$1;->c:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    invoke-static {v3}, Lcom/byazt/aas/nb;->rh(Lcom/byazt/ete/ic;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    int-to-long v8, v3

    .line 14
    iget-object v3, v0, Lcom/byazt/tdq/ve$1;->tt:Lcom/byazt/ete/os;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/byazt/ete/os;->tt()Lcom/byazt/ete/c;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/byazt/ete/c;->ve()Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3}, Lcom/byazt/nr/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v11

    .line 32
    new-instance v6, Lcom/byazt/eti/sp$tt;

    .line 33
    .line 34
    iget-object v3, v0, Lcom/byazt/tdq/ve$1;->c:Lcom/byazt/ete/ic;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->xg()J

    .line 37
    .line 38
    .line 39
    move-result-wide v12

    .line 40
    iget-object v3, v0, Lcom/byazt/tdq/ve$1;->c:Lcom/byazt/ete/ic;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->uv()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    const-wide/16 v14, 0x3e8

    .line 47
    .line 48
    mul-long v14, v14, v3

    .line 49
    .line 50
    iget-object v3, v0, Lcom/byazt/tdq/ve$1;->c:Lcom/byazt/ete/ic;

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v16

    .line 56
    move-object v10, v6

    .line 57
    invoke-direct/range {v10 .. v16}, Lcom/byazt/eti/sp$tt;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, v0, Lcom/byazt/tdq/ve$1;->uj:Lcom/byazt/tdq/ve;

    .line 61
    .line 62
    invoke-static {v3}, Lcom/byazt/tdq/ve;->c(Lcom/byazt/tdq/ve;)Lcom/byazt/eti/sp;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    iget-object v5, v0, Lcom/byazt/tdq/ve$1;->ve:Ljava/lang/String;

    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    iget-object v3, v0, Lcom/byazt/tdq/ve$1;->c:Lcom/byazt/ete/ic;

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->fq()I

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    invoke-virtual/range {v4 .. v10}, Lcom/byazt/eti/sp;->c(Ljava/lang/String;Lcom/byazt/eti/sp$tt;ZJI)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v4, "saveMeta >>  rit: "

    .line 81
    .line 82
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v4, v0, Lcom/byazt/tdq/ve$1;->ve:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v4, " saveDb cost: "

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v4

    .line 99
    sub-long/2addr v4, v1

    .line 100
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v2, "lqmt"

    .line 108
    .line 109
    invoke-static {v2, v1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
