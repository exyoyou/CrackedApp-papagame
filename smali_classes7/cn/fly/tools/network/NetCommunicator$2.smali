.class Lcn/fly/tools/network/NetCommunicator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tools/network/HttpResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/network/NetCommunicator;->a([B[Ljava/lang/String;Z)Lcn/fly/tools/network/HttpResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:[B

.field final synthetic d:Lcn/fly/tools/network/NetCommunicator;


# direct methods
.method constructor <init>(Lcn/fly/tools/network/NetCommunicator;Z[Ljava/lang/String;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/network/NetCommunicator$2;->d:Lcn/fly/tools/network/NetCommunicator;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcn/fly/tools/network/NetCommunicator$2;->a:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcn/fly/tools/network/NetCommunicator$2;->b:[Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcn/fly/tools/network/NetCommunicator$2;->c:[B

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onResponse(Lcn/fly/tools/network/HttpConnection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcn/fly/tools/network/HttpConnection;->getResponseCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    const/16 v3, 0xc8

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    if-ne v0, v3, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-interface {p1}, Lcn/fly/tools/network/HttpConnection;->getInputStream()Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p1}, Lcn/fly/tools/network/HttpConnection;->getErrorStream()Ljava/io/InputStream;

    .line 19
    .line 20
    .line 21
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 22
    :goto_0
    :try_start_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 23
    .line 24
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    .line 26
    .line 27
    const/16 v5, 0x400

    .line 28
    .line 29
    :try_start_2
    new-array v5, v5, [B

    .line 30
    .line 31
    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    :goto_1
    const/4 v9, -0x1

    .line 36
    if-eq v8, v9, :cond_1

    .line 37
    .line 38
    invoke-virtual {v7, v5, v4, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 47
    .line 48
    .line 49
    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    const-string v8, "utf-8"

    .line 51
    .line 52
    if-ne v0, v3, :cond_4

    .line 53
    .line 54
    :try_start_3
    iget-boolean v3, p0, Lcn/fly/tools/network/NetCommunicator$2;->a:Z

    .line 55
    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    iget-object v3, p0, Lcn/fly/tools/network/NetCommunicator$2;->d:Lcn/fly/tools/network/NetCommunicator;

    .line 59
    .line 60
    invoke-static {v3, p1}, Lcn/fly/tools/network/NetCommunicator;->a(Lcn/fly/tools/network/NetCommunicator;Lcn/fly/tools/network/HttpConnection;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v8

    .line 64
    const-wide/16 v10, -0x1

    .line 65
    .line 66
    cmp-long p1, v8, v10

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    array-length p1, v5

    .line 71
    int-to-long v10, p1

    .line 72
    cmp-long p1, v8, v10

    .line 73
    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    iget-object p1, p0, Lcn/fly/tools/network/NetCommunicator$2;->b:[Ljava/lang/String;

    .line 77
    .line 78
    iget-object v0, p0, Lcn/fly/tools/network/NetCommunicator$2;->d:Lcn/fly/tools/network/NetCommunicator;

    .line 79
    .line 80
    iget-object v3, p0, Lcn/fly/tools/network/NetCommunicator$2;->c:[B

    .line 81
    .line 82
    invoke-static {v0, v3, v5}, Lcn/fly/tools/network/NetCommunicator;->a(Lcn/fly/tools/network/NetCommunicator;[B[B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    aput-object v0, p1, v4

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v3, "010ghhi]dk[hchGcfeh"

    .line 95
    .line 96
    invoke-static {v3}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    const-string v0, "006Keh6hch3cfeh"

    .line 108
    .line 109
    invoke-static {v0}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const/4 v3, -0x2

    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    const-string v0, "005e>cicicjci"

    .line 122
    .line 123
    invoke-static {v0}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v3, "Illegal content length"

    .line 128
    .line 129
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    new-instance v0, Lcn/fly/tools/network/NetCommunicator$NetworkError;

    .line 133
    .line 134
    invoke-static {p1}, Lcn/fly/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-direct {v0, p1}, Lcn/fly/tools/network/NetCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :cond_3
    iget-object p1, p0, Lcn/fly/tools/network/NetCommunicator$2;->b:[Ljava/lang/String;

    .line 143
    .line 144
    new-instance v0, Ljava/lang/String;

    .line 145
    .line 146
    invoke-direct {v0, v5, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    aput-object v0, p1, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    .line 151
    :goto_2
    new-array p1, v2, [Ljava/io/Closeable;

    .line 152
    .line 153
    aput-object v7, p1, v4

    .line 154
    .line 155
    aput-object v6, p1, v1

    .line 156
    .line 157
    invoke-static {p1}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_4
    :try_start_4
    new-instance p1, Ljava/lang/String;

    .line 162
    .line 163
    invoke-direct {p1, v5, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {p1}, Lcn/fly/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    const-string v3, "010ghhiHdk@hchCcfeh"

    .line 171
    .line 172
    invoke-static {v3}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    new-instance v0, Lcn/fly/tools/network/NetCommunicator$NetworkError;

    .line 184
    .line 185
    invoke-static {p1}, Lcn/fly/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-direct {v0, p1}, Lcn/fly/tools/network/NetCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 193
    :catchall_0
    move-exception p1

    .line 194
    move-object v5, v7

    .line 195
    goto :goto_3

    .line 196
    :catchall_1
    move-exception p1

    .line 197
    goto :goto_3

    .line 198
    :catchall_2
    move-exception p1

    .line 199
    move-object v6, v5

    .line 200
    :goto_3
    new-array v0, v2, [Ljava/io/Closeable;

    .line 201
    .line 202
    aput-object v5, v0, v4

    .line 203
    .line 204
    aput-object v6, v0, v1

    .line 205
    .line 206
    invoke-static {v0}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 207
    .line 208
    .line 209
    throw p1
.end method
