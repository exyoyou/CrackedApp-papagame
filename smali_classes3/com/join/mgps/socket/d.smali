.class public Lcom/join/mgps/socket/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/socket/d$a;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String; = "d"


# instance fields
.field b:Ljava/io/DataOutputStream;

.field c:Ljava/io/BufferedInputStream;

.field d:Ljava/net/Socket;

.field e:Landroid/content/Context;

.field f:J

.field g:J

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field k:Lcom/join/mgps/socket/d$a;

.field l:Z

.field m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mSocket",
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/socket/d;->c:Ljava/io/BufferedInputStream;

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    iput-wide v1, p0, Lcom/join/mgps/socket/d;->f:J

    .line 12
    .line 13
    iput-wide v1, p0, Lcom/join/mgps/socket/d;->g:J

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/socket/d;->h:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/socket/d;->i:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    iput v1, p0, Lcom/join/mgps/socket/d;->j:I

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lcom/join/mgps/socket/d;->l:Z

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/socket/d;->m:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/join/mgps/socket/d;->d:Ljava/net/Socket;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/join/mgps/socket/d;->e:Landroid/content/Context;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/d;->c:Ljava/io/BufferedInputStream;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_1
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, ":"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
.end method

.method b(JJ)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "totoleSize",
            "currentSize"
        }
    .end annotation

    .line 1
    long-to-float v0, p3

    .line 2
    long-to-float p1, p1

    .line 3
    div-float/2addr v0, p1

    .line 4
    const/high16 p1, 0x42c80000    # 100.0f

    .line 5
    .line 6
    mul-float v0, v0, p1

    .line 7
    .line 8
    float-to-int p1, v0

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "getReceiverProgress: "

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ":::size::::"

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    return p1
.end method

.method c(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/d;->k:Lcom/join/mgps/socket/d$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/d$a;->a(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iput p1, p0, Lcom/join/mgps/socket/d;->j:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/socket/d;->d()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method d()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/socket/d;->g:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/join/mgps/socket/d;->f:J

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/join/mgps/socket/d;->b(JJ)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Lcom/join/mgps/socket/entity/c;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/join/mgps/socket/entity/c;-><init>()V

    .line 12
    .line 13
    .line 14
    iput v0, v1, Lcom/join/mgps/socket/entity/c;->u:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/socket/d;->h:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, v1, Lcom/join/mgps/socket/entity/c;->s:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/socket/d;->m:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, v1, Lcom/join/mgps/socket/entity/c;->t:Ljava/lang/String;

    .line 23
    .line 24
    iget v0, p0, Lcom/join/mgps/socket/d;->j:I

    .line 25
    .line 26
    iput v0, v1, Lcom/join/mgps/socket/entity/c;->v:I

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    iput v2, v1, Lcom/join/mgps/socket/entity/a;->a:I

    .line 30
    .line 31
    iget-object v2, p0, Lcom/join/mgps/socket/d;->i:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v2, v1, Lcom/join/mgps/socket/entity/c;->x:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    iput v2, v1, Lcom/join/mgps/socket/entity/c;->w:I

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    if-eq v0, v2, :cond_0

    .line 40
    .line 41
    const/4 v2, 0x4

    .line 42
    if-ne v0, v2, :cond_1

    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/d;->k:Lcom/join/mgps/socket/d$a;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-boolean v0, v0, Lcom/join/mgps/socket/d$a;->b:Z

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method e(Lcom/join/mgps/socket/entity/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestBean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/join/mgps/socket/d;->f:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/join/mgps/socket/d;->g:J

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/join/mgps/socket/d;->h:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/socket/entity/d;->b()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/join/mgps/socket/d;->m:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/socket/d;->i:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/join/mgps/Util/o0;->D(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    new-instance v0, Ljava/io/File;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/socket/d;->m:Ljava/lang/String;

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 41
    .line 42
    new-instance v3, Ljava/io/FileInputStream;

    .line 43
    .line 44
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lcom/join/mgps/socket/d;->c:Ljava/io/BufferedInputStream;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 53
    .line 54
    const/4 v2, 0x2

    .line 55
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/socket/entity/d;->c()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    iput-wide v3, p0, Lcom/join/mgps/socket/d;->g:J

    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 70
    .line 71
    invoke-virtual {v0, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/join/mgps/socket/entity/d;->a()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/join/mgps/socket/d;->h:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v3, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 86
    .line 87
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/join/mgps/socket/entity/d;->d()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, p0, Lcom/join/mgps/socket/d;->i:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 109
    .line 110
    .line 111
    const/high16 p1, 0x100000

    .line 112
    .line 113
    new-array v0, p1, [B

    .line 114
    .line 115
    new-instance v3, Lcom/join/mgps/socket/d$a;

    .line 116
    .line 117
    invoke-direct {v3, p0}, Lcom/join/mgps/socket/d$a;-><init>(Lcom/join/mgps/socket/d;)V

    .line 118
    .line 119
    .line 120
    iput-object v3, p0, Lcom/join/mgps/socket/d;->k:Lcom/join/mgps/socket/d$a;

    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 123
    .line 124
    .line 125
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/socket/d;->c:Ljava/io/BufferedInputStream;

    .line 126
    .line 127
    invoke-virtual {v3, v0, v1, p1}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    const/4 v4, -0x1

    .line 132
    if-eq v3, v4, :cond_2

    .line 133
    .line 134
    iget-object v4, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 135
    .line 136
    invoke-virtual {v4, v0, v1, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 137
    .line 138
    .line 139
    iget-wide v4, p0, Lcom/join/mgps/socket/d;->f:J

    .line 140
    .line 141
    int-to-long v6, v3

    .line 142
    add-long/2addr v4, v6

    .line 143
    iput-wide v4, p0, Lcom/join/mgps/socket/d;->f:J

    .line 144
    .line 145
    iget-wide v6, p0, Lcom/join/mgps/socket/d;->g:J

    .line 146
    .line 147
    cmp-long v3, v4, v6

    .line 148
    .line 149
    if-gez v3, :cond_1

    .line 150
    .line 151
    iput v2, p0, Lcom/join/mgps/socket/d;->j:I

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_1
    const/4 v3, 0x3

    .line 155
    invoke-virtual {p0, v3}, Lcom/join/mgps/socket/d;->c(I)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/join/mgps/socket/d;->c:Ljava/io/BufferedInputStream;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/join/mgps/socket/d;->k:Lcom/join/mgps/socket/d$a;

    .line 170
    .line 171
    if-eqz p1, :cond_4

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :catchall_0
    move-exception p1

    .line 175
    goto :goto_2

    .line 176
    :catch_0
    move-exception p1

    .line 177
    const/4 v0, 0x4

    .line 178
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/d;->c(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/join/mgps/socket/d;->k:Lcom/join/mgps/socket/d$a;

    .line 185
    .line 186
    if-eqz p1, :cond_4

    .line 187
    .line 188
    :goto_1
    invoke-virtual {p1, v1}, Lcom/join/mgps/socket/d$a;->a(Z)V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/socket/d;->k:Lcom/join/mgps/socket/d$a;

    .line 193
    .line 194
    if-eqz v0, :cond_3

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/d$a;->a(Z)V

    .line 197
    .line 198
    .line 199
    :cond_3
    throw p1

    .line 200
    :cond_4
    :goto_3
    return-void
.end method

.method g(Lcom/join/mgps/socket/entity/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/socket/entity/h;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    const-string v0, "$HB$"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string v0, "$DMH$"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 49
    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v1, "receiverText: \u53d1\u9001\u7684\u6587\u672c\u6570\u636e\u4e3a"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_1
    move-exception p1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, ":"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_0
    return-void
.end method

.method public h(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/socket/d;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    .line 2
    .line 3
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/socket/d;->d:Ljava/net/Socket;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 18
    .line 19
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/socket/d;->l:Z

    .line 20
    .line 21
    if-eqz v0, :cond_5

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/socket/d;->d:Ljava/net/Socket;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/DataOutputStream;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {}, Lcom/join/mgps/socket/a;->b()Lcom/join/mgps/socket/a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/socket/a;->c()Lcom/join/mgps/socket/entity/e;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    instance-of v1, v0, Lcom/join/mgps/socket/entity/h;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    check-cast v0, Lcom/join/mgps/socket/entity/h;

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/d;->g(Lcom/join/mgps/socket/entity/h;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    instance-of v1, v0, Lcom/join/mgps/socket/entity/d;

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    check-cast v0, Lcom/join/mgps/socket/entity/d;

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/d;->e(Lcom/join/mgps/socket/entity/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    .line 67
    .line 68
    :cond_4
    :goto_1
    const-wide/16 v0, 0x3e8

    .line 69
    .line 70
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    :cond_5
    return-void
.end method
