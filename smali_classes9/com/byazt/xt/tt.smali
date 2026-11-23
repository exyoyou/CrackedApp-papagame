.class public Lcom/byazt/xt/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xt/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28f,
        0xd
    }
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
.method public c(Lcom/byazt/xt/c$c;)V
    .locals 21

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/byazt/xt/c$c;->c()Lcom/byazt/dv/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface/range {p1 .. p1}, Lcom/byazt/xt/c$c;->tt()Lcom/byazt/iz/tt;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    .line 10
    .line 11
    .line 12
    move-result-object v15

    .line 13
    if-nez v15, :cond_0

    .line 14
    .line 15
    new-instance v14, Lcom/byazt/pp/c;

    .line 16
    .line 17
    const v2, 0xcd168

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v14, v2, v3}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->pf()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "is_dex_adapter"

    .line 36
    .line 37
    invoke-virtual {v14, v3, v2}, Lcom/byazt/pp/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, ""

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->n()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    const/4 v6, 0x2

    .line 51
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->ve()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->sp()I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->a()I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    const-wide/16 v11, -0x1

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iget-boolean v13, v2, Lcom/byazt/nbs/i;->n:Z

    .line 70
    .line 71
    const/16 v16, 0x0

    .line 72
    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v17

    .line 77
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->cu()J

    .line 78
    .line 79
    .line 80
    move-result-wide v19

    .line 81
    sub-long v17, v17, v19

    .line 82
    .line 83
    move-object v2, v15

    .line 84
    move-object v10, v14

    .line 85
    move-object/from16 p1, v14

    .line 86
    .line 87
    move/from16 v14, v16

    .line 88
    .line 89
    move-object/from16 v19, v0

    .line 90
    .line 91
    move-object v0, v15

    .line 92
    move-wide/from16 v15, v17

    .line 93
    .line 94
    invoke-static/range {v2 .. v16}, Lcom/byazt/ng/a;->c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;ZIIIILcom/byazt/pp/c;JZZJ)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v1, v0}, Lcom/byazt/iz/tt;->c(Lcom/byazt/nbs/da;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->cu()J

    .line 106
    .line 107
    .line 108
    move-result-wide v4

    .line 109
    invoke-static {v2, v3, v4, v5}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual/range {v19 .. v19}, Lcom/byazt/dv/tt;->ve()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    invoke-virtual/range {v19 .. v19}, Lcom/byazt/dv/tt;->sp()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    invoke-virtual/range {v19 .. v19}, Lcom/byazt/dv/tt;->a()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    const-string v8, ""

    .line 129
    .line 130
    const-wide/16 v9, 0x0

    .line 131
    .line 132
    const/4 v11, 0x0

    .line 133
    const/4 v12, 0x0

    .line 134
    const/4 v13, 0x0

    .line 135
    const-wide/16 v14, 0x0

    .line 136
    .line 137
    move-object/from16 v2, p1

    .line 138
    .line 139
    move-object v4, v0

    .line 140
    invoke-static/range {v2 .. v15}, Lcom/byazt/ng/a;->c(Lcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v1, v0}, Lcom/byazt/iz/tt;->ve(Lcom/byazt/nbs/da;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->cu()J

    .line 152
    .line 153
    .line 154
    move-result-wide v4

    .line 155
    invoke-static {v2, v3, v4, v5}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 156
    .line 157
    .line 158
    move-object/from16 v2, p1

    .line 159
    .line 160
    move-object/from16 v1, v19

    .line 161
    .line 162
    invoke-virtual {v1, v2, v0}, Lcom/byazt/dv/tt;->c(Lcom/byazt/pp/c;Lcom/byazt/nbs/da;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_0
    move-object/from16 v0, p0

    .line 167
    .line 168
    move-object/from16 v1, p1

    .line 169
    .line 170
    invoke-interface {v1, v0}, Lcom/byazt/xt/c$c;->c(Lcom/byazt/xt/c;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method
