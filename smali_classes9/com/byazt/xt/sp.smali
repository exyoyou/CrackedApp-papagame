.class public Lcom/byazt/xt/sp;
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
        0x5b
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
    invoke-interface/range {p1 .. p1}, Lcom/byazt/xt/c$c;->tt()Lcom/byazt/iz/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface/range {p1 .. p1}, Lcom/byazt/xt/c$c;->c()Lcom/byazt/dv/tt;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    .line 14
    .line 15
    .line 16
    move-result-object v15

    .line 17
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    .line 18
    .line 19
    .line 20
    move-result-object v14

    .line 21
    if-eqz v15, :cond_0

    .line 22
    .line 23
    if-eqz v14, :cond_0

    .line 24
    .line 25
    invoke-static {v15, v14}, Lcom/byazt/qv/n;->c(Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;)Lcom/byazt/qv/n$c;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    new-instance v13, Lcom/byazt/pp/c;

    .line 32
    .line 33
    const v3, 0x13c7a

    .line 34
    .line 35
    .line 36
    iget-object v2, v2, Lcom/byazt/qv/n$c;->c:Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {v13, v3, v2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->pf()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "is_dex_adapter"

    .line 50
    .line 51
    invoke-virtual {v13, v3, v2}, Lcom/byazt/pp/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v14}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->n()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    const/4 v6, 0x2

    .line 71
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->ve()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->sp()I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->a()I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    const-wide/16 v11, -0x1

    .line 84
    .line 85
    const/16 v16, 0x0

    .line 86
    .line 87
    const/16 v17, 0x0

    .line 88
    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->cu()J

    .line 94
    .line 95
    .line 96
    move-result-wide v18

    .line 97
    sub-long v18, v2, v18

    .line 98
    .line 99
    move-object v2, v14

    .line 100
    move-object v3, v15

    .line 101
    move-object v10, v13

    .line 102
    move-object/from16 p1, v13

    .line 103
    .line 104
    move/from16 v13, v16

    .line 105
    .line 106
    move-object/from16 v20, v14

    .line 107
    .line 108
    move/from16 v14, v17

    .line 109
    .line 110
    move-object/from16 v17, v15

    .line 111
    .line 112
    move-wide/from16 v15, v18

    .line 113
    .line 114
    invoke-static/range {v2 .. v16}, Lcom/byazt/ng/a;->c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;ZIIIILcom/byazt/pp/c;JZZJ)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    move-object/from16 v14, v20

    .line 122
    .line 123
    invoke-virtual {v0, v14}, Lcom/byazt/iz/tt;->c(Lcom/byazt/nbs/da;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->cu()J

    .line 128
    .line 129
    .line 130
    move-result-wide v4

    .line 131
    invoke-static {v2, v3, v4, v5}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->ve()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->sp()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->a()I

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v14}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v2, v3}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    const-wide/16 v9, 0x0

    .line 159
    .line 160
    const/4 v11, 0x0

    .line 161
    const/4 v12, 0x0

    .line 162
    const/4 v13, 0x0

    .line 163
    const-wide/16 v15, 0x0

    .line 164
    .line 165
    move-object/from16 v2, p1

    .line 166
    .line 167
    move-object/from16 v3, v17

    .line 168
    .line 169
    move-object v4, v14

    .line 170
    move-object/from16 v17, v1

    .line 171
    .line 172
    move-object v1, v14

    .line 173
    move-wide v14, v15

    .line 174
    invoke-static/range {v2 .. v15}, Lcom/byazt/ng/a;->c(Lcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v0, v1}, Lcom/byazt/iz/tt;->ve(Lcom/byazt/nbs/da;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->cu()J

    .line 186
    .line 187
    .line 188
    move-result-wide v4

    .line 189
    invoke-static {v2, v3, v4, v5}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 190
    .line 191
    .line 192
    move-object/from16 v2, p1

    .line 193
    .line 194
    move-object/from16 v0, v17

    .line 195
    .line 196
    invoke-virtual {v0, v2, v1}, Lcom/byazt/dv/tt;->c(Lcom/byazt/pp/c;Lcom/byazt/nbs/da;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_0
    move-object/from16 v0, p0

    .line 201
    .line 202
    move-object/from16 v1, p1

    .line 203
    .line 204
    invoke-interface {v1, v0}, Lcom/byazt/xt/c$c;->c(Lcom/byazt/xt/c;)V

    .line 205
    .line 206
    .line 207
    return-void
.end method
