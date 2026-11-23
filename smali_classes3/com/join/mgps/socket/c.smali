.class public Lcom/join/mgps/socket/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/socket/c$a;
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/String; = "c"


# instance fields
.field b:Ljava/net/Socket;

.field c:Ljava/io/DataInputStream;

.field d:Ljava/io/BufferedOutputStream;

.field e:Landroid/content/Context;

.field f:J

.field g:J

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:I

.field l:I

.field m:Lcom/join/mgps/socket/c$a;

.field n:Z


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
    iput-object v0, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/DataInputStream;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/socket/c;->d:Ljava/io/BufferedOutputStream;

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    iput-wide v1, p0, Lcom/join/mgps/socket/c;->f:J

    .line 12
    .line 13
    iput-wide v1, p0, Lcom/join/mgps/socket/c;->g:J

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/socket/c;->h:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/socket/c;->i:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/socket/c;->j:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/join/mgps/socket/c;->k:I

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/join/mgps/socket/c;->l:I

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/join/mgps/socket/c;->n:Z

    .line 28
    .line 29
    iput-object p1, p0, Lcom/join/mgps/socket/c;->b:Ljava/net/Socket;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/join/mgps/socket/c;->e:Landroid/content/Context;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/DataInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/c;->d:Ljava/io/BufferedOutputStream;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
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
    iget-object v0, p0, Lcom/join/mgps/socket/c;->m:Lcom/join/mgps/socket/c$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/c$a;->a(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iput p1, p0, Lcom/join/mgps/socket/c;->l:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/socket/c;->d()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method d()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/socket/c;->g:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/join/mgps/socket/c;->f:J

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/join/mgps/socket/c;->b(JJ)I

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
    iget-object v0, p0, Lcom/join/mgps/socket/c;->i:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, v1, Lcom/join/mgps/socket/entity/c;->s:Ljava/lang/String;

    .line 19
    .line 20
    iget v0, p0, Lcom/join/mgps/socket/c;->l:I

    .line 21
    .line 22
    iput v0, v1, Lcom/join/mgps/socket/entity/c;->v:I

    .line 23
    .line 24
    iget-object v2, p0, Lcom/join/mgps/socket/c;->j:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v2, v1, Lcom/join/mgps/socket/entity/c;->x:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/socket/c;->h:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v2, v1, Lcom/join/mgps/socket/entity/c;->t:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    iput v2, v1, Lcom/join/mgps/socket/entity/a;->a:I

    .line 34
    .line 35
    iput v2, v1, Lcom/join/mgps/socket/entity/c;->w:I

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    if-eq v0, v2, :cond_0

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    if-ne v0, v2, :cond_1

    .line 42
    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "receiverFile: \u63a5\u6536\u5b8c\u6210:::"

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/join/mgps/socket/c;->m:Lcom/join/mgps/socket/c$a;

    .line 54
    .line 55
    iget-boolean v2, v2, Lcom/join/mgps/socket/c$a;->b:Z

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/socket/c;->m:Lcom/join/mgps/socket/c$a;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-boolean v0, v0, Lcom/join/mgps/socket/c$a;->b:Z

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/socket/entity/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/socket/entity/g;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/join/mgps/socket/entity/g;->s:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, v0, Lcom/join/mgps/socket/entity/a;->a:I

    .line 10
    .line 11
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method g(Ljava/io/DataInputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/high16 v0, 0x100000

    .line 5
    .line 6
    new-array v1, v0, [B

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    iput-wide v2, p0, Lcom/join/mgps/socket/c;->f:J

    .line 11
    .line 12
    iput-wide v2, p0, Lcom/join/mgps/socket/c;->g:J

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, p0, Lcom/join/mgps/socket/c;->h:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v2, p0, Lcom/join/mgps/socket/c;->i:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v2, p0, Lcom/join/mgps/socket/c;->j:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iput v2, p0, Lcom/join/mgps/socket/c;->k:I

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    iput-wide v4, p0, Lcom/join/mgps/socket/c;->g:J

    .line 30
    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v5, "receiverFile: \u6587\u4ef6\u5927\u5c0f "

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-wide v5, p0, Lcom/join/mgps/socket/c;->g:J

    .line 42
    .line 43
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iput-object v4, p0, Lcom/join/mgps/socket/c;->i:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v5, "receiverFile: \u6587\u4ef6\u4fdd\u5b58\u540d\u79f0 "

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v5, p0, Lcom/join/mgps/socket/c;->i:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    iput-object v4, p0, Lcom/join/mgps/socket/c;->j:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v5, "receiverFile: \u6587\u4ef6\u7f16\u53f7 "

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v5, p0, Lcom/join/mgps/socket/c;->j:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v5, p0, Lcom/join/mgps/socket/c;->e:Landroid/content/Context;

    .line 94
    .line 95
    invoke-static {v5}, Lcom/join/mgps/Util/f2;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v5, p0, Lcom/join/mgps/socket/c;->i:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    iput-object v4, p0, Lcom/join/mgps/socket/c;->h:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v4}, Lcom/join/mgps/Util/o0;->E(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-nez v4, :cond_1

    .line 123
    .line 124
    iget-object v4, p0, Lcom/join/mgps/socket/c;->h:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v4}, Lcom/join/mgps/Util/o0;->K(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v5, "receiverFile: \u6587\u4ef6\u5b8c\u6574\u540d "

    .line 135
    .line 136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v5, p0, Lcom/join/mgps/socket/c;->h:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 145
    .line 146
    new-instance v5, Ljava/io/FileOutputStream;

    .line 147
    .line 148
    new-instance v6, Ljava/io/File;

    .line 149
    .line 150
    iget-object v7, p0, Lcom/join/mgps/socket/c;->h:Ljava/lang/String;

    .line 151
    .line 152
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 156
    .line 157
    .line 158
    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 159
    .line 160
    .line 161
    iput-object v4, p0, Lcom/join/mgps/socket/c;->d:Ljava/io/BufferedOutputStream;

    .line 162
    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v5, "saveFile: \u6587\u4ef6\u5927\u5c0f\uff1a"

    .line 169
    .line 170
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-wide v5, p0, Lcom/join/mgps/socket/c;->g:J

    .line 174
    .line 175
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v5, "::::::\u6587\u4ef6\u5b8c\u6574\u8def\u5f84\uff1a\uff1a"

    .line 179
    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget-object v5, p0, Lcom/join/mgps/socket/c;->h:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    new-instance v4, Lcom/join/mgps/socket/c$a;

    .line 189
    .line 190
    invoke-direct {v4, p0}, Lcom/join/mgps/socket/c$a;-><init>(Lcom/join/mgps/socket/c;)V

    .line 191
    .line 192
    .line 193
    iput-object v4, p0, Lcom/join/mgps/socket/c;->m:Lcom/join/mgps/socket/c$a;

    .line 194
    .line 195
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 196
    .line 197
    .line 198
    :goto_0
    iget-boolean v4, p0, Lcom/join/mgps/socket/c;->n:Z

    .line 199
    .line 200
    if-eqz v4, :cond_7

    .line 201
    .line 202
    iget-wide v4, p0, Lcom/join/mgps/socket/c;->f:J

    .line 203
    .line 204
    int-to-long v6, v0

    .line 205
    add-long/2addr v6, v4

    .line 206
    iget-wide v8, p0, Lcom/join/mgps/socket/c;->g:J

    .line 207
    .line 208
    const/4 v10, 0x2

    .line 209
    const/4 v11, 0x3

    .line 210
    const/4 v12, -0x1

    .line 211
    cmp-long v13, v6, v8

    .line 212
    .line 213
    if-lez v13, :cond_4

    .line 214
    .line 215
    sub-long/2addr v8, v4

    .line 216
    long-to-int v4, v8

    .line 217
    invoke-virtual {p1, v1, v2, v4}, Ljava/io/DataInputStream;->read([BII)I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    iput v4, p0, Lcom/join/mgps/socket/c;->k:I

    .line 222
    .line 223
    if-eq v4, v12, :cond_3

    .line 224
    .line 225
    iget-object v5, p0, Lcom/join/mgps/socket/c;->d:Ljava/io/BufferedOutputStream;

    .line 226
    .line 227
    invoke-virtual {v5, v1, v2, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 228
    .line 229
    .line 230
    iget-wide v4, p0, Lcom/join/mgps/socket/c;->f:J

    .line 231
    .line 232
    iget v6, p0, Lcom/join/mgps/socket/c;->k:I

    .line 233
    .line 234
    int-to-long v6, v6

    .line 235
    add-long/2addr v4, v6

    .line 236
    iput-wide v4, p0, Lcom/join/mgps/socket/c;->f:J

    .line 237
    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string v5, "receiverFile: \u63a5\u6536\u4e86\u591a\u5c11"

    .line 244
    .line 245
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget v5, p0, Lcom/join/mgps/socket/c;->k:I

    .line 249
    .line 250
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v5, "----bufferSize-----"

    .line 254
    .line 255
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    iget-wide v4, p0, Lcom/join/mgps/socket/c;->g:J

    .line 259
    .line 260
    iget-wide v6, p0, Lcom/join/mgps/socket/c;->f:J

    .line 261
    .line 262
    cmp-long v8, v4, v6

    .line 263
    .line 264
    if-lez v8, :cond_2

    .line 265
    .line 266
    iput v10, p0, Lcom/join/mgps/socket/c;->l:I

    .line 267
    .line 268
    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {p0, v11}, Lcom/join/mgps/socket/c;->c(I)V

    .line 270
    .line 271
    .line 272
    goto :goto_1

    .line 273
    :cond_3
    invoke-virtual {p0, v3}, Lcom/join/mgps/socket/c;->c(I)V

    .line 274
    .line 275
    .line 276
    goto :goto_1

    .line 277
    :cond_4
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/DataInputStream;->read([BII)I

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    iput v4, p0, Lcom/join/mgps/socket/c;->k:I

    .line 282
    .line 283
    if-eq v4, v12, :cond_6

    .line 284
    .line 285
    iget-object v5, p0, Lcom/join/mgps/socket/c;->d:Ljava/io/BufferedOutputStream;

    .line 286
    .line 287
    invoke-virtual {v5, v1, v2, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 288
    .line 289
    .line 290
    iget-wide v4, p0, Lcom/join/mgps/socket/c;->f:J

    .line 291
    .line 292
    iget v6, p0, Lcom/join/mgps/socket/c;->k:I

    .line 293
    .line 294
    int-to-long v6, v6

    .line 295
    add-long/2addr v4, v6

    .line 296
    iput-wide v4, p0, Lcom/join/mgps/socket/c;->f:J

    .line 297
    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    const-string v5, "receiverFile000000: \u63a5\u6536\u4e86\u591a\u5c11"

    .line 304
    .line 305
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    iget v5, p0, Lcom/join/mgps/socket/c;->k:I

    .line 309
    .line 310
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string v5, "-----bufferSize------"

    .line 314
    .line 315
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    iget-wide v4, p0, Lcom/join/mgps/socket/c;->g:J

    .line 322
    .line 323
    iget-wide v6, p0, Lcom/join/mgps/socket/c;->f:J

    .line 324
    .line 325
    cmp-long v8, v4, v6

    .line 326
    .line 327
    if-lez v8, :cond_5

    .line 328
    .line 329
    iput v10, p0, Lcom/join/mgps/socket/c;->l:I

    .line 330
    .line 331
    goto/16 :goto_0

    .line 332
    .line 333
    :cond_5
    invoke-virtual {p0, v11}, Lcom/join/mgps/socket/c;->c(I)V

    .line 334
    .line 335
    .line 336
    goto :goto_1

    .line 337
    :cond_6
    invoke-virtual {p0, v3}, Lcom/join/mgps/socket/c;->c(I)V

    .line 338
    .line 339
    .line 340
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/socket/c;->d:Ljava/io/BufferedOutputStream;

    .line 341
    .line 342
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    .line 344
    .line 345
    :try_start_1
    iget-object p1, p0, Lcom/join/mgps/socket/c;->m:Lcom/join/mgps/socket/c$a;

    .line 346
    .line 347
    if-eqz p1, :cond_8

    .line 348
    .line 349
    invoke-virtual {p1, v2}, Lcom/join/mgps/socket/c$a;->a(Z)V

    .line 350
    .line 351
    .line 352
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/socket/c;->d:Ljava/io/BufferedOutputStream;

    .line 353
    .line 354
    if-eqz p1, :cond_a

    .line 355
    .line 356
    iget-object p1, p0, Lcom/join/mgps/socket/c;->d:Ljava/io/BufferedOutputStream;

    .line 357
    .line 358
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 359
    .line 360
    .line 361
    goto :goto_2

    .line 362
    :catchall_0
    move-exception p1

    .line 363
    goto :goto_3

    .line 364
    :catch_0
    move-exception p1

    .line 365
    :try_start_2
    iget-object v0, p0, Lcom/join/mgps/socket/c;->h:Ljava/lang/String;

    .line 366
    .line 367
    invoke-static {v0}, Lcom/join/mgps/Util/o0;->m(Ljava/lang/String;)Z

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0, v3}, Lcom/join/mgps/socket/c;->c(I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    .line 375
    .line 376
    :try_start_3
    iget-object p1, p0, Lcom/join/mgps/socket/c;->m:Lcom/join/mgps/socket/c$a;

    .line 377
    .line 378
    if-eqz p1, :cond_9

    .line 379
    .line 380
    invoke-virtual {p1, v2}, Lcom/join/mgps/socket/c$a;->a(Z)V

    .line 381
    .line 382
    .line 383
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/socket/c;->d:Ljava/io/BufferedOutputStream;

    .line 384
    .line 385
    if-eqz p1, :cond_a

    .line 386
    .line 387
    iget-object p1, p0, Lcom/join/mgps/socket/c;->d:Ljava/io/BufferedOutputStream;

    .line 388
    .line 389
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 390
    .line 391
    .line 392
    goto :goto_2

    .line 393
    :catch_1
    move-exception p1

    .line 394
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 395
    .line 396
    .line 397
    :cond_a
    :goto_2
    return-void

    .line 398
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/join/mgps/socket/c;->m:Lcom/join/mgps/socket/c$a;

    .line 399
    .line 400
    if-eqz v0, :cond_b

    .line 401
    .line 402
    invoke-virtual {v0, v2}, Lcom/join/mgps/socket/c$a;->a(Z)V

    .line 403
    .line 404
    .line 405
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/socket/c;->d:Ljava/io/BufferedOutputStream;

    .line 406
    .line 407
    if-eqz v0, :cond_c

    .line 408
    .line 409
    iget-object v0, p0, Lcom/join/mgps/socket/c;->d:Ljava/io/BufferedOutputStream;

    .line 410
    .line 411
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 412
    .line 413
    .line 414
    goto :goto_4

    .line 415
    :catch_2
    move-exception v0

    .line 416
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 417
    .line 418
    .line 419
    :cond_c
    :goto_4
    throw p1
.end method

.method h(Ljava/io/DataInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/socket/c;->e(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "receiverText: \u63a5\u6536\u7684\u6587\u672c\u6570\u636e\u4e3a"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public i(Z)V
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
    iput-boolean p1, p0, Lcom/join/mgps/socket/c;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SocketReceiverService: \u63a5\u6536\u5927\u5c0f"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/socket/c;->b:Ljava/net/Socket;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/net/Socket;->getReceiveBufferSize()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/io/DataInputStream;

    .line 21
    .line 22
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/join/mgps/socket/c;->b:Ljava/net/Socket;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/DataInputStream;

    .line 37
    .line 38
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/socket/c;->n:Z

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/socket/c;->b:Ljava/net/Socket;

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/DataInputStream;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/DataInputStream;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v1, 0x1

    .line 64
    if-ne v0, v1, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/DataInputStream;

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/c;->h(Ljava/io/DataInputStream;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const/4 v1, 0x2

    .line 73
    if-ne v0, v1, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/DataInputStream;

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/c;->g(Ljava/io/DataInputStream;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_1
    const-wide/16 v0, 0x3e8

    .line 81
    .line 82
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catch_2
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, ":"

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_2
    return-void
.end method
