.class Lcom/papa/sim/statistic/t$t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->x2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Lcom/papa/sim/statistic/Ext;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Lcom/papa/sim/statistic/t;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/t$t1;->m:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/t$t1;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/t$t1;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/papa/sim/statistic/t$t1;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/papa/sim/statistic/t$t1;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/papa/sim/statistic/t$t1;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/papa/sim/statistic/t$t1;->g:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/papa/sim/statistic/t$t1;->h:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/papa/sim/statistic/t$t1;->i:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p10, p0, Lcom/papa/sim/statistic/t$t1;->j:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p11, p0, Lcom/papa/sim/statistic/t$t1;->k:Lcom/papa/sim/statistic/Ext;

    .line 22
    .line 23
    iput-object p12, p0, Lcom/papa/sim/statistic/t$t1;->l:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lcom/papa/sim/statistic/Event;->visitGamePage:Lcom/papa/sim/statistic/Event;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/papa/sim/statistic/t$t1;->b:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    const-string v3, ""

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/papa/sim/statistic/t$t1;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object v3, p0, Lcom/papa/sim/statistic/t$t1;->b:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/papa/sim/statistic/t$t1;->c:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const-string v3, "20"

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    sget-object v2, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    iget-object v2, p0, Lcom/papa/sim/statistic/t$t1;->d:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/papa/sim/statistic/t$t1;->c:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/papa/sim/statistic/t$t1;->e:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 105
    .line 106
    .line 107
    iget-object v2, p0, Lcom/papa/sim/statistic/t$t1;->f:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lcom/papa/sim/statistic/t$t1;->f:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setRecPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 115
    .line 116
    .line 117
    iget-object v2, p0, Lcom/papa/sim/statistic/t$t1;->g:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 120
    .line 121
    .line 122
    iget-object v2, p0, Lcom/papa/sim/statistic/t$t1;->h:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setReMarks1(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v2, p0, Lcom/papa/sim/statistic/t$t1;->i:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setKeyWord(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Lcom/papa/sim/statistic/t$t1;->j:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setDataFlag(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/papa/sim/statistic/t$t1;->k:Lcom/papa/sim/statistic/Ext;

    .line 138
    .line 139
    if-eqz v1, :cond_2

    .line 140
    .line 141
    iget-object v1, p0, Lcom/papa/sim/statistic/t$t1;->m:Lcom/papa/sim/statistic/t;

    .line 142
    .line 143
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iget-object v3, p0, Lcom/papa/sim/statistic/t$t1;->k:Lcom/papa/sim/statistic/Ext;

    .line 152
    .line 153
    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/s;->v0(Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Ext;)V

    .line 154
    .line 155
    .line 156
    :cond_2
    new-instance v1, Lcom/papa/sim/statistic/Data;

    .line 157
    .line 158
    invoke-direct {v1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 159
    .line 160
    .line 161
    iget-object v2, p0, Lcom/papa/sim/statistic/t$t1;->f:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object v2, p0, Lcom/papa/sim/statistic/t$t1;->l:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 172
    .line 173
    .line 174
    :try_start_1
    iget-object v1, p0, Lcom/papa/sim/statistic/t$t1;->d:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_3

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    iget-object v2, p0, Lcom/papa/sim/statistic/t$t1;->d:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :catch_1
    move-exception v1

    .line 193
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 194
    .line 195
    .line 196
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/papa/sim/statistic/t$t1;->m:Lcom/papa/sim/statistic/t;

    .line 197
    .line 198
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    sget-object v2, Lcom/papa/sim/statistic/Event;->visitGamePage:Lcom/papa/sim/statistic/Event;

    .line 203
    .line 204
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/s;->B(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/StatRequest;)V

    .line 205
    .line 206
    .line 207
    return-void
.end method
