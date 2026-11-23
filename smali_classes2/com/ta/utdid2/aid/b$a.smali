.class Lcom/ta/utdid2/aid/b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/aid/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field b:Lorg/apache/http/client/methods/HttpPost;

.field c:Ljava/lang/String;

.field d:Le8/a;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field final synthetic h:Lcom/ta/utdid2/aid/b;


# direct methods
.method public constructor <init>(Lcom/ta/utdid2/aid/b;Lorg/apache/http/client/methods/HttpPost;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ta/utdid2/aid/b$a;->h:Lcom/ta/utdid2/aid/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/ta/utdid2/aid/b$a;->c:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/ta/utdid2/aid/b$a;->g:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/ta/utdid2/aid/b$a;->b:Lorg/apache/http/client/methods/HttpPost;

    return-void
.end method

.method public constructor <init>(Lcom/ta/utdid2/aid/b;Lorg/apache/http/client/methods/HttpPost;Le8/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/ta/utdid2/aid/b$a;->h:Lcom/ta/utdid2/aid/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string p1, ""

    .line 6
    iput-object p1, p0, Lcom/ta/utdid2/aid/b$a;->c:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/ta/utdid2/aid/b$a;->b:Lorg/apache/http/client/methods/HttpPost;

    .line 8
    iput-object p3, p0, Lcom/ta/utdid2/aid/b$a;->d:Le8/a;

    .line 9
    iput-object p4, p0, Lcom/ta/utdid2/aid/b$a;->e:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/ta/utdid2/aid/b$a;->f:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lcom/ta/utdid2/aid/b$a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/aid/b$a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/aid/b$a;->d:Le8/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    iget-object v2, p0, Lcom/ta/utdid2/aid/b$a;->e:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Le8/a;->a(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 13
    .line 14
    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/16 v2, 0x3ea

    .line 19
    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/ta/utdid2/aid/b$a;->b:Lorg/apache/http/client/methods/HttpPost;

    .line 21
    .line 22
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    iget-object v3, p0, Lcom/ta/utdid2/aid/b$a;->d:Le8/a;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iget-object v4, p0, Lcom/ta/utdid2/aid/b$a;->e:Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {v3, v2, v4}, Le8/a;->a(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-static {}, Lcom/ta/utdid2/aid/b;->a()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-object v0, v1

    .line 44
    :goto_0
    if-eqz v0, :cond_2

    .line 45
    .line 46
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    .line 47
    .line 48
    new-instance v4, Ljava/io/InputStreamReader;

    .line 49
    .line 50
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v5, "UTF-8"

    .line 59
    .line 60
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-direct {v4, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 68
    .line 69
    .line 70
    move-object v1, v3

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-static {}, Lcom/ta/utdid2/aid/b;->a()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catch_1
    move-exception v0

    .line 77
    iget-object v3, p0, Lcom/ta/utdid2/aid/b$a;->d:Le8/a;

    .line 78
    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    iget-object v4, p0, Lcom/ta/utdid2/aid/b$a;->e:Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {v3, v2, v4}, Le8/a;->a(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-static {}, Lcom/ta/utdid2/aid/b;->a()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    :goto_1
    if-eqz v1, :cond_5

    .line 93
    .line 94
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    sget-boolean v3, Lcom/ta/utdid2/android/utils/d;->b:Z

    .line 101
    .line 102
    if-eqz v3, :cond_4

    .line 103
    .line 104
    invoke-static {}, Lcom/ta/utdid2/aid/b;->a()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    :cond_4
    iput-object v0, p0, Lcom/ta/utdid2/aid/b$a;->c:Ljava/lang/String;

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catch_2
    move-exception v0

    .line 111
    goto :goto_3

    .line 112
    :cond_5
    invoke-static {}, Lcom/ta/utdid2/aid/b;->a()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :goto_3
    iget-object v3, p0, Lcom/ta/utdid2/aid/b$a;->d:Le8/a;

    .line 117
    .line 118
    if-eqz v3, :cond_6

    .line 119
    .line 120
    iget-object v4, p0, Lcom/ta/utdid2/aid/b$a;->e:Ljava/lang/String;

    .line 121
    .line 122
    invoke-interface {v3, v2, v4}, Le8/a;->a(ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_6
    invoke-static {}, Lcom/ta/utdid2/aid/b;->a()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    .line 132
    .line 133
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 134
    .line 135
    .line 136
    sget-boolean v0, Lcom/ta/utdid2/android/utils/d;->b:Z

    .line 137
    .line 138
    if-eqz v0, :cond_8

    .line 139
    .line 140
    invoke-static {}, Lcom/ta/utdid2/aid/b;->a()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 141
    .line 142
    .line 143
    goto :goto_5

    .line 144
    :catch_3
    move-exception v0

    .line 145
    invoke-static {}, Lcom/ta/utdid2/aid/b;->a()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/ta/utdid2/aid/b$a;->d:Le8/a;

    .line 152
    .line 153
    if-nez v0, :cond_9

    .line 154
    .line 155
    iget-object v0, p0, Lcom/ta/utdid2/aid/b$a;->h:Lcom/ta/utdid2/aid/b;

    .line 156
    .line 157
    invoke-static {v0}, Lcom/ta/utdid2/aid/b;->b(Lcom/ta/utdid2/aid/b;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    monitor-enter v0

    .line 162
    :try_start_4
    iget-object v1, p0, Lcom/ta/utdid2/aid/b$a;->h:Lcom/ta/utdid2/aid/b;

    .line 163
    .line 164
    invoke-static {v1}, Lcom/ta/utdid2/aid/b;->b(Lcom/ta/utdid2/aid/b;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 169
    .line 170
    .line 171
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 172
    return-void

    .line 173
    :catchall_0
    move-exception v1

    .line 174
    monitor-exit v0

    .line 175
    throw v1

    .line 176
    :cond_9
    iget-object v0, p0, Lcom/ta/utdid2/aid/b$a;->c:Ljava/lang/String;

    .line 177
    .line 178
    iget-object v1, p0, Lcom/ta/utdid2/aid/b$a;->e:Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {v0, v1}, Lcom/ta/utdid2/aid/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/ta/utdid2/aid/b$a;->d:Le8/a;

    .line 185
    .line 186
    const/16 v2, 0x3e9

    .line 187
    .line 188
    invoke-interface {v1, v2, v0}, Le8/a;->a(ILjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lcom/ta/utdid2/aid/b$a;->h:Lcom/ta/utdid2/aid/b;

    .line 192
    .line 193
    invoke-static {v1}, Lcom/ta/utdid2/aid/b;->d(Lcom/ta/utdid2/aid/b;)Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/ta/utdid2/aid/b$a;->f:Ljava/lang/String;

    .line 198
    .line 199
    iget-object v3, p0, Lcom/ta/utdid2/aid/b$a;->g:Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {v1, v2, v0, v3}, Lcom/ta/utdid2/aid/c;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    return-void
.end method
