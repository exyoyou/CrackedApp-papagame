.class public final Lcom/byazt/sw/uj$4;
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
        0x65
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/oce/c;

.field public final synthetic tt:Lcom/byazt/afw/nu$c;


# direct methods
.method public constructor <init>(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sw/uj$4;->c:Lcom/byazt/oce/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/sw/uj$4;->tt:Lcom/byazt/afw/nu$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/byazt/sw/uj$4;->c:Lcom/byazt/oce/c;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/sw/uj$4;->tt:Lcom/byazt/afw/nu$c;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/byazt/sw/uj;->tt()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/sw/uj$4;->c:Lcom/byazt/oce/c;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/byazt/afw/nu;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/afw/nu;->uj()Lcom/byazt/jzl/a;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-virtual {v0}, Lcom/byazt/afw/nu;->n()Lcom/byazt/ete/ic;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    if-eqz v8, :cond_5

    .line 35
    .line 36
    if-nez v9, :cond_2

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_2
    invoke-static {v9}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    invoke-static {v9}, Lcom/byazt/ete/my;->tt(Lcom/byazt/ete/ic;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    iget-object v1, p0, Lcom/byazt/sw/uj$4;->tt:Lcom/byazt/afw/nu$c;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/byazt/afw/nu$c;->u()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_4

    .line 60
    .line 61
    iget-object v1, p0, Lcom/byazt/sw/uj$4;->tt:Lcom/byazt/afw/nu$c;

    .line 62
    .line 63
    invoke-static {v9, v8, v1}, Lcom/byazt/sw/uj;->c(Lcom/byazt/ete/ic;Lcom/byazt/jzl/a;Lcom/byazt/afw/nu$c;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    new-instance v10, Lcom/byazt/afw/i;

    .line 67
    .line 68
    invoke-direct {v10}, Lcom/byazt/afw/i;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/byazt/sw/uj$4;->tt:Lcom/byazt/afw/nu$c;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/byazt/afw/nu$c;->yp()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v10, v1}, Lcom/byazt/afw/i;->tt(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/byazt/sw/uj$4;->tt:Lcom/byazt/afw/nu$c;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/byazt/afw/nu$c;->z()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {v10, v1}, Lcom/byazt/afw/i;->c(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9}, Lcom/byazt/ete/ic;->xx()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-static {v1}, Lcom/byazt/bzd/sl;->c(I)Lcom/byazt/fk/c;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v1, v8}, Lcom/byazt/fk/c;->getCachedSize(Lcom/byazt/fk/u;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v1

    .line 101
    invoke-virtual {v10, v1, v2}, Lcom/byazt/afw/i;->tt(J)V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 105
    .line 106
    .line 107
    move-result-wide v1

    .line 108
    invoke-virtual {v0}, Lcom/byazt/afw/nu;->c()J

    .line 109
    .line 110
    .line 111
    move-result-wide v3

    .line 112
    sub-long v6, v1, v3

    .line 113
    .line 114
    invoke-virtual {v10, v6, v7}, Lcom/byazt/afw/i;->c(J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/byazt/afw/nu;->ve()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-virtual {v0}, Lcom/byazt/afw/nu;->tt()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v8}, Lcom/byazt/jzl/a;->getPlayerType()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    move-object v1, v8

    .line 130
    move-object v5, v9

    .line 131
    invoke-static/range {v1 .. v7}, Lcom/byazt/sw/uj;->c(Lcom/byazt/jzl/a;Ljava/lang/String;IILcom/byazt/ete/ic;J)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const-string v1, "EXTRA_PLAY_START"

    .line 136
    .line 137
    invoke-virtual {v8, v1}, Lcom/byazt/jzl/a;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v0, v1}, Lcom/byazt/sw/uj;->c(Lorg/json/JSONObject;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v9}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    new-instance v2, Lcom/byazt/afw/tt;

    .line 149
    .line 150
    invoke-direct {v2, v9, v1, v0, v10}, Lcom/byazt/afw/tt;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/afw/uj;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/byazt/sw/uj$4;->tt:Lcom/byazt/afw/nu$c;

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/byazt/afw/nu$c;->u()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-virtual {v2, v0}, Lcom/byazt/afw/tt;->c(Z)V

    .line 160
    .line 161
    .line 162
    const-string v0, "feed_play"

    .line 163
    .line 164
    invoke-static {v9, v0}, Lcom/byazt/sw/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v2, v0}, Lcom/byazt/sw/uj;->c(Lcom/byazt/afw/tt;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_5
    :goto_0
    return-void
.end method
