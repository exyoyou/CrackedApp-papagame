.class public Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;,
        Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$b;,
        Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$a;
    }
.end annotation


# static fields
.field private static final MATCH_PING_IP:Ljava/lang/String; = "(?<=from ).*(?=: icmp_seq=1 ttl=)"

.field private static final MATCH_PING_TIME:Ljava/lang/String; = "(?<=time=).*?ms"

.field private static final MATCH_TRACE_IP:Ljava/lang/String; = "(?<=From ).*(?:[0-9]{1,3}\\.){3}[0-9]{1,3}"

.field private static final MATCH_TRACE_IP_2:Ljava/lang/String; = "(?:[0-9]{1,3}\\.){3}[0-9]{1,3}"

.field private static instance:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final TRACE_TIMES_MAX:I

.field private final TRACE_TIMES_MIN:I

.field public isCTrace:Z

.field listener:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$a;

.field private traceTimes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "LDNetTraceRoute"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->LOG_TAG:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v0, 0x1e

    .line 9
    .line 10
    iput v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->traceTimes:I

    .line 11
    .line 12
    const/16 v0, 0x63

    .line 13
    .line 14
    iput v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->TRACE_TIMES_MAX:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->TRACE_TIMES_MIN:I

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->isCTrace:Z

    .line 20
    .line 21
    return-void
.end method

.method private execPing(Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$b;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v4, "ping -c 1 -w 2 "

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$b;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 30
    .line 31
    .line 32
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    .line 34
    .line 35
    new-instance v3, Ljava/io/InputStreamReader;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 73
    .line 74
    .line 75
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 79
    .line 80
    .line 81
    goto :goto_4

    .line 82
    :catch_0
    move-exception v1

    .line 83
    goto :goto_2

    .line 84
    :catch_1
    move-exception v1

    .line 85
    goto :goto_3

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    goto :goto_5

    .line 88
    :catch_2
    move-exception v2

    .line 89
    move-object v5, v2

    .line 90
    move-object v2, v1

    .line 91
    move-object v1, v5

    .line 92
    goto :goto_2

    .line 93
    :catch_3
    move-exception v2

    .line 94
    move-object v5, v2

    .line 95
    move-object v2, v1

    .line 96
    move-object v1, v5

    .line 97
    goto :goto_3

    .line 98
    :catchall_1
    move-exception v0

    .line 99
    move-object p1, v1

    .line 100
    goto :goto_5

    .line 101
    :catch_4
    move-exception p1

    .line 102
    move-object v2, v1

    .line 103
    move-object v1, p1

    .line 104
    move-object p1, v2

    .line 105
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    if-eqz v2, :cond_1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catch_5
    move-exception p1

    .line 112
    move-object v2, v1

    .line 113
    move-object v1, p1

    .line 114
    move-object p1, v2

    .line 115
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 116
    .line 117
    .line 118
    if-eqz v2, :cond_1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :catch_6
    :goto_4
    return-object v0

    .line 122
    :catchall_2
    move-exception v0

    .line 123
    move-object v1, v2

    .line 124
    :goto_5
    if-eqz v1, :cond_2

    .line 125
    .line 126
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 127
    .line 128
    .line 129
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 130
    .line 131
    .line 132
    :catch_7
    throw v0
.end method

.method private execTrace(Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "***"

    .line 6
    .line 7
    const-string v3, "LDNetTraceRoute"

    .line 8
    .line 9
    const-string v4, "(?<=From ).*(?:[0-9]{1,3}\\.){3}[0-9]{1,3}"

    .line 10
    .line 11
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const-string v5, "(?<=from ).*(?=: icmp_seq=1 ttl=)"

    .line 16
    .line 17
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-string v6, "(?<=time=).*?ms"

    .line 22
    .line 23
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    const-string v7, "(?:[0-9]{1,3}\\.){3}[0-9]{1,3}"

    .line 28
    .line 29
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v9, 0x0

    .line 35
    move-object v9, v8

    .line 36
    const/4 v10, 0x0

    .line 37
    :goto_0
    if-nez v10, :cond_a

    .line 38
    .line 39
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->a()I

    .line 40
    .line 41
    .line 42
    move-result v11

    .line 43
    iget v12, v1, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->traceTimes:I

    .line 44
    .line 45
    if-gt v11, v12, :cond_a

    .line 46
    .line 47
    new-instance v11, Lcom/haima/hmcp/utils/TraceRouterInfo;

    .line 48
    .line 49
    invoke-direct {v11}, Lcom/haima/hmcp/utils/TraceRouterInfo;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v12, ""

    .line 53
    .line 54
    new-instance v13, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v14, "ping -c 1 -w 2 -t "

    .line 60
    .line 61
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->a()I

    .line 65
    .line 66
    .line 67
    move-result v14

    .line 68
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v14, " "

    .line 72
    .line 73
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->b()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v14

    .line 80
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    new-instance v14, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v15, "command :"

    .line 93
    .line 94
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v14

    .line 104
    invoke-static {v3, v14}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 108
    .line 109
    .line 110
    move-result-object v14

    .line 111
    invoke-virtual {v14, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    new-instance v13, Ljava/io/BufferedReader;

    .line 116
    .line 117
    new-instance v14, Ljava/io/InputStreamReader;

    .line 118
    .line 119
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 120
    .line 121
    .line 122
    move-result-object v15

    .line 123
    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    .line 128
    .line 129
    :goto_1
    :try_start_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    if-eqz v9, :cond_0

    .line 134
    .line 135
    new-instance v14, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    goto :goto_1

    .line 151
    :cond_0
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    .line 155
    .line 156
    .line 157
    new-instance v9, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v14, "str :"

    .line 163
    .line 164
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    invoke-static {v3, v9}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    .line 182
    .line 183
    .line 184
    move-result v14

    .line 185
    if-eqz v14, :cond_1

    .line 186
    .line 187
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const/16 v15, 0x100

    .line 198
    .line 199
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    .line 203
    .line 204
    .line 205
    move-result v15
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    const/16 v16, 0x1

    .line 207
    .line 208
    move-object/from16 v17, v4

    .line 209
    .line 210
    const-string v4, "|"

    .line 211
    .line 212
    if-eqz v15, :cond_4

    .line 213
    .line 214
    :try_start_2
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    new-instance v12, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    const-string v15, "pingIp :"

    .line 224
    .line 225
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v12

    .line 235
    invoke-static {v3, v12}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    new-instance v12, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$b;

    .line 239
    .line 240
    invoke-direct {v12, v1, v9}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$b;-><init>(Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-direct {v1, v12}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->execPing(Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$b;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v12

    .line 247
    new-instance v15, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    move-object/from16 v18, v7

    .line 253
    .line 254
    const-string v7, "status :"

    .line 255
    .line 256
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    invoke-static {v3, v7}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    if-nez v7, :cond_2

    .line 274
    .line 275
    const-string v4, "unknown host or network error\n"

    .line 276
    .line 277
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const/4 v4, -0x1

    .line 281
    invoke-virtual {v11, v4}, Lcom/haima/hmcp/utils/TraceRouterInfo;->setIndex(I)V

    .line 282
    .line 283
    .line 284
    const-string v4, "unknown host or network error"

    .line 285
    .line 286
    invoke-virtual {v11, v4}, Lcom/haima/hmcp/utils/TraceRouterInfo;->setError(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_3

    .line 290
    .line 291
    :cond_2
    invoke-virtual {v6, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    .line 296
    .line 297
    .line 298
    move-result v12

    .line 299
    if-eqz v12, :cond_3

    .line 300
    .line 301
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    invoke-virtual/range {p1 .. p1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->a()I

    .line 306
    .line 307
    .line 308
    move-result v12

    .line 309
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->a()I

    .line 313
    .line 314
    .line 315
    move-result v12

    .line 316
    invoke-virtual {v11, v12}, Lcom/haima/hmcp/utils/TraceRouterInfo;->setIndex(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v11, v9}, Lcom/haima/hmcp/utils/TraceRouterInfo;->setIp(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v11, v7}, Lcom/haima/hmcp/utils/TraceRouterInfo;->setTime(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    goto :goto_2

    .line 338
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->a()I

    .line 339
    .line 340
    .line 341
    move-result v7

    .line 342
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual/range {p1 .. p1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->a()I

    .line 346
    .line 347
    .line 348
    move-result v7

    .line 349
    invoke-virtual {v11, v7}, Lcom/haima/hmcp/utils/TraceRouterInfo;->setIndex(I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v11, v9}, Lcom/haima/hmcp/utils/TraceRouterInfo;->setIp(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v4, " timeout;\n"

    .line 365
    .line 366
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v4, "timeout"

    .line 370
    .line 371
    invoke-virtual {v11, v4}, Lcom/haima/hmcp/utils/TraceRouterInfo;->setTime(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    :goto_2
    iget-object v4, v1, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->listener:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$a;

    .line 375
    .line 376
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    invoke-interface {v4, v7, v11}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$a;->OnNetTraceUpdated(Ljava/lang/String;Lcom/haima/hmcp/utils/TraceRouterInfo;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual/range {p1 .. p1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->a()I

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    add-int/lit8 v4, v4, 0x1

    .line 388
    .line 389
    invoke-virtual {v0, v4}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->c(I)V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_5

    .line 393
    .line 394
    :cond_4
    move-object/from16 v18, v7

    .line 395
    .line 396
    invoke-virtual {v5, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    .line 401
    .line 402
    .line 403
    move-result v9

    .line 404
    if-eqz v9, :cond_6

    .line 405
    .line 406
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    invoke-virtual {v6, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 411
    .line 412
    .line 413
    move-result-object v9

    .line 414
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    .line 415
    .line 416
    .line 417
    move-result v10

    .line 418
    if-eqz v10, :cond_5

    .line 419
    .line 420
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v9

    .line 424
    invoke-virtual/range {p1 .. p1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->a()I

    .line 425
    .line 426
    .line 427
    move-result v10

    .line 428
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual/range {p1 .. p1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->a()I

    .line 432
    .line 433
    .line 434
    move-result v10

    .line 435
    invoke-virtual {v11, v10}, Lcom/haima/hmcp/utils/TraceRouterInfo;->setIndex(I)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v11, v7}, Lcom/haima/hmcp/utils/TraceRouterInfo;->setIp(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v11, v9}, Lcom/haima/hmcp/utils/TraceRouterInfo;->setTime(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    iget-object v4, v1, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->listener:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$a;

    .line 457
    .line 458
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v7

    .line 462
    invoke-interface {v4, v7, v11}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$a;->OnNetTraceUpdated(Ljava/lang/String;Lcom/haima/hmcp/utils/TraceRouterInfo;)V

    .line 463
    .line 464
    .line 465
    :cond_5
    :goto_3
    const/4 v10, 0x1

    .line 466
    goto :goto_5

    .line 467
    :cond_6
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 468
    .line 469
    .line 470
    move-result v7

    .line 471
    if-nez v7, :cond_7

    .line 472
    .line 473
    const-string v4, "unknown host or network error\t"

    .line 474
    .line 475
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    const/4 v10, 0x1

    .line 479
    goto :goto_4

    .line 480
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->a()I

    .line 481
    .line 482
    .line 483
    move-result v7

    .line 484
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual/range {p1 .. p1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->a()I

    .line 488
    .line 489
    .line 490
    move-result v7

    .line 491
    invoke-virtual {v11, v7}, Lcom/haima/hmcp/utils/TraceRouterInfo;->setIndex(I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v11, v2}, Lcom/haima/hmcp/utils/TraceRouterInfo;->setIp(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->a()I

    .line 504
    .line 505
    .line 506
    move-result v4

    .line 507
    add-int/lit8 v4, v4, 0x1

    .line 508
    .line 509
    invoke-virtual {v0, v4}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->c(I)V

    .line 510
    .line 511
    .line 512
    :goto_4
    iget-object v4, v1, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->listener:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$a;

    .line 513
    .line 514
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v7

    .line 518
    invoke-interface {v4, v7, v11}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$a;->OnNetTraceUpdated(Ljava/lang/String;Lcom/haima/hmcp/utils/TraceRouterInfo;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 519
    .line 520
    .line 521
    :goto_5
    move-object v9, v13

    .line 522
    move-object/from16 v4, v17

    .line 523
    .line 524
    move-object/from16 v7, v18

    .line 525
    .line 526
    goto/16 :goto_0

    .line 527
    .line 528
    :catchall_0
    move-exception v0

    .line 529
    move-object v9, v13

    .line 530
    goto :goto_9

    .line 531
    :catch_0
    move-exception v0

    .line 532
    move-object v9, v13

    .line 533
    goto :goto_6

    .line 534
    :catch_1
    move-exception v0

    .line 535
    move-object v9, v13

    .line 536
    goto :goto_8

    .line 537
    :catchall_1
    move-exception v0

    .line 538
    goto :goto_9

    .line 539
    :catch_2
    move-exception v0

    .line 540
    :goto_6
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 541
    .line 542
    .line 543
    if-eqz v9, :cond_8

    .line 544
    .line 545
    :goto_7
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 546
    .line 547
    .line 548
    :cond_8
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 549
    .line 550
    .line 551
    goto :goto_a

    .line 552
    :catch_3
    move-exception v0

    .line 553
    :goto_8
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 554
    .line 555
    .line 556
    if-eqz v9, :cond_8

    .line 557
    .line 558
    goto :goto_7

    .line 559
    :goto_9
    if-eqz v9, :cond_9

    .line 560
    .line 561
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 562
    .line 563
    .line 564
    :cond_9
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 565
    .line 566
    .line 567
    :catch_4
    throw v0

    .line 568
    :cond_a
    if-eqz v9, :cond_8

    .line 569
    .line 570
    goto :goto_7

    .line 571
    :catch_5
    :goto_a
    iget-object v0, v1, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->listener:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$a;

    .line 572
    .line 573
    invoke-interface {v0}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$a;->OnNetTraceFinished()V

    .line 574
    .line 575
    .line 576
    return-void
.end method


# virtual methods
.method public initListenter(Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->listener:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$a;

    .line 2
    .line 3
    return-void
.end method

.method public printTraceInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->listener:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, p1, v1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$a;->OnNetTraceUpdated(Ljava/lang/String;Lcom/haima/hmcp/utils/TraceRouterInfo;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public resetInstance()V
    .locals 1

    .line 1
    sget-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->instance:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->instance:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setTraceTimes(I)V
    .locals 1

    .line 1
    const/16 v0, 0x63

    .line 2
    .line 3
    if-gt p1, v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->traceTimes:I

    .line 10
    .line 11
    :cond_1
    :goto_0
    return-void
.end method

.method public native startJNICTraceRoute(Ljava/lang/String;)V
.end method

.method public startTraceRoute(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->isCTrace:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "LDNetTraceRoute"

    .line 7
    .line 8
    const-string v2, "\u8c03\u7528java\u6a21\u62dftraceRoute"

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, v1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;-><init>(Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->execTrace(Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1, v1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;-><init>(Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->execTrace(Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method
