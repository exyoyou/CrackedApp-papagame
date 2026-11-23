.class public final Lcom/alipay/sdk/packet/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/alipay/sdk/packet/e;->a:Z

    .line 5
    .line 6
    invoke-static {}, Lcom/alipay/sdk/util/j;->n()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/alipay/sdk/packet/e;->b:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    aput-object p0, v1, v2

    .line 14
    .line 15
    const-string p0, "%05d"

    .line 16
    .line 17
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lv/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static f(Ljava/lang/String;[B)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lv/e;->b(Ljava/lang/String;[B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static varargs g([[B)[B
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    .line 13
    .line 14
    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    :goto_0
    :try_start_2
    array-length v5, p0

    .line 22
    if-ge v4, v5, :cond_1

    .line 23
    .line 24
    aget-object v5, p0, v4

    .line 25
    .line 26
    array-length v5, v5

    .line 27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    const-string v7, "%05d"

    .line 32
    .line 33
    const/4 v8, 0x1

    .line 34
    new-array v8, v8, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    aput-object v5, v8, v3

    .line 41
    .line 42
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 51
    .line 52
    .line 53
    aget-object v5, p0, v4

    .line 54
    .line 55
    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 65
    .line 66
    .line 67
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 69
    .line 70
    .line 71
    :catch_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 72
    .line 73
    .line 74
    goto :goto_6

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_1

    .line 77
    :catch_1
    nop

    .line 78
    goto :goto_4

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    move-object v2, v0

    .line 81
    :goto_1
    move-object v0, v1

    .line 82
    goto :goto_2

    .line 83
    :catch_2
    nop

    .line 84
    move-object v2, v0

    .line 85
    goto :goto_4

    .line 86
    :catchall_2
    move-exception p0

    .line 87
    move-object v2, v0

    .line 88
    :goto_2
    if-eqz v0, :cond_2

    .line 89
    .line 90
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :catch_3
    nop

    .line 95
    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 96
    .line 97
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 98
    .line 99
    .line 100
    :catch_4
    :cond_3
    throw p0

    .line 101
    :catch_5
    nop

    .line 102
    move-object v1, v0

    .line 103
    move-object v2, v1

    .line 104
    :goto_4
    if-eqz v1, :cond_4

    .line 105
    .line 106
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :catch_6
    nop

    .line 111
    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 112
    .line 113
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 114
    .line 115
    .line 116
    :catch_7
    :cond_5
    :goto_6
    return-object v0
.end method

.method private static h(Ljava/lang/String;[B)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lv/e;->d(Ljava/lang/String;[B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final b(Lcom/alipay/sdk/packet/c;)Lcom/alipay/sdk/packet/b;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 3
    .line 4
    iget-object v2, p1, Lcom/alipay/sdk/packet/c;->b:[B

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    :try_start_1
    new-array v3, v2, [B

    .line 11
    .line 12
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 13
    .line 14
    .line 15
    new-instance v4, Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 18
    .line 19
    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    new-array v3, v3, [B

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 27
    .line 28
    .line 29
    new-instance v4, Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    :try_start_2
    new-array v2, v2, [B

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 37
    .line 38
    .line 39
    new-instance v3, Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-lez v2, :cond_2

    .line 49
    .line 50
    new-array v2, v2, [B

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 53
    .line 54
    .line 55
    iget-boolean v3, p0, Lcom/alipay/sdk/packet/e;->a:Z

    .line 56
    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    iget-object v3, p0, Lcom/alipay/sdk/packet/e;->b:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v3, v2}, Lv/e;->d(Ljava/lang/String;[B)[B

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :cond_0
    iget-boolean p1, p1, Lcom/alipay/sdk/packet/c;->a:Z

    .line 66
    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    invoke-static {v2}, Lv/c;->b([B)[B

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/String;

    .line 74
    .line 75
    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    move-object p1, v0

    .line 80
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :catch_0
    nop

    .line 85
    goto :goto_4

    .line 86
    :catch_1
    nop

    .line 87
    goto :goto_2

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    move-object v0, v1

    .line 90
    goto :goto_1

    .line 91
    :catch_2
    nop

    .line 92
    move-object v4, v0

    .line 93
    goto :goto_2

    .line 94
    :catchall_1
    move-exception p1

    .line 95
    :goto_1
    if-eqz v0, :cond_3

    .line 96
    .line 97
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 98
    .line 99
    .line 100
    :catch_3
    :cond_3
    throw p1

    .line 101
    :catch_4
    nop

    .line 102
    move-object v1, v0

    .line 103
    move-object v4, v1

    .line 104
    :goto_2
    if-eqz v1, :cond_4

    .line 105
    .line 106
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :catch_5
    nop

    .line 111
    :cond_4
    :goto_3
    move-object p1, v0

    .line 112
    :goto_4
    if-nez v4, :cond_5

    .line 113
    .line 114
    if-nez p1, :cond_5

    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_5
    new-instance v0, Lcom/alipay/sdk/packet/b;

    .line 118
    .line 119
    invoke-direct {v0, v4, p1}, Lcom/alipay/sdk/packet/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-object v0
.end method

.method public final c(Lcom/alipay/sdk/packet/b;Z)Lcom/alipay/sdk/packet/c;
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/alipay/sdk/packet/b;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p1, p1, Lcom/alipay/sdk/packet/b;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    :try_start_0
    invoke-static {p1}, Lv/c;->a([B)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    nop

    .line 26
    const/4 p2, 0x0

    .line 27
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/alipay/sdk/packet/e;->a:Z

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Lcom/alipay/sdk/packet/e;->b:Ljava/lang/String;

    .line 34
    .line 35
    sget-object v5, Lu/a;->b:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v2, v5}, Lv/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v5, p0, Lcom/alipay/sdk/packet/e;->b:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v5, p1}, Lv/e;->b(Ljava/lang/String;[B)[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 v5, 0x3

    .line 48
    new-array v5, v5, [[B

    .line 49
    .line 50
    aput-object v0, v5, v1

    .line 51
    .line 52
    aput-object v2, v5, v3

    .line 53
    .line 54
    aput-object p1, v5, v4

    .line 55
    .line 56
    invoke-static {v5}, Lcom/alipay/sdk/packet/e;->g([[B)[B

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    new-array v2, v4, [[B

    .line 62
    .line 63
    aput-object v0, v2, v1

    .line 64
    .line 65
    aput-object p1, v2, v3

    .line 66
    .line 67
    invoke-static {v2}, Lcom/alipay/sdk/packet/e;->g([[B)[B

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :goto_1
    new-instance v0, Lcom/alipay/sdk/packet/c;

    .line 72
    .line 73
    invoke-direct {v0, p2, p1}, Lcom/alipay/sdk/packet/c;-><init>(Z[B)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method
