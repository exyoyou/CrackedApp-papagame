.class public Lcn/fly/commons/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/fly/commons/s;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lcn/fly/commons/s;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lcn/fly/commons/s;->d()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0
.end method

.method static b()Z
    .locals 7

    .line 1
    const-string v0, "028nTfe-fkfni+fm^efink(fh%ln4ghflfkfeCf@jmhkChMflff%h*fl"

    .line 2
    .line 3
    invoke-static {v0}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "031n1fe fkfni:fm1efink+fhLlnMflHhWfnghflfkfe6fZfnhkZhBflff0h\'fl"

    .line 8
    .line 9
    invoke-static {v1}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "030n4feSfkfniFfm5efinkQfhZln;ghflfkfeGf[jm$fTgl:hgk1fnhkfm"

    .line 14
    .line 15
    invoke-static {v2}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "034nJfe:fkfni+fm:efinkLfh<lniSfkhhghflfkfeJfEjmgl$f>fegl_hk fnhkfm"

    .line 20
    .line 21
    invoke-static {v3}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    :goto_0
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x4

    .line 33
    if-ge v2, v4, :cond_1

    .line 34
    .line 35
    aget-object v4, v0, v2

    .line 36
    .line 37
    new-instance v5, Ljava/io/File;

    .line 38
    .line 39
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    return v3

    .line 49
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 53
    .line 54
    const-string v2, "015nCfe^fkfni3fmGefink\'fhIl"

    .line 55
    .line 56
    invoke-static {v2}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_5

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    return v1

    .line 83
    :cond_3
    array-length v2, v0

    .line 84
    const/4 v4, 0x0

    .line 85
    :goto_1
    if-ge v4, v2, :cond_6

    .line 86
    .line 87
    aget-object v5, v0, v4

    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    const-string v6, "012YghflfkfeJfPjmglNf;fegl6hk"

    .line 94
    .line 95
    invoke-static {v6}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    if-eqz v5, :cond_4

    .line 104
    .line 105
    return v3

    .line 106
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    :goto_2
    return v1

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 116
    .line 117
    .line 118
    :cond_6
    return v1
.end method

.method static c()Z
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    new-instance v5, Ljava/io/File;

    .line 10
    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v7, "006nlIflfmAen"

    .line 17
    .line 18
    invoke-static {v7}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, "005nQfhZfl4hk"

    .line 29
    .line 30
    invoke-static {v4}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    const-wide/16 v8, 0x0

    .line 55
    .line 56
    cmp-long v4, v6, v8

    .line 57
    .line 58
    if-lez v4, :cond_2

    .line 59
    .line 60
    new-instance v4, Ljava/io/FileInputStream;

    .line 61
    .line 62
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 63
    .line 64
    .line 65
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    .line 66
    .line 67
    new-instance v6, Ljava/io/InputStreamReader;

    .line 68
    .line 69
    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    .line 74
    .line 75
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    const-string v6, "005UghflfkfeYf"

    .line 82
    .line 83
    invoke-static {v6}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    if-eqz v3, :cond_0

    .line 92
    .line 93
    new-array v0, v0, [Ljava/io/Closeable;

    .line 94
    .line 95
    aput-object v5, v0, v2

    .line 96
    .line 97
    aput-object v4, v0, v1

    .line 98
    .line 99
    invoke-static {v0}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 100
    .line 101
    .line 102
    return v1

    .line 103
    :cond_1
    move-object v3, v5

    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v3

    .line 106
    goto :goto_1

    .line 107
    :catch_0
    move-object v3, v5

    .line 108
    goto :goto_2

    .line 109
    :catchall_1
    move-exception v5

    .line 110
    move-object v10, v5

    .line 111
    move-object v5, v3

    .line 112
    move-object v3, v10

    .line 113
    goto :goto_1

    .line 114
    :cond_2
    move-object v4, v3

    .line 115
    :goto_0
    new-array v0, v0, [Ljava/io/Closeable;

    .line 116
    .line 117
    aput-object v3, v0, v2

    .line 118
    .line 119
    aput-object v4, v0, v1

    .line 120
    .line 121
    invoke-static {v0}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 122
    .line 123
    .line 124
    return v2

    .line 125
    :catchall_2
    move-exception v4

    .line 126
    move-object v5, v3

    .line 127
    move-object v3, v4

    .line 128
    move-object v4, v5

    .line 129
    :goto_1
    new-array v0, v0, [Ljava/io/Closeable;

    .line 130
    .line 131
    aput-object v5, v0, v2

    .line 132
    .line 133
    aput-object v4, v0, v1

    .line 134
    .line 135
    invoke-static {v0}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 136
    .line 137
    .line 138
    throw v3

    .line 139
    :catch_1
    move-object v4, v3

    .line 140
    :catch_2
    :goto_2
    new-array v0, v0, [Ljava/io/Closeable;

    .line 141
    .line 142
    aput-object v3, v0, v2

    .line 143
    .line 144
    aput-object v4, v0, v1

    .line 145
    .line 146
    invoke-static {v0}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 147
    .line 148
    .line 149
    return v2
.end method

.method static d()Z
    .locals 5

    .line 1
    const/16 v0, 0x69a2

    .line 2
    .line 3
    const/16 v1, 0x69a3

    .line 4
    .line 5
    filled-new-array {v0, v1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    aget v0, v0, v1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    new-instance v3, Ljava/net/Socket;

    .line 14
    .line 15
    const-string v4, "009i?fmHefij]fmhk1k"

    .line 16
    .line 17
    invoke-static {v4}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-direct {v3, v4, v0}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    return v0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    move-object v2, v3

    .line 34
    goto :goto_0

    .line 35
    :catch_1
    nop

    .line 36
    move-object v2, v3

    .line 37
    goto :goto_1

    .line 38
    :catchall_1
    move-exception v0

    .line 39
    :goto_0
    if-eqz v2, :cond_0

    .line 40
    .line 41
    :try_start_3
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 42
    .line 43
    .line 44
    :catch_2
    :cond_0
    throw v0

    .line 45
    :catch_3
    nop

    .line 46
    :goto_1
    if-eqz v2, :cond_1

    .line 47
    .line 48
    :try_start_4
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 49
    .line 50
    .line 51
    :catch_4
    :cond_1
    return v1
.end method
