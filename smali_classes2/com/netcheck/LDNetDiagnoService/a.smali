.class public Lcom/netcheck/LDNetDiagnoService/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netcheck/LDNetDiagnoService/a$b;,
        Lcom/netcheck/LDNetDiagnoService/a$a;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String; = "(?<=from ).*(?=: icmp_seq=1 ttl=)"


# instance fields
.field a:Lcom/netcheck/LDNetDiagnoService/a$a;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/String;

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/netcheck/LDNetDiagnoService/a$a;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/16 v0, 0x38

    .line 2
    iput v0, p0, Lcom/netcheck/LDNetDiagnoService/a;->c:I

    const/high16 v0, 0x100000

    .line 3
    iput v0, p0, Lcom/netcheck/LDNetDiagnoService/a;->e:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/netcheck/LDNetDiagnoService/a;->f:I

    const/16 v1, 0x33

    .line 5
    iput v1, p0, Lcom/netcheck/LDNetDiagnoService/a;->g:I

    .line 6
    iput v0, p0, Lcom/netcheck/LDNetDiagnoService/a;->h:I

    const-string v0, "www.baidu.com"

    .line 7
    iput-object v0, p0, Lcom/netcheck/LDNetDiagnoService/a;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/a;->j:Z

    .line 9
    iput-object p1, p0, Lcom/netcheck/LDNetDiagnoService/a;->a:Lcom/netcheck/LDNetDiagnoService/a$a;

    .line 10
    iput p2, p0, Lcom/netcheck/LDNetDiagnoService/a;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/netcheck/LDNetDiagnoService/a$a;IILjava/lang/String;)V
    .locals 4

    .line 11
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x6

    .line 12
    iput v0, p0, Lcom/netcheck/LDNetDiagnoService/a;->b:I

    const/16 v0, 0x38

    .line 13
    iput v0, p0, Lcom/netcheck/LDNetDiagnoService/a;->c:I

    const/high16 v0, 0x100000

    .line 14
    iput v0, p0, Lcom/netcheck/LDNetDiagnoService/a;->e:I

    const/4 v1, 0x1

    .line 15
    iput v1, p0, Lcom/netcheck/LDNetDiagnoService/a;->f:I

    const/16 v2, 0x33

    .line 16
    iput v2, p0, Lcom/netcheck/LDNetDiagnoService/a;->g:I

    .line 17
    iput v1, p0, Lcom/netcheck/LDNetDiagnoService/a;->h:I

    const-string v3, "www.baidu.com"

    .line 18
    iput-object v3, p0, Lcom/netcheck/LDNetDiagnoService/a;->i:Ljava/lang/String;

    const/4 v3, 0x0

    .line 19
    iput-boolean v3, p0, Lcom/netcheck/LDNetDiagnoService/a;->j:Z

    .line 20
    iput-object p1, p0, Lcom/netcheck/LDNetDiagnoService/a;->a:Lcom/netcheck/LDNetDiagnoService/a$a;

    if-le p2, v1, :cond_0

    if-ge p2, v2, :cond_0

    .line 21
    iput p2, p0, Lcom/netcheck/LDNetDiagnoService/a;->b:I

    :cond_0
    if-le p3, v1, :cond_1

    if-ge p3, v0, :cond_1

    .line 22
    iput p3, p0, Lcom/netcheck/LDNetDiagnoService/a;->c:I

    .line 23
    :cond_1
    iput-object p4, p0, Lcom/netcheck/LDNetDiagnoService/a;->d:Ljava/lang/String;

    return-void
.end method

.method private c(Lcom/netcheck/LDNetDiagnoService/a$b;Z)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ping -s "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/netcheck/LDNetDiagnoService/a;->c:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " -c "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    const-string v0, "ping -s 8185 -c  "

    .line 28
    .line 29
    :cond_0
    const-string p2, ""

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v0, p0, Lcom/netcheck/LDNetDiagnoService/a;->b:I

    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, " "

    .line 50
    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/netcheck/LDNetDiagnoService/a$b;->a()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 66
    .line 67
    .line 68
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    .line 70
    .line 71
    new-instance v2, Ljava/io/InputStreamReader;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_1

    .line 94
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, "|"

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 120
    .line 121
    .line 122
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 123
    .line 124
    .line 125
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :catch_0
    move-exception v1

    .line 130
    goto :goto_2

    .line 131
    :catch_1
    move-exception v1

    .line 132
    goto :goto_3

    .line 133
    :catchall_0
    move-exception p2

    .line 134
    goto :goto_5

    .line 135
    :catch_2
    move-exception v0

    .line 136
    move-object v4, v1

    .line 137
    move-object v1, v0

    .line 138
    move-object v0, v4

    .line 139
    goto :goto_2

    .line 140
    :catch_3
    move-exception v0

    .line 141
    move-object v4, v1

    .line 142
    move-object v1, v0

    .line 143
    move-object v0, v4

    .line 144
    goto :goto_3

    .line 145
    :catchall_1
    move-exception p2

    .line 146
    move-object p1, v1

    .line 147
    goto :goto_5

    .line 148
    :catch_4
    move-exception p1

    .line 149
    move-object v0, v1

    .line 150
    move-object v1, p1

    .line 151
    move-object p1, v0

    .line 152
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    .line 154
    .line 155
    if-eqz v0, :cond_2

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :catch_5
    move-exception p1

    .line 159
    move-object v0, v1

    .line 160
    move-object v1, p1

    .line 161
    move-object p1, v0

    .line 162
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 163
    .line 164
    .line 165
    if-eqz v0, :cond_2

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :catch_6
    :goto_4
    return-object p2

    .line 169
    :catchall_2
    move-exception p2

    .line 170
    move-object v1, v0

    .line 171
    :goto_5
    if-eqz v1, :cond_3

    .line 172
    .line 173
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 174
    .line 175
    .line 176
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 177
    .line 178
    .line 179
    :catch_7
    throw p2
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/netcheck/LDNetDiagnoService/a;->b(Ljava/lang/String;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "www.baidu.com"

    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/a;->j:Z

    .line 11
    .line 12
    new-instance v0, Lcom/netcheck/LDNetDiagnoService/a$b;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/netcheck/LDNetDiagnoService/a$b;-><init>(Lcom/netcheck/LDNetDiagnoService/a;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const/16 v1, 0x100

    .line 20
    .line 21
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0, p2}, Lcom/netcheck/LDNetDiagnoService/a;->c(Lcom/netcheck/LDNetDiagnoService/a$b;Z)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    const-string v0, "(?<=from ).*(?=: icmp_seq=1 ttl=)"

    .line 36
    .line 37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v1, "status"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "LDNetPing"

    .line 69
    .line 70
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v1, "\t"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-nez p2, :cond_3

    .line 99
    .line 100
    const-string p2, "unknown host or network error"

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    const-string p2, "timeout"

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    :goto_0
    iget-object p2, p0, Lcom/netcheck/LDNetDiagnoService/a;->a:Lcom/netcheck/LDNetDiagnoService/a$a;

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p2, p1}, Lcom/netcheck/LDNetDiagnoService/a$a;->OnNetPingFinished(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/a;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/netcheck/LDNetDiagnoService/a;->a()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/netcheck/LDNetDiagnoService/a;->j:Z

    .line 6
    .line 7
    const-string p1, "NetPing"

    .line 8
    .line 9
    const-string v0, "ping finish"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
