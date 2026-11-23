.class public Lcom/papa91/utils/HttpUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static EXIT_AD_URL:Ljava/lang/String; = "http://anv9.ctapi.5fun.com"

.field public static GAME_URL:Ljava/lang/String; = "http://anctapi.5fun.com"

.field public static REWARD_CONFIG_URL:Ljava/lang/String; = "http://anv3btapi.5fun.com"

.field public static RealName_URL:Ljava/lang/String; = "http://anctapi.5fun.com"

.field protected static final SHOW_RESPONSE:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/papa91/utils/HttpUtils;->lambda$post$0(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V

    return-void
.end method

.method private static synthetic lambda$post$0(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    .line 13
    :try_start_1
    const-string v0, "POST"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/util/Map$Entry;

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p0, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    :goto_1
    const-string p1, "Content-Type"

    .line 68
    .line 69
    const-string v0, "application/json;charset=utf-8"

    .line 70
    .line 71
    invoke-virtual {p0, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    const-string v0, ""

    .line 79
    .line 80
    if-nez p1, :cond_3

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    move-object p2, v0

    .line 84
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    const/16 p2, 0xc8

    .line 106
    .line 107
    if-ne p1, p2, :cond_5

    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    new-instance p2, Ljava/io/BufferedReader;

    .line 114
    .line 115
    new-instance v0, Ljava/io/InputStreamReader;

    .line 116
    .line 117
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 118
    .line 119
    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 123
    .line 124
    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    :goto_3
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_4
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-eqz p3, :cond_6

    .line 148
    .line 149
    invoke-interface {p3, p1}, Lcom/papa91/arc/http/HttpUtils$OnResult;->onSuccess(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    if-eqz p3, :cond_6

    .line 169
    .line 170
    invoke-interface {p3, p1}, Lcom/papa91/arc/http/HttpUtils$OnResult;->onFailure(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    .line 172
    .line 173
    :cond_6
    :goto_4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 174
    .line 175
    .line 176
    goto :goto_6

    .line 177
    :catchall_0
    move-exception p1

    .line 178
    move-object v0, p0

    .line 179
    goto :goto_7

    .line 180
    :catch_0
    move-object v0, p0

    .line 181
    goto :goto_5

    .line 182
    :catchall_1
    move-exception p1

    .line 183
    goto :goto_7

    .line 184
    :catch_1
    :goto_5
    :try_start_3
    const-string p0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 185
    .line 186
    if-eqz p3, :cond_7

    .line 187
    .line 188
    invoke-interface {p3, p0}, Lcom/papa91/arc/http/HttpUtils$OnResult;->onFailure(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 189
    .line 190
    .line 191
    :cond_7
    if-eqz v0, :cond_8

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 194
    .line 195
    .line 196
    :cond_8
    :goto_6
    return-void

    .line 197
    :goto_7
    if-eqz v0, :cond_9

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 200
    .line 201
    .line 202
    :cond_9
    throw p1
.end method

.method public static post(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/papa91/arc/http/HttpUtils$OnResult;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/papa91/utils/a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa91/utils/a;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getUserRewardConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/utils/HttpFinishInterface;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v7, Lcom/papa91/utils/HttpUtils$2;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/papa91/utils/HttpUtils$2;-><init>(Lcom/papa91/utils/HttpUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/utils/HttpFinishInterface;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public sendRequestWithHttpClient(Ljava/lang/String;Ljava/lang/String;Lcom/papa91/utils/HttpFinishInterface;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/papa91/utils/HttpUtils$1;

    .line 7
    .line 8
    invoke-direct {v1, p0, p3}, Lcom/papa91/utils/HttpUtils$1;-><init>(Lcom/papa91/utils/HttpUtils;Lcom/papa91/utils/HttpFinishInterface;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0, p2, v1}, Lcom/papa91/utils/HttpUtils;->post(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
