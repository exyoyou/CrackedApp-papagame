.class public Lcn/fly/commons/cc/aa$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/commons/cc/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Lcn/fly/commons/cc/y<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/fly/commons/cc/aa$d;->a:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/fly/commons/cc/aa$d;->b:Ljava/util/HashMap;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/fly/commons/cc/aa$d;->c:Ljava/util/HashMap;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/fly/commons/cc/aa$d;->e:Ljava/util/HashMap;

    .line 8
    iget-object p1, p0, Lcn/fly/commons/cc/aa$d;->b:Ljava/util/HashMap;

    const-string v0, "t_map"

    iget-object v1, p0, Lcn/fly/commons/cc/aa$d;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcn/fly/commons/cc/aa$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/fly/commons/cc/aa$d;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    move-object v1, p1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 30
    :try_start_0
    instance-of v3, v1, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_1

    return-object v0

    .line 31
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 32
    :cond_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 33
    :try_start_1
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 35
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 36
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 37
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    :try_start_2
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object p1

    :catchall_1
    move-exception p1

    move-object v2, v0

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 39
    :goto_1
    :try_start_3
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_4

    const-string p1, "023AchKdg\'cjXgbaMcfdabh>bad:cj\'g[bhbgWc2chgdbibibd"

    .line 40
    invoke-static {p1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v2, :cond_3

    .line 41
    :try_start_4
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_3
    return-object p1

    .line 42
    :cond_4
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v2, :cond_5

    .line 43
    :try_start_6
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    :cond_5
    return-object p1

    :catchall_5
    move-exception p1

    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 44
    :catchall_6
    :cond_6
    throw p1
.end method

.method private a([BLjava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "UTF-8"

    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 46
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "003Vdbegcj"

    invoke-static {v0}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "003:dbegcj"

    .line 48
    invoke-static {v0}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "003j(egcb"

    .line 49
    invoke-static {v0}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "008IdhZjAejgacbcjgiej"

    .line 50
    invoke-static {v0}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "006bAbababg>c;ch"

    .line 51
    invoke-static {v0}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "002>dhcb"

    .line 52
    invoke-static {v0}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0021dhcb"

    invoke-static {v0}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 56
    array-length p2, v2

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p2

    new-array p2, p2, [B

    const/4 v3, 0x0

    .line 57
    array-length v4, v2

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v1

    .line 58
    invoke-virtual {p1, p2, v1}, Ljavax/crypto/Cipher;->doFinal([BI)I

    .line 59
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const-string p1, ""

    return-object p1

    :cond_1
    return-object p2
.end method

.method static synthetic a(Lcn/fly/commons/cc/aa$d;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;Lcn/fly/commons/cc/u$a;Lcn/fly/commons/cc/z;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 60
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0x46

    if-eq v2, v3, :cond_0

    .line 61
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 62
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 63
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v7, p1

    goto :goto_1

    .line 64
    :cond_2
    :goto_0
    new-instance v7, Ljava/util/zip/GZIPInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    move-object/from16 v8, p1

    :try_start_1
    invoke-direct {v7, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 65
    :goto_1
    :try_start_2
    new-instance v8, Ljava/io/BufferedInputStream;

    const/16 v9, 0x1000

    invoke-direct {v8, v7, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 66
    :try_start_3
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    .line 67
    :try_start_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_3

    .line 70
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 71
    :cond_3
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v10, :cond_4

    .line 72
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 73
    :cond_4
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v10, :cond_5

    .line 74
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readFloat()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 75
    :cond_5
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v10, :cond_6

    .line 76
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 77
    :cond_6
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v10, :cond_7

    .line 78
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 79
    :cond_7
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    if-ne v5, v6, :cond_b

    .line 80
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    new-array v12, v12, [B

    .line 81
    invoke-virtual {v7, v12}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 82
    :try_start_5
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 83
    :try_start_6
    new-instance v12, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v12, v13}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 84
    new-instance v14, Ljava/io/BufferedInputStream;

    const/16 v15, 0x800

    invoke-direct {v14, v12, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 85
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v10, :cond_8

    .line 86
    :try_start_7
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v12

    goto :goto_8

    .line 87
    :cond_8
    :try_start_8
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v13, v2

    :goto_8
    if-nez v2, :cond_9

    if-eqz v13, :cond_a

    .line 88
    invoke-virtual {v13}, Ljava/io/ByteArrayInputStream;->close()V

    goto :goto_9

    .line 89
    :cond_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 90
    :cond_a
    :goto_9
    throw v0

    :cond_b
    const/4 v12, 0x0

    :goto_a
    if-ge v12, v10, :cond_c

    .line 91
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 92
    :cond_c
    :goto_b
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    const/16 v12, 0xf

    if-ne v10, v12, :cond_14

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 94
    iget-object v10, v1, Lcn/fly/commons/cc/aa$d;->c:Ljava/util/HashMap;

    const-string v14, "lc_t"

    sub-long v3, v12, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 96
    new-instance v3, Lcn/fly/commons/cc/aa$b;

    invoke-virtual/range {p2 .. p2}, Lcn/fly/commons/cc/u$a;->a()I

    move-result v4

    invoke-direct {v3, v9, v7, v4, v2}, Lcn/fly/commons/cc/aa$b;-><init>(Ljava/util/ArrayList;Ljava/io/DataInputStream;ILcn/fly/commons/cc/aa$1;)V

    goto :goto_c

    .line 97
    :cond_d
    new-instance v3, Lcn/fly/commons/cc/aa$a;

    invoke-virtual/range {p2 .. p2}, Lcn/fly/commons/cc/u$a;->a()I

    move-result v4

    invoke-direct {v3, v9, v7, v4, v2}, Lcn/fly/commons/cc/aa$a;-><init>(Ljava/util/ArrayList;Ljava/io/DataInputStream;ILcn/fly/commons/cc/aa$1;)V

    .line 98
    :goto_c
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 99
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v9

    .line 100
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    const/16 v14, 0x19

    if-ne v10, v14, :cond_13

    .line 101
    invoke-virtual {v0, v4, v9}, Lcn/fly/commons/cc/u$a;->a(IZ)V

    :goto_d
    if-ge v11, v4, :cond_e

    .line 102
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-virtual {v0, v9, v3}, Lcn/fly/commons/cc/u$a;->a(BLcn/fly/commons/cc/aa$a;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 103
    :cond_e
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/16 v3, 0x27

    if-ne v0, v3, :cond_12

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 105
    iget-object v0, v1, Lcn/fly/commons/cc/aa$d;->c:Ljava/util/HashMap;

    const-string v9, "lcmd_t"

    sub-long v10, v3, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 106
    :try_start_9
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [B

    .line 107
    invoke-virtual {v7, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-ne v5, v6, :cond_11

    .line 108
    :try_start_a
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 109
    :try_start_b
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 110
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 111
    :try_start_c
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [B

    .line 112
    invoke-virtual {v6, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 113
    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object v2, v6

    goto :goto_e

    :catchall_4
    move-exception v0

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v5, v2

    :goto_e
    if-nez v2, :cond_f

    if-eqz v5, :cond_10

    .line 114
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    goto :goto_f

    .line 115
    :cond_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 116
    :cond_10
    :goto_f
    throw v0

    :cond_11
    :goto_10
    move-object/from16 v2, p3

    .line 117
    invoke-virtual {v2, v0}, Lcn/fly/commons/cc/z;->a([B)V

    .line 118
    iget-object v0, v1, Lcn/fly/commons/cc/aa$d;->c:Ljava/util/HashMap;

    const-string v2, "mreg_t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 119
    :catchall_6
    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catchall_7
    return-void

    .line 120
    :cond_12
    :try_start_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "data has offset in pos 3"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "data has offset in pos 2"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "data has offset in pos 1"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :catchall_8
    move-exception v0

    move-object v2, v7

    goto :goto_11

    :catchall_9
    move-exception v0

    move-object v8, v7

    goto :goto_11

    :catchall_a
    move-exception v0

    goto :goto_11

    :catchall_b
    move-exception v0

    move-object/from16 v8, p1

    :goto_11
    if-eqz v2, :cond_15

    .line 123
    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_12

    .line 124
    :cond_15
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    .line 125
    :catchall_c
    :goto_12
    throw v0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/fly/commons/cc/aa$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+",
            "Lcn/fly/commons/cc/y<",
            "TT;>;>;)",
            "Lcn/fly/commons/cc/aa$d;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcn/fly/commons/cc/aa$d;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcn/fly/commons/cc/aa$d;
    .locals 0

    .line 5
    iput-object p1, p0, Lcn/fly/commons/cc/aa$d;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcn/fly/commons/cc/aa$d;"
        }
    .end annotation

    .line 4
    invoke-static {p1, p2}, Lcn/fly/commons/cc/t;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/cc/aa$d;
    .locals 1

    .line 3
    iget-object v0, p0, Lcn/fly/commons/cc/aa$d;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 7
    new-instance v0, Lcn/fly/commons/cc/u$a;

    invoke-direct {v0}, Lcn/fly/commons/cc/u$a;-><init>()V

    .line 8
    iget-object v1, p0, Lcn/fly/commons/cc/aa$d;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "UTF-8"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x10

    new-array v3, v2, [B

    .line 10
    array-length v4, v1

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    :try_start_0
    new-instance v2, Lcn/fly/commons/cc/z;

    invoke-direct {v2}, Lcn/fly/commons/cc/z;-><init>()V

    .line 12
    iget-object v3, p0, Lcn/fly/commons/cc/aa$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 13
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 14
    new-instance v5, Ljava/io/FileInputStream;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_1
    instance-of v5, v4, [B

    if-eqz v5, :cond_2

    .line 16
    new-instance v5, Ljava/io/ByteArrayInputStream;

    check-cast v4, [B

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 17
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 18
    invoke-direct {p0, v5, v0, v2}, Lcn/fly/commons/cc/aa$d;->a(Ljava/io/InputStream;Lcn/fly/commons/cc/u$a;Lcn/fly/commons/cc/z;)V

    .line 19
    iget-object v4, p0, Lcn/fly/commons/cc/aa$d;->c:Ljava/util/HashMap;

    const-string v5, "l_t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 20
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v2, "program is not string or byte array"

    invoke-direct {v0, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_3
    iget-object v3, p0, Lcn/fly/commons/cc/aa$d;->e:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v2, v5, v4}, Lcn/fly/commons/cc/z;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_3

    .line 23
    :cond_4
    invoke-virtual {v0}, Lcn/fly/commons/cc/u$a;->b()Lcn/fly/commons/cc/u;

    move-result-object v0

    new-instance v3, Lcn/fly/commons/cc/t;

    iget-object v4, p0, Lcn/fly/commons/cc/aa$d;->b:Ljava/util/HashMap;

    invoke-direct {v3, v4, v2}, Lcn/fly/commons/cc/t;-><init>(Ljava/util/HashMap;Lcn/fly/commons/cc/z;)V

    invoke-virtual {v0, v3, v2}, Lcn/fly/commons/cc/u;->a(Lcn/fly/commons/cc/t;Lcn/fly/commons/cc/z;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_7

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 25
    :goto_4
    instance-of v3, v0, Lcn/fly/commons/cc/x;

    if-eqz v3, :cond_6

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 27
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    new-instance v3, Lcn/fly/commons/cc/x;

    invoke-direct {p0, v1, v2}, Lcn/fly/commons/cc/aa$d;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Lcn/fly/commons/cc/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 29
    :cond_7
    throw v0
.end method
