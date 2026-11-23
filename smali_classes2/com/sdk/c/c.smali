.class public Lcom/sdk/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/d;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/c/c;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/HttpURLConnection;Lcom/sdk/c/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    const-wide/16 v7, 0x0

    .line 4
    .line 5
    const/4 v9, 0x0

    .line 6
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/URLConnection;->getContentLength()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-long v13, v1

    .line 11
    const/4 v6, 0x1

    .line 12
    move-object/from16 v1, p2

    .line 13
    .line 14
    check-cast v1, Lcom/sdk/a/c;

    .line 15
    .line 16
    move-wide v2, v13

    .line 17
    move-wide v4, v7

    .line 18
    invoke-virtual/range {v1 .. v6}, Lcom/sdk/a/c;->a(JJZ)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    return-object v9

    .line 25
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    .line 29
    .line 30
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v3, Ljava/io/BufferedReader;

    .line 35
    .line 36
    new-instance v4, Ljava/io/InputStreamReader;

    .line 37
    .line 38
    invoke-direct {v4, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_6

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 v4, 0xa

    .line 54
    .line 55
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const-wide/16 v5, 0x0

    .line 63
    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    const/16 v10, 0x64

    .line 72
    .line 73
    if-ge v4, v10, :cond_2

    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    array-length v2, v2

    .line 80
    int-to-long v5, v2

    .line 81
    goto :goto_3

    .line 82
    :cond_2
    const/4 v10, 0x0

    .line 83
    :goto_1
    if-ge v10, v4, :cond_4

    .line 84
    .line 85
    add-int/lit8 v11, v10, 0x64

    .line 86
    .line 87
    if-ge v11, v4, :cond_3

    .line 88
    .line 89
    move v12, v11

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    move v12, v4

    .line 92
    :goto_2
    new-instance v15, Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    invoke-direct {v15, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v15, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    array-length v10, v10

    .line 106
    int-to-long v9, v10

    .line 107
    add-long/2addr v5, v9

    .line 108
    move v10, v11

    .line 109
    const/4 v9, 0x0

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    :goto_3
    add-long/2addr v7, v5

    .line 112
    const/4 v15, 0x0

    .line 113
    move-object/from16 v10, p2

    .line 114
    .line 115
    check-cast v10, Lcom/sdk/a/c;

    .line 116
    .line 117
    move-wide v11, v13

    .line 118
    move-wide v4, v13

    .line 119
    move-wide v13, v7

    .line 120
    invoke-virtual/range {v10 .. v15}, Lcom/sdk/a/c;->a(JJZ)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_5

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_5
    move-wide v13, v4

    .line 128
    const/4 v9, 0x0

    .line 129
    goto :goto_0

    .line 130
    :cond_6
    move-wide v4, v13

    .line 131
    :goto_4
    move-wide v13, v7

    .line 132
    const/4 v15, 0x1

    .line 133
    move-object/from16 v10, p2

    .line 134
    .line 135
    check-cast v10, Lcom/sdk/a/c;

    .line 136
    .line 137
    move-wide v11, v4

    .line 138
    invoke-virtual/range {v10 .. v15}, Lcom/sdk/a/c;->a(JJZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    .line 140
    .line 141
    goto :goto_6

    .line 142
    :catch_0
    move-exception v0

    .line 143
    goto :goto_5

    .line 144
    :catch_1
    move-exception v0

    .line 145
    const/4 v1, 0x0

    .line 146
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    sget-object v2, Lcom/sdk/c/c;->a:Ljava/lang/Boolean;

    .line 151
    .line 152
    const-string v3, "StringDownloadHandler"

    .line 153
    .line 154
    invoke-static {v3, v0, v2}, Lcom/sdk/base/framework/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    .line 155
    .line 156
    .line 157
    :goto_6
    if-nez v1, :cond_7

    .line 158
    .line 159
    const/4 v9, 0x0

    .line 160
    goto :goto_7

    .line 161
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    :goto_7
    return-object v9
.end method
