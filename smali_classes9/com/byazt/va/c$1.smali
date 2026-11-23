.class public Lcom/byazt/va/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gqp/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x74,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/va/c;->c(Lcom/byazt/mh/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/mh/c;

.field public final synthetic tt:Lcom/byazt/va/c;


# direct methods
.method public constructor <init>(Lcom/byazt/va/c;Lcom/byazt/mh/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/va/c$1;->tt:Lcom/byazt/va/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/va/c$1;->c:Lcom/byazt/mh/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Lcom/byazt/gqp/tt;Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/va/c$1;->c:Lcom/byazt/mh/c;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/va/c$1;->tt:Lcom/byazt/va/c;

    .line 6
    .line 7
    invoke-virtual {p1, v0, p2}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/byazt/gqp/tt;Lcom/byazt/gqp/m;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/byazt/va/c$1;->c:Lcom/byazt/mh/c;

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    new-instance p1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_5

    .line 11
    .line 12
    new-instance v10, Lcom/byazt/hm/tt;

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->uj()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->ve()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->n()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->tt()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->c()J

    .line 32
    .line 33
    .line 34
    move-result-wide v8

    .line 35
    move-object v0, v10

    .line 36
    move-object v4, p1

    .line 37
    invoke-direct/range {v0 .. v9}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->uj()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    :try_start_0
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->sp()Lcom/byazt/gqp/a;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    :goto_0
    invoke-virtual {v1}, Lcom/byazt/gqp/a;->c()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-ge v2, v3, :cond_0

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/byazt/gqp/a;->c(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v1, v2}, Lcom/byazt/gqp/a;->tt(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/byazt/gqp/nu;->c()J

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    new-array v2, v1, [B

    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Lcom/byazt/gqp/nu;->ve()Ljava/io/InputStream;

    .line 97
    .line 98
    .line 99
    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 100
    :try_start_1
    invoke-virtual {v11, v2}, Ljava/io/InputStream;->read([B)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-ne v0, v1, :cond_1

    .line 105
    .line 106
    invoke-virtual {v10, v2}, Lcom/byazt/hm/tt;->c([B)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    new-instance v10, Lcom/byazt/hm/tt;

    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->ve()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    const-string v3, "Byte opt fail"

    .line 118
    .line 119
    const/4 v5, 0x0

    .line 120
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->tt()J

    .line 121
    .line 122
    .line 123
    move-result-wide v6

    .line 124
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->c()J

    .line 125
    .line 126
    .line 127
    move-result-wide v8

    .line 128
    move-object v0, v10

    .line 129
    move-object v4, p1

    .line 130
    invoke-direct/range {v0 .. v9}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 131
    .line 132
    .line 133
    :goto_1
    iget-object p1, p0, Lcom/byazt/va/c$1;->c:Lcom/byazt/mh/c;

    .line 134
    .line 135
    iget-object p2, p0, Lcom/byazt/va/c$1;->tt:Lcom/byazt/va/c;

    .line 136
    .line 137
    invoke-virtual {p1, p2, v10}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    .line 139
    .line 140
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    .line 142
    .line 143
    :catchall_0
    return-void

    .line 144
    :catchall_1
    move-exception p1

    .line 145
    move-object v0, v11

    .line 146
    goto :goto_2

    .line 147
    :catchall_2
    move-exception p1

    .line 148
    :goto_2
    :try_start_3
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    iget-object p2, p0, Lcom/byazt/va/c$1;->c:Lcom/byazt/mh/c;

    .line 152
    .line 153
    iget-object v1, p0, Lcom/byazt/va/c$1;->tt:Lcom/byazt/va/c;

    .line 154
    .line 155
    new-instance v2, Ljava/io/IOException;

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, v1, v2}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 165
    .line 166
    .line 167
    if-eqz v0, :cond_2

    .line 168
    .line 169
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 170
    .line 171
    .line 172
    nop

    .line 173
    :catchall_3
    :cond_2
    return-void

    .line 174
    :catchall_4
    move-exception p1

    .line 175
    if-eqz v0, :cond_3

    .line 176
    .line 177
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 178
    .line 179
    .line 180
    :catchall_5
    :cond_3
    throw p1

    .line 181
    :cond_4
    iget-object p1, p0, Lcom/byazt/va/c$1;->c:Lcom/byazt/mh/c;

    .line 182
    .line 183
    iget-object p2, p0, Lcom/byazt/va/c$1;->tt:Lcom/byazt/va/c;

    .line 184
    .line 185
    invoke-virtual {p1, p2, v10}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V

    .line 186
    .line 187
    .line 188
    :cond_5
    return-void
.end method
