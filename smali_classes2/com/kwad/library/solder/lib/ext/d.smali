.class public final Lcom/kwad/library/solder/lib/ext/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/library/solder/lib/ext/d$d;,
        Lcom/kwad/library/solder/lib/ext/d$c;,
        Lcom/kwad/library/solder/lib/ext/d$b;,
        Lcom/kwad/library/solder/lib/ext/d$a;,
        Lcom/kwad/library/solder/lib/ext/d$e;
    }
.end annotation


# direct methods
.method public static declared-synchronized c(Ljava/lang/ClassLoader;Ljava/io/File;)V
    .locals 8

    .line 1
    const-class v0, Lcom/kwad/library/solder/lib/ext/d;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v4, 0x19

    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    if-ne v3, v4, :cond_1

    .line 22
    .line 23
    invoke-static {}, Lb2/a;->a()I

    .line 24
    .line 25
    .line 26
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 27
    if-nez v6, :cond_2

    .line 28
    .line 29
    :cond_1
    if-le v3, v4, :cond_3

    .line 30
    .line 31
    :cond_2
    :try_start_1
    invoke-static {p0, p1}, Lcom/kwad/library/solder/lib/ext/d$d;->h(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v3

    .line 37
    :try_start_2
    const-string v4, "Sodler.ShareLibraryLoader"

    .line 38
    .line 39
    const-string v6, "installNativeLibraryPath, v25 fail, sdk: %d, error: %s, try to fallback to V23"

    .line 40
    .line 41
    new-array v5, v5, [Ljava/lang/Object;

    .line 42
    .line 43
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    aput-object v7, v5, v1

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    aput-object v1, v5, v2

    .line 56
    .line 57
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v4, v1}, Lcom/kwad/library/solder/lib/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p1}, Lcom/kwad/library/solder/lib/ext/d$b;->f(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 65
    .line 66
    .line 67
    monitor-exit v0

    .line 68
    return-void

    .line 69
    :cond_3
    const/16 v4, 0x18

    .line 70
    .line 71
    if-ne v3, v4, :cond_4

    .line 72
    .line 73
    :try_start_3
    invoke-static {p0, p1}, Lcom/kwad/library/solder/lib/ext/d$c;->g(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :catchall_1
    move-exception v3

    .line 79
    :try_start_4
    const-string v4, "Sodler.ShareLibraryLoader"

    .line 80
    .line 81
    const-string v6, "installNativeLibraryPath, v23 fail, sdk: %d, error: %s, try to fallback to V14"

    .line 82
    .line 83
    new-array v5, v5, [Ljava/lang/Object;

    .line 84
    .line 85
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    .line 87
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    aput-object v7, v5, v1

    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    aput-object v1, v5, v2

    .line 98
    .line 99
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v4, v1}, Lcom/kwad/library/solder/lib/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 104
    .line 105
    .line 106
    :try_start_5
    invoke-static {p0, p1}, Lcom/kwad/library/solder/lib/ext/d$a;->e(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catchall_2
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 111
    :cond_4
    const/16 v4, 0x17

    .line 112
    .line 113
    if-lt v3, v4, :cond_5

    .line 114
    .line 115
    :try_start_7
    invoke-static {p0, p1}, Lcom/kwad/library/solder/lib/ext/d$b;->f(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 116
    .line 117
    .line 118
    monitor-exit v0

    .line 119
    return-void

    .line 120
    :catchall_3
    move-exception v3

    .line 121
    :try_start_8
    const-string v4, "Sodler.ShareLibraryLoader"

    .line 122
    .line 123
    const-string v6, "installNativeLibraryPath, v23 fail, sdk: %d, error: %s, try to fallback to V14"

    .line 124
    .line 125
    new-array v5, v5, [Ljava/lang/Object;

    .line 126
    .line 127
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 128
    .line 129
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    aput-object v7, v5, v1

    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    aput-object v1, v5, v2

    .line 140
    .line 141
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {v4, v1}, Lcom/kwad/library/solder/lib/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 146
    .line 147
    .line 148
    :try_start_9
    invoke-static {p0, p1}, Lcom/kwad/library/solder/lib/ext/d$a;->e(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 149
    .line 150
    .line 151
    :goto_0
    monitor-exit v0

    .line 152
    return-void

    .line 153
    :catchall_4
    :try_start_a
    throw v3

    .line 154
    :cond_5
    invoke-static {p0, p1}, Lcom/kwad/library/solder/lib/ext/d$a;->e(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 155
    .line 156
    .line 157
    monitor-exit v0

    .line 158
    return-void

    .line 159
    :cond_6
    :goto_1
    :try_start_b
    const-string p0, "Sodler.ShareLibraryLoader"

    .line 160
    .line 161
    const-string v3, "installNativeLibraryPath, folder %s is illegal"

    .line 162
    .line 163
    new-array v2, v2, [Ljava/lang/Object;

    .line 164
    .line 165
    aput-object p1, v2, v1

    .line 166
    .line 167
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {p0, p1}, Lcom/kwad/library/solder/lib/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 172
    .line 173
    .line 174
    monitor-exit v0

    .line 175
    return-void

    .line 176
    :catchall_5
    move-exception p0

    .line 177
    monitor-exit v0

    .line 178
    throw p0
.end method
