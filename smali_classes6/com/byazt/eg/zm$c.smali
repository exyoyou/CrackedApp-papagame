.class public final Lcom/byazt/eg/zm$c;
.super Lcom/byazt/kh/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10,
        0x15
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/eg/zm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/eg/zm;

.field public final ve:Lcom/byazt/eg/a;


# direct methods
.method public constructor <init>(Lcom/byazt/eg/zm;Lcom/byazt/eg/a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/byazt/eg/zm$c;->c:Lcom/byazt/eg/zm;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1}, Lcom/byazt/eg/zm;->x()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    aput-object p1, v0, v1

    .line 12
    .line 13
    const-string p1, "OkHttp %s"

    .line 14
    .line 15
    invoke-direct {p0, p1, v0}, Lcom/byazt/kh/tt;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/byazt/eg/zm$c;->ve:Lcom/byazt/eg/a;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/zm$c;->c:Lcom/byazt/eg/zm;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/eg/zm;->ve:Lcom/byazt/eg/yv;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/eg/yv;->c()Lcom/byazt/eg/my;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/byazt/eg/my;->sp()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/zm$c;->c:Lcom/byazt/eg/zm;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/eg/zm;->ve:Lcom/byazt/eg/yv;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/byazt/eg/yv;->a:Lcom/byazt/eg/md;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/eg/md;->sl()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byazt/eg/zm$c;->c:Lcom/byazt/eg/zm;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/byazt/eg/zm;->ve:Lcom/byazt/eg/yv;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Lcom/byazt/eg/yv;->a:Lcom/byazt/eg/md;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/byazt/eg/md;->c()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/byazt/eg/zm$c;->c:Lcom/byazt/eg/zm;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/byazt/eg/zm;->i()Lcom/byazt/eg/h;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/byazt/eg/zm$c;->c:Lcom/byazt/eg/zm;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/byazt/eg/zm;->tt:Lcom/byazt/yx/da;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/byazt/yx/da;->tt()Z

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    :try_start_1
    iget-object v0, p0, Lcom/byazt/eg/zm$c;->ve:Lcom/byazt/eg/a;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/byazt/eg/zm$c;->c:Lcom/byazt/eg/zm;

    .line 35
    .line 36
    new-instance v4, Ljava/io/IOException;

    .line 37
    .line 38
    const-string v5, "Canceled"

    .line 39
    .line 40
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v3, v4}, Lcom/byazt/eg/a;->c(Lcom/byazt/eg/n;Ljava/io/IOException;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/byazt/eg/zm$c;->ve:Lcom/byazt/eg/a;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/byazt/eg/zm$c;->c:Lcom/byazt/eg/zm;

    .line 50
    .line 51
    invoke-interface {v0, v3, v1}, Lcom/byazt/eg/a;->c(Lcom/byazt/eg/n;Lcom/byazt/eg/h;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget v0, v1, Lcom/byazt/eg/h;->ve:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    :goto_1
    iget-object v0, p0, Lcom/byazt/eg/zm$c;->c:Lcom/byazt/eg/zm;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/byazt/eg/zm;->c:Lcom/byazt/eg/gu;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/byazt/eg/gu;->my()Lcom/byazt/eg/yp;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, p0}, Lcom/byazt/eg/yp;->tt(Lcom/byazt/eg/zm$c;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/byazt/eg/h;->uj:Ljava/lang/String;

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    const/4 v0, 0x1

    .line 80
    goto :goto_2

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto :goto_3

    .line 83
    :catch_1
    move-exception v0

    .line 84
    :try_start_3
    iget-object v1, p0, Lcom/byazt/eg/zm$c;->c:Lcom/byazt/eg/zm;

    .line 85
    .line 86
    invoke-static {v1}, Lcom/byazt/eg/zm;->c(Lcom/byazt/eg/zm;)Lcom/byazt/eg/m;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/byazt/eg/zm$c;->c:Lcom/byazt/eg/zm;

    .line 91
    .line 92
    new-instance v3, Ljava/io/IOException;

    .line 93
    .line 94
    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2, v3}, Lcom/byazt/eg/m;->c(Lcom/byazt/eg/n;Ljava/io/IOException;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/byazt/eg/zm$c;->ve:Lcom/byazt/eg/a;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/byazt/eg/zm$c;->c:Lcom/byazt/eg/zm;

    .line 103
    .line 104
    new-instance v3, Ljava/io/IOException;

    .line 105
    .line 106
    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v1, v2, v3}, Lcom/byazt/eg/a;->c(Lcom/byazt/eg/n;Ljava/io/IOException;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catch_2
    move-exception v1

    .line 114
    :goto_2
    if-eqz v0, :cond_3

    .line 115
    .line 116
    invoke-static {}, Lcom/byazt/xb/n;->tt()Lcom/byazt/xb/n;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v3, "Callback failure for "

    .line 123
    .line 124
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v3, p0, Lcom/byazt/eg/zm$c;->c:Lcom/byazt/eg/zm;

    .line 128
    .line 129
    invoke-virtual {v3}, Lcom/byazt/eg/zm;->sp()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    const/4 v3, 0x4

    .line 141
    invoke-virtual {v0, v3, v2, v1}, Lcom/byazt/xb/n;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/byazt/eg/zm$c;->c:Lcom/byazt/eg/zm;

    .line 146
    .line 147
    invoke-static {v0}, Lcom/byazt/eg/zm;->c(Lcom/byazt/eg/zm;)Lcom/byazt/eg/m;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-object v2, p0, Lcom/byazt/eg/zm$c;->c:Lcom/byazt/eg/zm;

    .line 152
    .line 153
    invoke-virtual {v0, v2, v1}, Lcom/byazt/eg/m;->c(Lcom/byazt/eg/n;Ljava/io/IOException;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/byazt/eg/zm$c;->ve:Lcom/byazt/eg/a;

    .line 157
    .line 158
    iget-object v2, p0, Lcom/byazt/eg/zm$c;->c:Lcom/byazt/eg/zm;

    .line 159
    .line 160
    invoke-interface {v0, v2, v1}, Lcom/byazt/eg/a;->c(Lcom/byazt/eg/n;Ljava/io/IOException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :goto_3
    iget-object v1, p0, Lcom/byazt/eg/zm$c;->c:Lcom/byazt/eg/zm;

    .line 165
    .line 166
    iget-object v1, v1, Lcom/byazt/eg/zm;->c:Lcom/byazt/eg/gu;

    .line 167
    .line 168
    invoke-virtual {v1}, Lcom/byazt/eg/gu;->my()Lcom/byazt/eg/yp;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1, p0}, Lcom/byazt/eg/yp;->tt(Lcom/byazt/eg/zm$c;)V

    .line 173
    .line 174
    .line 175
    throw v0
.end method
