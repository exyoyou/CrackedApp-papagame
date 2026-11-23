.class public Lcom/byazt/zd/c$2$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x647,
        0x740
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zd/c$2;->onError(Lcom/byazt/fk/sp;Lcom/byazt/fk/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/fk/ve;

.field public final synthetic tt:Lcom/byazt/fk/sp;

.field public final synthetic ve:Lcom/byazt/zd/c$2;


# direct methods
.method public constructor <init>(Lcom/byazt/zd/c$2;Lcom/byazt/fk/ve;Lcom/byazt/fk/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zd/c$2$4;->ve:Lcom/byazt/zd/c$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/zd/c$2$4;->c:Lcom/byazt/fk/ve;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/zd/c$2$4;->tt:Lcom/byazt/fk/sp;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/zd/c$2$4;->c:Lcom/byazt/fk/ve;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/fk/ve;->getCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x134

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/byazt/zd/c$2$4;->ve:Lcom/byazt/zd/c$2;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/byazt/zd/c;->rh(Lcom/byazt/zd/c;)Lcom/byazt/fk/sp;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/byazt/zd/c$2$4;->tt:Lcom/byazt/fk/sp;

    .line 22
    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    instance-of v1, v2, Lcom/byazt/ts/uj;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v2, Lcom/byazt/ts/uj;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/byazt/ts/uj;->c()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/16 v2, 0xc8

    .line 36
    .line 37
    if-eq v1, v2, :cond_0

    .line 38
    .line 39
    const/16 v2, 0xcb

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v3, "ignore errorCode:"

    .line 46
    .line 47
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, " state:"

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "BaseVideoController"

    .line 66
    .line 67
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/byazt/zd/c$2$4;->c:Lcom/byazt/fk/ve;

    .line 72
    .line 73
    invoke-interface {v1}, Lcom/byazt/fk/ve;->getExtraCode()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget-object v2, p0, Lcom/byazt/zd/c$2$4;->c:Lcom/byazt/fk/ve;

    .line 78
    .line 79
    invoke-interface {v2}, Lcom/byazt/fk/ve;->getMsg()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v3, p0, Lcom/byazt/zd/c$2$4;->ve:Lcom/byazt/zd/c$2;

    .line 84
    .line 85
    iget-object v3, v3, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    invoke-static {v3, v0, v1, v2, v4}, Lcom/byazt/zd/c;->c(Lcom/byazt/zd/c;IILjava/lang/String;Lorg/json/JSONArray;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/byazt/zd/c$2$4;->ve:Lcom/byazt/zd/c$2;

    .line 92
    .line 93
    iget-object v1, v1, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/byazt/zd/c;->my(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/byazt/zd/c$2$4;->ve:Lcom/byazt/zd/c$2;

    .line 100
    .line 101
    iget-object v2, v2, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 102
    .line 103
    invoke-static {v2}, Lcom/byazt/zd/c;->x(Lcom/byazt/zd/c;)Ljava/lang/Runnable;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/byazt/zd/c$2$4;->ve:Lcom/byazt/zd/c$2;

    .line 111
    .line 112
    iget-object v1, v1, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 113
    .line 114
    invoke-static {v1}, Lcom/byazt/zd/c;->gt(Lcom/byazt/zd/c;)Lcom/byazt/un/a;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-eqz v1, :cond_2

    .line 119
    .line 120
    iget-object v1, p0, Lcom/byazt/zd/c$2$4;->ve:Lcom/byazt/zd/c$2;

    .line 121
    .line 122
    iget-object v1, v1, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    invoke-virtual {v1, v2}, Lcom/byazt/zd/c;->n(I)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/byazt/zd/c$2$4;->ve:Lcom/byazt/zd/c$2;

    .line 129
    .line 130
    iget-object v1, v1, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 131
    .line 132
    invoke-static {v1}, Lcom/byazt/zd/c;->rl(Lcom/byazt/zd/c;)Lcom/byazt/un/a;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/byazt/un/a;->tt()V

    .line 137
    .line 138
    .line 139
    :cond_2
    iget-object v1, p0, Lcom/byazt/zd/c$2$4;->ve:Lcom/byazt/zd/c$2;

    .line 140
    .line 141
    iget-object v1, v1, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 142
    .line 143
    invoke-static {v1}, Lcom/byazt/zd/c;->c(Lcom/byazt/zd/c;)Lcom/byazt/dh/ve$c;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-eqz v1, :cond_3

    .line 148
    .line 149
    iget-object v1, p0, Lcom/byazt/zd/c$2$4;->ve:Lcom/byazt/zd/c$2;

    .line 150
    .line 151
    iget-object v1, v1, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 152
    .line 153
    invoke-static {v1}, Lcom/byazt/zd/c;->c(Lcom/byazt/zd/c;)Lcom/byazt/dh/ve$c;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/byazt/zd/c$2$4;->ve:Lcom/byazt/zd/c$2;

    .line 158
    .line 159
    iget-object v2, v2, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 160
    .line 161
    invoke-static {v2}, Lcom/byazt/zd/c;->qy(Lcom/byazt/zd/c;)J

    .line 162
    .line 163
    .line 164
    move-result-wide v2

    .line 165
    iget-object v4, p0, Lcom/byazt/zd/c$2$4;->ve:Lcom/byazt/zd/c$2;

    .line 166
    .line 167
    iget-object v4, v4, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 168
    .line 169
    invoke-static {v4}, Lcom/byazt/zd/c;->gu(Lcom/byazt/zd/c;)J

    .line 170
    .line 171
    .line 172
    move-result-wide v4

    .line 173
    iget-object v6, p0, Lcom/byazt/zd/c$2$4;->ve:Lcom/byazt/zd/c$2;

    .line 174
    .line 175
    iget-object v6, v6, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 176
    .line 177
    iget-wide v6, v6, Lcom/byazt/zd/c;->p:J

    .line 178
    .line 179
    invoke-static {v4, v5, v6, v7}, Lcom/byazt/vv/c;->c(JJ)I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    invoke-interface {v1, v2, v3, v4}, Lcom/byazt/dh/ve$c;->tt(JI)V

    .line 184
    .line 185
    .line 186
    :cond_3
    iget-object v1, p0, Lcom/byazt/zd/c$2$4;->ve:Lcom/byazt/zd/c$2;

    .line 187
    .line 188
    iget-object v1, v1, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 189
    .line 190
    invoke-static {v1}, Lcom/byazt/zd/c;->tt(Lcom/byazt/zd/c;)Lcom/byazt/zd/c$c;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    if-eqz v1, :cond_4

    .line 195
    .line 196
    iget-object v1, p0, Lcom/byazt/zd/c$2$4;->ve:Lcom/byazt/zd/c$2;

    .line 197
    .line 198
    iget-object v1, v1, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 199
    .line 200
    invoke-static {v1}, Lcom/byazt/zd/c;->tt(Lcom/byazt/zd/c;)Lcom/byazt/zd/c$c;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    iget-object v2, p0, Lcom/byazt/zd/c$2$4;->c:Lcom/byazt/fk/ve;

    .line 205
    .line 206
    invoke-interface {v2}, Lcom/byazt/fk/ve;->getMsg()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-interface {v1, v0, v2}, Lcom/byazt/zd/c$c;->c(ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_4
    return-void
.end method
