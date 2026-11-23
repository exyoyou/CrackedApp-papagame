.class public abstract Lcom/alibaba/fastjson/parser/deserializer/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/alibaba/fastjson/util/e;

.field protected final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/util/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->b:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->a:Lcom/alibaba/fastjson/util/e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->a:Lcom/alibaba/fastjson/util/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/e;->i()Ljava/lang/reflect/Field;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->a:Lcom/alibaba/fastjson/util/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()Lcom/alibaba/fastjson/util/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->a:Lcom/alibaba/fastjson/util/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->a:Lcom/alibaba/fastjson/util/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/e;->k()Ljava/lang/reflect/Type;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public f()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->a:Lcom/alibaba/fastjson/util/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/e;->p()Ljava/lang/reflect/Method;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public abstract g(Lcom/alibaba/fastjson/parser/c;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/c;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public h(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/r;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public i(Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/r;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->a:Lcom/alibaba/fastjson/util/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/e;->p()Ljava/lang/reflect/Method;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "set property error, "

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->a:Lcom/alibaba/fastjson/util/e;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/e;->r()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_4

    .line 19
    .line 20
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->a:Lcom/alibaba/fastjson/util/e;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-class v4, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    if-ne v2, v4, :cond_0

    .line 29
    .line 30
    new-array v2, v3, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->a:Lcom/alibaba/fastjson/util/e;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    .line 58
    .line 59
    if-ne v2, v4, :cond_1

    .line 60
    .line 61
    new-array v2, v3, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 68
    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->a:Lcom/alibaba/fastjson/util/e;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const-class v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    .line 89
    if-ne v2, v4, :cond_2

    .line 90
    .line 91
    new-array v2, v3, [Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    const-class v2, Ljava/util/Map;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_3

    .line 122
    .line 123
    new-array v2, v3, [Ljava/lang/Object;

    .line 124
    .line 125
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Ljava/util/Map;

    .line 130
    .line 131
    if-eqz p1, :cond_5

    .line 132
    .line 133
    check-cast p2, Ljava/util/Map;

    .line 134
    .line 135
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_3
    new-array v2, v3, [Ljava/lang/Object;

    .line 140
    .line 141
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Ljava/util/Collection;

    .line 146
    .line 147
    if-eqz p1, :cond_5

    .line 148
    .line 149
    check-cast p2, Ljava/util/Collection;

    .line 150
    .line 151
    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_4
    const/4 v2, 0x1

    .line 156
    new-array v2, v2, [Ljava/lang/Object;

    .line 157
    .line 158
    aput-object p2, v2, v3

    .line 159
    .line 160
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    .line 163
    :cond_5
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception p1

    .line 165
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 166
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->a:Lcom/alibaba/fastjson/util/e;

    .line 176
    .line 177
    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    throw p2

    .line 192
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->a:Lcom/alibaba/fastjson/util/e;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/e;->i()Ljava/lang/reflect/Field;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    if-eqz v0, :cond_7

    .line 199
    .line 200
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :catch_1
    move-exception p1

    .line 205
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 206
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->a:Lcom/alibaba/fastjson/util/e;

    .line 216
    .line 217
    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    .line 230
    .line 231
    throw p2

    .line 232
    :cond_7
    :goto_1
    return-void
.end method

.method public k(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/r;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public l(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/r;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
