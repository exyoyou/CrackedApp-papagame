.class public final Lcom/kwad/sdk/crash/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v0, 0x14

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-static {p0}, Lcom/kwad/sdk/crash/utils/d;->f([Ljava/lang/String;)Ljava/lang/Process;

    .line 10
    .line 11
    .line 12
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 13
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 17
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 21
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 22
    .line 23
    .line 24
    move-result-object v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 25
    :try_start_4
    new-instance v5, Ljava/io/BufferedReader;

    .line 26
    .line 27
    new-instance v6, Ljava/io/InputStreamReader;

    .line 28
    .line 29
    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 33
    .line 34
    .line 35
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-gez v6, :cond_0

    .line 46
    .line 47
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    .line 59
    .line 60
    .line 61
    move-result v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    invoke-static {v2}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v3}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v5}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 77
    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_1
    :try_start_6
    new-instance p1, Ljava/io/IOException;

    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v6, "Command line returned OS error code \'"

    .line 85
    .line 86
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v6, "\' for command "

    .line 97
    .line 98
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto/16 :goto_7

    .line 118
    .line 119
    :catch_0
    move-exception p1

    .line 120
    goto :goto_4

    .line 121
    :catchall_1
    move-exception p0

    .line 122
    move-object v5, v0

    .line 123
    goto :goto_7

    .line 124
    :catch_1
    move-exception p1

    .line 125
    move-object v5, v0

    .line 126
    goto :goto_4

    .line 127
    :catchall_2
    move-exception p0

    .line 128
    move-object v4, v0

    .line 129
    goto :goto_1

    .line 130
    :catch_2
    move-exception p1

    .line 131
    move-object v4, v0

    .line 132
    goto :goto_3

    .line 133
    :catchall_3
    move-exception p0

    .line 134
    move-object v3, v0

    .line 135
    move-object v4, v3

    .line 136
    :goto_1
    move-object v5, v4

    .line 137
    goto :goto_7

    .line 138
    :catch_3
    move-exception p1

    .line 139
    move-object v3, v0

    .line 140
    goto :goto_2

    .line 141
    :catchall_4
    move-exception p0

    .line 142
    move-object v3, v0

    .line 143
    goto :goto_5

    .line 144
    :catch_4
    move-exception p1

    .line 145
    move-object v2, v0

    .line 146
    move-object v3, v2

    .line 147
    :goto_2
    move-object v4, v3

    .line 148
    :goto_3
    move-object v5, v4

    .line 149
    :goto_4
    move-object v0, v1

    .line 150
    goto :goto_6

    .line 151
    :catchall_5
    move-exception p0

    .line 152
    move-object v1, v0

    .line 153
    move-object v3, v1

    .line 154
    :goto_5
    move-object v4, v3

    .line 155
    move-object v5, v4

    .line 156
    goto :goto_8

    .line 157
    :catch_5
    move-exception p1

    .line 158
    move-object v2, v0

    .line 159
    move-object v3, v2

    .line 160
    move-object v4, v3

    .line 161
    move-object v5, v4

    .line 162
    :goto_6
    :try_start_7
    new-instance v1, Ljava/io/IOException;

    .line 163
    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v7, "Command line threw an InterruptedException for command "

    .line 167
    .line 168
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-direct {v1, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 186
    :catchall_6
    move-exception p0

    .line 187
    move-object v1, v0

    .line 188
    :goto_7
    move-object v0, v2

    .line 189
    :goto_8
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 190
    .line 191
    .line 192
    invoke-static {v3}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 193
    .line 194
    .line 195
    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 196
    .line 197
    .line 198
    invoke-static {v5}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 199
    .line 200
    .line 201
    if-eqz v1, :cond_2

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 204
    .line 205
    .line 206
    :cond_2
    throw p0
.end method

.method private static f([Ljava/lang/String;)Ljava/lang/Process;
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
