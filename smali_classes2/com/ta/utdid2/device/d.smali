.class public Lcom/ta/utdid2/device/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final i:Ljava/lang/String; = "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

.field private static final j:Ljava/lang/Object;

.field private static k:Lcom/ta/utdid2/device/d; = null

.field static final l:Ljava/lang/String; = "dxCRMxhQkdGePGnp"

.field static final m:Ljava/lang/String; = "mqBRboGZkQPcAkyk"

.field private static final n:Ljava/lang/String; = ".DataStorage"

.field private static final o:Ljava/lang/String; = "ContextData"

.field private static final p:Ljava/lang/String;

.field private static final q:Ljava/lang/String; = "Alvin2"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/ta/utdid2/device/f;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/ta/utdid2/core/persistent/c;

.field private g:Lcom/ta/utdid2/core/persistent/c;

.field private h:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ta/utdid2/device/d;->j:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, ".UTSystemConfig"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "Global"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/ta/utdid2/device/d;->p:Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->c:Lcom/ta/utdid2/device/f;

    .line 10
    .line 11
    const-string v1, "xx_utdid_key"

    .line 12
    .line 13
    iput-object v1, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "xx_utdid_domain"

    .line 16
    .line 17
    iput-object v1, p0, Lcom/ta/utdid2/device/d;->e:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->f:Lcom/ta/utdid2/core/persistent/c;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    .line 22
    .line 23
    const-string v0, "[^0-9a-zA-Z=/+]+"

    .line 24
    .line 25
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->h:Ljava/util/regex/Pattern;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    .line 32
    .line 33
    new-instance v0, Lcom/ta/utdid2/core/persistent/c;

    .line 34
    .line 35
    sget-object v3, Lcom/ta/utdid2/device/d;->p:Ljava/lang/String;

    .line 36
    .line 37
    const-string v4, "Alvin2"

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x1

    .line 41
    move-object v1, v0

    .line 42
    move-object v2, p1

    .line 43
    invoke-direct/range {v1 .. v6}, Lcom/ta/utdid2/core/persistent/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    .line 47
    .line 48
    new-instance v0, Lcom/ta/utdid2/core/persistent/c;

    .line 49
    .line 50
    const-string v9, ".DataStorage"

    .line 51
    .line 52
    const-string v10, "ContextData"

    .line 53
    .line 54
    const/4 v11, 0x0

    .line 55
    const/4 v12, 0x1

    .line 56
    move-object v7, v0

    .line 57
    move-object v8, p1

    .line 58
    invoke-direct/range {v7 .. v12}, Lcom/ta/utdid2/core/persistent/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->f:Lcom/ta/utdid2/core/persistent/c;

    .line 62
    .line 63
    new-instance p1, Lcom/ta/utdid2/device/f;

    .line 64
    .line 65
    invoke-direct {p1}, Lcom/ta/utdid2/device/f;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/ta/utdid2/device/d;->c:Lcom/ta/utdid2/device/f;

    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    new-array v0, p1, [Ljava/lang/Object;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/i;->b(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/4 v2, 0x0

    .line 84
    aput-object v1, v0, v2

    .line 85
    .line 86
    const-string v1, "K_%d"

    .line 87
    .line 88
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    .line 93
    .line 94
    new-array p1, p1, [Ljava/lang/Object;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->e:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/i;->b(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    aput-object v0, p1, v2

    .line 107
    .line 108
    const-string v0, "D_%d"

    .line 109
    .line 110
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/ta/utdid2/device/d;->e:Ljava/lang/String;

    .line 115
    .line 116
    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "HmacSHA1"

    .line 2
    .line 3
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 8
    .line 9
    const-string v2, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 v0, 0x2

    .line 30
    invoke-static {p0, v0}, Lcom/ta/utdid2/android/utils/b;->f([BI)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method private final b()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0x3e8

    .line 11
    .line 12
    div-long/2addr v1, v3

    .line 13
    long-to-int v2, v1

    .line 14
    new-instance v1, Ljava/util/Random;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/e;->a(I)[B

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/e;->a(I)[B

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x4

    .line 33
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/g;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v2, Ljava/util/Random;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :goto_0
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/i;->b(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/e;->a(I)[B

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v1}, Lcom/ta/utdid2/device/d;->a([B)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/i;->b(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/e;->a(I)[B

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0
.end method

.method private c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const-string v1, "UTDID2"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/c;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    .line 18
    .line 19
    const-string v1, "UTDID"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/c;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->k(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    .line 35
    .line 36
    const-string v1, "DID"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/c;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v2, 0x1

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/c;->u(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    .line 58
    .line 59
    const-string v3, "EI"

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Lcom/ta/utdid2/core/persistent/c;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/core/persistent/c;->u(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    .line 78
    .line 79
    const-string v3, "SI"

    .line 80
    .line 81
    invoke-virtual {v1, v3}, Lcom/ta/utdid2/core/persistent/c;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_3

    .line 90
    .line 91
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/core/persistent/c;->u(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move v2, v0

    .line 98
    :goto_1
    if-eqz v2, :cond_4

    .line 99
    .line 100
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/ta/utdid2/core/persistent/c;->c()Z

    .line 103
    .line 104
    .line 105
    :cond_4
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "UTDID2"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/c;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->c:Lcom/ta/utdid2/device/f;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/ta/utdid2/device/f;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lcom/ta/utdid2/device/d;
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    sget-object v0, Lcom/ta/utdid2/device/d;->k:Lcom/ta/utdid2/device/d;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/ta/utdid2/device/d;->j:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lcom/ta/utdid2/device/d;->k:Lcom/ta/utdid2/device/d;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/ta/utdid2/device/d;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/ta/utdid2/device/d;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/ta/utdid2/device/d;->k:Lcom/ta/utdid2/device/d;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/ta/utdid2/device/d;->c()V

    .line 22
    .line 23
    .line 24
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0

    .line 28
    throw p0

    .line 29
    :cond_1
    :goto_0
    sget-object p0, Lcom/ta/utdid2/device/d;->k:Lcom/ta/utdid2/device/d;

    .line 30
    .line 31
    return-object p0
.end method

.method private g(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    const-string v1, "\n"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-int/2addr v1, v2

    .line 18
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/16 v3, 0x18

    .line 27
    .line 28
    if-ne v3, v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->h:Ljava/util/regex/Pattern;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    return v2

    .line 43
    :cond_1
    return v0
.end method

.method private h(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->f:Lcom/ta/utdid2/core/persistent/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/c;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->f:Lcom/ta/utdid2/core/persistent/c;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/core/persistent/c;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/ta/utdid2/device/d;->f:Lcom/ta/utdid2/core/persistent/c;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/ta/utdid2/core/persistent/c;->c()Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "mqBRboGZkQPcAkyk"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "android.permission.WRITE_SETTINGS"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const-string v1, "\n"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/16 v2, 0x18

    .line 43
    .line 44
    if-ne v2, v1, :cond_1

    .line 45
    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    const/4 v1, 0x0

    .line 58
    :goto_0
    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    .line 72
    .line 73
    :catch_1
    :cond_1
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.WRITE_SETTINGS"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/d;->l(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private k(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string v0, "\n"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/16 v1, 0x18

    .line 31
    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const-string v1, "UTDID2"

    .line 39
    .line 40
    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/core/persistent/c;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/ta/utdid2/core/persistent/c;->c()Z

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "dxCRMxhQkdGePGnp"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    .line 29
    .line 30
    :catch_1
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized e()Ljava/lang/String;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :cond_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    .line 10
    :try_start_2
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "mqBRboGZkQPcAkyk"

    .line 17
    .line 18
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :catch_0
    :try_start_3
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-object v0

    .line 30
    :cond_1
    :try_start_4
    new-instance v0, Lcom/ta/utdid2/device/e;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/ta/utdid2/device/e;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    :try_start_5
    iget-object v2, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "dxCRMxhQkdGePGnp"

    .line 43
    .line 44
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 48
    goto :goto_0

    .line 49
    :catch_1
    move-object v2, v1

    .line 50
    :goto_0
    :try_start_6
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/ta/utdid2/device/e;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/d;->i(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 67
    .line 68
    .line 69
    monitor-exit p0

    .line 70
    return-object v3

    .line 71
    :cond_2
    :try_start_7
    invoke-virtual {v0, v2}, Lcom/ta/utdid2/device/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_3

    .line 80
    .line 81
    iget-object v4, p0, Lcom/ta/utdid2/device/d;->c:Lcom/ta/utdid2/device/f;

    .line 82
    .line 83
    invoke-virtual {v4, v3}, Lcom/ta/utdid2/device/f;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v3}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-nez v4, :cond_3

    .line 92
    .line 93
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/d;->j(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 94
    .line 95
    .line 96
    :try_start_8
    iget-object v3, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const-string v4, "dxCRMxhQkdGePGnp"

    .line 103
    .line 104
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 108
    :catch_2
    :cond_3
    :try_start_9
    iget-object v3, p0, Lcom/ta/utdid2/device/d;->c:Lcom/ta/utdid2/device/f;

    .line 109
    .line 110
    invoke-virtual {v3, v2}, Lcom/ta/utdid2/device/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_4

    .line 119
    .line 120
    iput-object v3, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;

    .line 121
    .line 122
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/d;->k(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, v2}, Lcom/ta/utdid2/device/d;->h(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;

    .line 129
    .line 130
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->i(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 134
    .line 135
    monitor-exit p0

    .line 136
    return-object v0

    .line 137
    :cond_4
    const/4 v2, 0x0

    .line 138
    goto :goto_1

    .line 139
    :cond_5
    const/4 v2, 0x1

    .line 140
    :goto_1
    :try_start_a
    invoke-direct {p0}, Lcom/ta/utdid2/device/d;->d()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_7

    .line 149
    .line 150
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->c:Lcom/ta/utdid2/device/f;

    .line 151
    .line 152
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/f;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-eqz v2, :cond_6

    .line 157
    .line 158
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->j(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_6
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/d;->i(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->h(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iput-object v3, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 168
    .line 169
    monitor-exit p0

    .line 170
    return-object v3

    .line 171
    :cond_7
    :try_start_b
    iget-object v3, p0, Lcom/ta/utdid2/device/d;->f:Lcom/ta/utdid2/core/persistent/c;

    .line 172
    .line 173
    iget-object v4, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v3, v4}, Lcom/ta/utdid2/core/persistent/c;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-static {v3}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-nez v4, :cond_a

    .line 184
    .line 185
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-nez v4, :cond_8

    .line 194
    .line 195
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->c:Lcom/ta/utdid2/device/f;

    .line 196
    .line 197
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    :cond_8
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_a

    .line 206
    .line 207
    iget-object v3, p0, Lcom/ta/utdid2/device/d;->c:Lcom/ta/utdid2/device/f;

    .line 208
    .line 209
    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/f;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-nez v4, :cond_a

    .line 218
    .line 219
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;

    .line 220
    .line 221
    if-eqz v2, :cond_9

    .line 222
    .line 223
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/d;->j(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_9
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;

    .line 227
    .line 228
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->k(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 232
    .line 233
    monitor-exit p0

    .line 234
    return-object v0

    .line 235
    :cond_a
    :try_start_c
    invoke-direct {p0}, Lcom/ta/utdid2/device/d;->b()[B

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    if-eqz v0, :cond_d

    .line 240
    .line 241
    const/4 v3, 0x2

    .line 242
    invoke-static {v0, v3}, Lcom/ta/utdid2/android/utils/b;->f([BI)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    iput-object v3, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;

    .line 247
    .line 248
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/d;->k(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object v3, p0, Lcom/ta/utdid2/device/d;->c:Lcom/ta/utdid2/device/f;

    .line 252
    .line 253
    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/f;->c([B)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    if-eqz v0, :cond_c

    .line 258
    .line 259
    if-eqz v2, :cond_b

    .line 260
    .line 261
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->j(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :cond_b
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->h(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    :cond_c
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 268
    .line 269
    monitor-exit p0

    .line 270
    return-object v0

    .line 271
    :catch_3
    move-exception v0

    .line 272
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 273
    .line 274
    .line 275
    :cond_d
    monitor-exit p0

    .line 276
    return-object v1

    .line 277
    :catchall_0
    move-exception v0

    .line 278
    monitor-exit p0

    .line 279
    throw v0
.end method
