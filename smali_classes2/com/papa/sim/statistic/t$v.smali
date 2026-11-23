.class Lcom/papa/sim/statistic/t$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->h1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/papa/sim/statistic/Ext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/papa/sim/statistic/Ext;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/papa/sim/statistic/Event;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:I

.field final synthetic j:Lcom/papa/sim/statistic/t;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/t;IILcom/papa/sim/statistic/Ext;Ljava/lang/String;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/t$v;->j:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa/sim/statistic/t$v;->b:I

    .line 4
    .line 5
    iput p3, p0, Lcom/papa/sim/statistic/t$v;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/papa/sim/statistic/t$v;->d:Lcom/papa/sim/statistic/Ext;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/papa/sim/statistic/t$v;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/papa/sim/statistic/t$v;->f:Lcom/papa/sim/statistic/Event;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/papa/sim/statistic/t$v;->g:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/papa/sim/statistic/t$v;->h:Ljava/lang/String;

    .line 16
    .line 17
    iput p9, p0, Lcom/papa/sim/statistic/t$v;->i:I

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    const-string v0, "recPosition"

    .line 2
    .line 3
    const-string v1, "_from_type"

    .line 4
    .line 5
    new-instance v7, Lcom/papa/sim/statistic/StatRequest;

    .line 6
    .line 7
    invoke-direct {v7}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget v3, p0, Lcom/papa/sim/statistic/t$v;->b:I

    .line 15
    .line 16
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget v3, p0, Lcom/papa/sim/statistic/t$v;->c:I

    .line 28
    .line 29
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/papa/sim/statistic/t$v;->d:Lcom/papa/sim/statistic/Ext;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    iget-object v2, p0, Lcom/papa/sim/statistic/t$v;->j:Lcom/papa/sim/statistic/t;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v4, p0, Lcom/papa/sim/statistic/t$v;->d:Lcom/papa/sim/statistic/Ext;

    .line 51
    .line 52
    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/s;->v0(Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Ext;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/papa/sim/statistic/t$v;->e:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/papa/sim/statistic/t$v;->e:Ljava/lang/String;

    .line 69
    .line 70
    const-class v4, Lcom/papa/sim/statistic/Ext;

    .line 71
    .line 72
    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/papa/sim/statistic/Ext;

    .line 77
    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    iget-object v3, p0, Lcom/papa/sim/statistic/t$v;->j:Lcom/papa/sim/statistic/t;

    .line 81
    .line 82
    invoke-static {v3}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v3, v4, v2}, Lcom/papa/sim/statistic/s;->v0(Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Ext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    :catch_0
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/papa/sim/statistic/t$v;->e:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_2

    .line 100
    .line 101
    new-instance v2, Lorg/json/JSONObject;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/papa/sim/statistic/t$v;->e:Ljava/lang/String;

    .line 104
    .line 105
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v3, "from"

    .line 109
    .line 110
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const-string v4, "position"

    .line 115
    .line 116
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    const-string v5, "location"

    .line 121
    .line 122
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v5, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v5, v4}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_2

    .line 144
    .line 145
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    if-eqz v1, :cond_2

    .line 150
    .line 151
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v3, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_2

    .line 170
    .line 171
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/Ext;->setRecPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :catch_1
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    .line 186
    .line 187
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/papa/sim/statistic/t$v;->j:Lcom/papa/sim/statistic/t;

    .line 188
    .line 189
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    iget-object v3, p0, Lcom/papa/sim/statistic/t$v;->f:Lcom/papa/sim/statistic/Event;

    .line 194
    .line 195
    iget-object v4, p0, Lcom/papa/sim/statistic/t$v;->g:Ljava/lang/String;

    .line 196
    .line 197
    iget-object v5, p0, Lcom/papa/sim/statistic/t$v;->h:Ljava/lang/String;

    .line 198
    .line 199
    iget v6, p0, Lcom/papa/sim/statistic/t$v;->i:I

    .line 200
    .line 201
    invoke-virtual/range {v2 .. v7}, Lcom/papa/sim/statistic/s;->m0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;ILcom/papa/sim/statistic/StatRequest;)V

    .line 202
    .line 203
    .line 204
    return-void
.end method
