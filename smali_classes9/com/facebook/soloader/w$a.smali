.class Lcom/facebook/soloader/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/soloader/w;->t(Lcom/facebook/soloader/n;I[B)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/io/File;

.field final synthetic c:[B

.field final synthetic d:Lcom/facebook/soloader/w$c;

.field final synthetic e:Ljava/io/File;

.field final synthetic f:Lcom/facebook/soloader/n;

.field final synthetic g:Lcom/facebook/soloader/w;


# direct methods
.method constructor <init>(Lcom/facebook/soloader/w;Ljava/io/File;[BLcom/facebook/soloader/w$c;Ljava/io/File;Lcom/facebook/soloader/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/soloader/w$a;->g:Lcom/facebook/soloader/w;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/soloader/w$a;->b:Ljava/io/File;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/soloader/w$a;->c:[B

    .line 6
    .line 7
    iput-object p4, p0, Lcom/facebook/soloader/w$a;->d:Lcom/facebook/soloader/w$c;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/facebook/soloader/w$a;->e:Ljava/io/File;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/facebook/soloader/w$a;->f:Lcom/facebook/soloader/n;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    const-string v0, " (from syncer thread)"

    .line 2
    .line 3
    const-string v1, "releasing dso store lock for "

    .line 4
    .line 5
    const-string v2, "rw"

    .line 6
    .line 7
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/facebook/soloader/w$a;->b:Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v3, v4, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 12
    .line 13
    .line 14
    :try_start_1
    iget-object v4, p0, Lcom/facebook/soloader/w$a;->c:[B

    .line 15
    .line 16
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 24
    .line 25
    .line 26
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 27
    .line 28
    .line 29
    new-instance v3, Ljava/io/File;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/facebook/soloader/w$a;->g:Lcom/facebook/soloader/w;

    .line 32
    .line 33
    iget-object v4, v4, Lcom/facebook/soloader/c;->j:Ljava/io/File;

    .line 34
    .line 35
    const-string v5, "dso_manifest"

    .line 36
    .line 37
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v4, Ljava/io/RandomAccessFile;

    .line 41
    .line 42
    invoke-direct {v4, v3, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 43
    .line 44
    .line 45
    :try_start_3
    iget-object v2, p0, Lcom/facebook/soloader/w$a;->d:Lcom/facebook/soloader/w$c;

    .line 46
    .line 47
    invoke-virtual {v2, v4}, Lcom/facebook/soloader/w$c;->b(Ljava/io/DataOutput;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    .line 49
    .line 50
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/facebook/soloader/w$a;->g:Lcom/facebook/soloader/w;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/facebook/soloader/c;->j:Ljava/io/File;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/facebook/soloader/SysUtil;->f(Ljava/io/File;)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/facebook/soloader/w$a;->e:Ljava/io/File;

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    invoke-static {v2, v3}, Lcom/facebook/soloader/w;->k(Ljava/io/File;B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 64
    .line 65
    .line 66
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/facebook/soloader/w$a;->g:Lcom/facebook/soloader/w;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/facebook/soloader/c;->j:Ljava/io/File;

    .line 77
    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/facebook/soloader/w$a;->f:Lcom/facebook/soloader/n;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/facebook/soloader/n;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception v2

    .line 91
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 92
    :catchall_1
    move-exception v3

    .line 93
    :try_start_7
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_2
    move-exception v4

    .line 98
    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 102
    :catchall_3
    move-exception v2

    .line 103
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 104
    :catchall_4
    move-exception v4

    .line 105
    :try_start_a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catchall_5
    move-exception v3

    .line 110
    :try_start_b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    :goto_1
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 114
    :catchall_6
    move-exception v2

    .line 115
    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/facebook/soloader/w$a;->g:Lcom/facebook/soloader/w;

    .line 124
    .line 125
    iget-object v1, v1, Lcom/facebook/soloader/c;->j:Ljava/io/File;

    .line 126
    .line 127
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/facebook/soloader/w$a;->f:Lcom/facebook/soloader/n;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/facebook/soloader/n;->close()V

    .line 136
    .line 137
    .line 138
    throw v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Ljava/lang/RuntimeException;

    .line 141
    .line 142
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    throw v1
.end method
