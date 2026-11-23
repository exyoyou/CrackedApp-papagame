.class public final Lms/bz/bd/c/Pgl/w1;
.super Lms/bz/bd/c/Pgl/pbly;
.source "SourceFile"


# instance fields
.field private c:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bz/bd/c/Pgl/pbly;-><init>()V

    return-void
.end method

.method private c(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;
    .locals 22

    .line 3
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    new-instance v5, Lms/bz/bd/c/Pgl/pblx$pgla;

    invoke-direct {v5}, Lms/bz/bd/c/Pgl/pblx$pgla;-><init>()V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/16 v10, 0xa

    const/4 v12, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    instance-of v0, v13, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v14, 0x3

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, v1, Lms/bz/bd/c/Pgl/w1;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    const-class v15, Lms/bz/bd/c/Pgl/w1;

    :try_start_2
    monitor-enter v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, v1, Lms/bz/bd/c/Pgl/w1;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    const v16, 0x1000001

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-string v20, "3d8e82"

    new-array v0, v14, [B

    fill-array-data v0, :array_0

    move-object/from16 v21, v0

    invoke-static/range {v16 .. v21}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0, v12, v12, v12}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, v1, Lms/bz/bd/c/Pgl/w1;->c:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v15

    goto :goto_2

    :goto_1
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_1
    :goto_2
    iget-object v0, v1, Lms/bz/bd/c/Pgl/w1;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_2

    move-object v15, v13

    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v21, v12

    goto/16 :goto_10

    :catch_0
    :cond_2
    :goto_3
    const/16 v0, 0x2710

    :try_start_5
    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x1388

    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const v15, 0x1000001

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-string v19, "673040"

    new-array v0, v9, [B

    fill-array-data v0, :array_1

    move-object/from16 v20, v0

    invoke-static/range {v15 .. v20}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v15, 0x1000001

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-string v19, "8ba241"

    new-array v14, v14, [B

    fill-array-data v14, :array_2

    move-object/from16 v20, v14

    invoke-static/range {v15 .. v20}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v0, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const v15, 0x1000001

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-string v19, "464301"

    new-array v0, v10, [B

    fill-array-data v0, :array_3

    move-object/from16 v20, v0

    invoke-static/range {v15 .. v20}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v14, 0x1000001

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-string v18, "cf5d70"

    new-array v11, v10, [B

    fill-array-data v11, :array_4

    move-object/from16 v19, v11

    invoke-static/range {v14 .. v19}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v0, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const v14, 0x1000001

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-string v18, "9af031"

    new-array v0, v10, [B

    fill-array-data v0, :array_5

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v14, 0x1000001

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-string v18, "f1782b"

    const/16 v11, 0xf

    new-array v11, v11, [B

    fill-array-data v11, :array_6

    move-object/from16 v19, v11

    invoke-static/range {v14 .. v19}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v0, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const v14, 0x1000001

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-string v18, "123594"

    const/16 v0, 0xc

    new-array v11, v0, [B

    fill-array-data v11, :array_7

    move-object/from16 v19, v11

    invoke-static/range {v14 .. v19}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const v14, 0x1000001

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-string v18, "47690f"

    const/16 v12, 0x18

    new-array v12, v12, [B

    fill-array-data v12, :array_8

    move-object/from16 v19, v12

    invoke-static/range {v14 .. v19}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v11, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    const v14, 0x1000001

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-string v18, "fa93c9"

    new-array v11, v9, [B

    fill-array-data v11, :array_9

    move-object/from16 v19, v11

    invoke-static/range {v14 .. v19}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const v14, 0x1000001

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-string v18, "5eeea1"

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v12, v6, [Ljava/lang/Object;

    aput-object p3, v12, v7

    invoke-static {v0, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v11, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    const v14, 0x1000001

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-string v18, "1f6231"

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_b

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v13, v0, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v5, v2}, Lms/bz/bd/c/Pgl/pblx$pgla;->c(Ljava/lang/String;)V

    if-eqz p6, :cond_5

    const v14, 0x1000001

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-string v18, "8ddb8e"

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v13}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v3, p2

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catch_1
    const/4 v11, -0x1

    goto/16 :goto_a

    :cond_5
    const/4 v2, 0x0

    :goto_4
    :try_start_7
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const v14, 0x1000001

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    :try_start_8
    const-string v18, "3f5d7e"

    new-array v0, v10, [B

    fill-array-data v0, :array_d

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v11}, Lms/bz/bd/c/Pgl/pblx$pgla;->c(Ljava/lang/String;I)V

    const/16 v0, 0xc8

    if-ne v11, v0, :cond_9

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v4, :cond_6

    :try_start_9
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_5
    const/16 v4, 0x100

    new-array v4, v4, [B

    :goto_6
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_7

    invoke-virtual {v0, v4, v7, v12}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    instance-of v4, v0, Ljava/io/ByteArrayOutputStream;

    if-eqz v4, :cond_8

    move-object v4, v0

    check-cast v4, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v12, v3

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v12, v3

    goto/16 :goto_11

    :cond_9
    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_8
    invoke-static {v12}, Lms/bz/bd/c/Pgl/pbly;->c(Ljava/io/BufferedInputStream;)V

    invoke-static {v2}, Lms/bz/bd/c/Pgl/pbly;->c(Ljava/io/DataOutputStream;)V

    :try_start_a
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_9

    :catch_2
    new-array v0, v8, [B

    fill-array-data v0, :array_e

    const v2, 0x1000001

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    const-string v5, "d95470"

    move/from16 p1, v2

    move/from16 p2, v3

    move-wide/from16 p3, v8

    move-object/from16 p5, v5

    move-object/from16 p6, v0

    invoke-static/range {p1 .. p6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    move-object v12, v4

    goto/16 :goto_f

    :catch_3
    :goto_a
    const/4 v3, 0x0

    goto :goto_c

    :catchall_3
    move-exception v0

    const/4 v12, 0x0

    goto/16 :goto_11

    :catchall_4
    move-exception v0

    const/4 v12, 0x0

    goto :goto_b

    :catchall_5
    move-exception v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_b
    const/16 v21, 0x0

    goto/16 :goto_10

    :catch_4
    const/4 v13, 0x0

    :catch_5
    const/4 v2, 0x0

    :catch_6
    const/4 v3, 0x0

    const/4 v11, -0x1

    :catch_7
    :goto_c
    const v0, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v14, 0x0

    :try_start_b
    const-string v12, "eaf1ba"

    new-array v9, v9, [B

    fill-array-data v9, :array_f

    move/from16 p1, v0

    move/from16 p2, v4

    move-wide/from16 p3, v14

    move-object/from16 p5, v12

    move-object/from16 p6, v9

    invoke-static/range {p1 .. p6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v13, :cond_a

    const v0, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v14, 0x0

    const-string v9, "04f947"

    new-array v10, v10, [B

    fill-array-data v10, :array_10

    move/from16 p1, v0

    move/from16 p2, v4

    move-wide/from16 p3, v14

    move-object/from16 p5, v9

    move-object/from16 p6, v10

    invoke-static/range {p1 .. p6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_a
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v5, v0, v11}, Lms/bz/bd/c/Pgl/pblx$pgla;->tt(Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    invoke-static {v3}, Lms/bz/bd/c/Pgl/pbly;->c(Ljava/io/BufferedInputStream;)V

    invoke-static {v2}, Lms/bz/bd/c/Pgl/pbly;->c(Ljava/io/DataOutputStream;)V

    if-eqz v13, :cond_b

    :try_start_c
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_e

    :catch_8
    new-array v0, v8, [B

    fill-array-data v0, :array_11

    const v2, 0x1000001

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-string v8, "9d8303"

    move/from16 p1, v2

    move/from16 p2, v3

    move-wide/from16 p3, v4

    move-object/from16 p5, v8

    move-object/from16 p6, v0

    invoke-static/range {p1 .. p6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_e
    const/4 v12, 0x0

    :goto_f
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    aput-object v12, v0, v6

    return-object v0

    :catchall_6
    move-exception v0

    move-object v12, v2

    move-object/from16 v21, v3

    :goto_10
    move-object v2, v12

    move-object/from16 v12, v21

    :goto_11
    invoke-static {v12}, Lms/bz/bd/c/Pgl/pbly;->c(Ljava/io/BufferedInputStream;)V

    invoke-static {v2}, Lms/bz/bd/c/Pgl/pbly;->c(Ljava/io/DataOutputStream;)V

    if-eqz v13, :cond_c

    :try_start_d
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_12

    :catch_9
    new-array v2, v8, [B

    fill-array-data v2, :array_12

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "bf19a6"

    move/from16 p1, v3

    move/from16 p2, v4

    move-wide/from16 p3, v5

    move-object/from16 p5, v7

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_12
    throw v0

    :array_0
    .array-data 1
        0x16t
        0x4at
        0x78t
    .end array-data

    :array_1
    .array-data 1
        0x6t
        0x36t
        0x43t
        0x41t
        0x1bt
        0x33t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x63t
        0x2ft
        0x58t
    .end array-data

    :array_3
    .array-data 1
        0x6t
        0x3bt
        0x49t
        0x49t
        0xat
        0x25t
        0x23t
        0x1et
        0x6at
        0x6dt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x59t
        0x61t
        0x43t
        0x0t
        0x45t
        0x6t
        0x6ct
        0x4et
        0x72t
        0x31t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x1dt
        0x70t
        0x10t
        0x56t
        0x41t
        0x7t
        0x3dt
        0x45t
        0x39t
        0x74t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x55t
        0x2at
        0x50t
        0x49t
        0x29t
        0x74t
        0x6bt
        0x13t
        0x63t
        0x25t
        0x5at
        0x0t
        0x77t
        0x68t
        0x26t
    .end array-data

    :array_7
    .array-data 1
        0x3t
        0x3ft
        0x4et
        0x55t
        0x3t
        0x2dt
        0x26t
        0x5et
        0x56t
        0x7ct
        0x30t
        0x35t
    .end array-data

    :array_8
    .array-data 1
        0x24t
        0x25t
        0x55t
        0x41t
        0x6t
        0x72t
        0x36t
        0x2t
        0x6et
        0x66t
        0x2bt
        0x7at
        0x4at
        0x4et
        0x1bt
        0x74t
        0x23t
        0x5bt
        0x74t
        0x7dt
        0x37t
        0x30t
        0x44t
        0x40t
    .end array-data

    :array_9
    .array-data 1
        0x54t
        0x6ct
        0x45t
        0x4ct
        0x55t
        0x2bt
    .end array-data

    nop

    :array_a
    .array-data 1
        0x37t
        0x62t
        0x5t
        0x2t
        0x57t
        0x29t
        0x38t
        0x4dt
        0x30t
        0x68t
        0x61t
        0x74t
    .end array-data

    :array_b
    .array-data 1
        0x38t
        0x29t
        0x51t
        0x52t
        0x41t
        0x34t
        0x37t
        0x56t
        0x72t
        0x67t
        0x33t
        0x70t
        0x8t
        0x52t
        0xdt
        0x21t
    .end array-data

    :array_c
    .array-data 1
        0x19t
        0x49t
        0x24t
        0x22t
    .end array-data

    :array_d
    .array-data 1
        0x3at
        0x29t
        0x52t
        0x4t
        0x45t
        0x7et
        0x3ft
        0x40t
        0x6dt
        0x30t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x66t
        0x33t
        0x45t
        0x7ft
        0x0t
        0x36t
        0x35t
    .end array-data

    :array_f
    .array-data 1
        0x67t
        0x6bt
        0x16t
        0x7at
        0x55t
        0x67t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x39t
        0x7bt
        0x1t
        0x59t
        0x46t
        0x2ct
        0x3ct
        0x12t
        0x3et
        0x6dt
    .end array-data

    nop

    :array_11
    .array-data 1
        0x3bt
        0x6et
        0x48t
        0x78t
        0x7t
        0x35t
        0x68t
    .end array-data

    :array_12
    .array-data 1
        0x60t
        0x6ct
        0x41t
        0x72t
        0x56t
        0x30t
        0x33t
    .end array-data
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lms/bz/bd/c/Pgl/w1;->c(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 14

    .line 2
    const/16 v0, 0x19

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "060d54"

    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v7 .. v13}, Lms/bz/bd/c/Pgl/w1;->c(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x12t
        0x2dt
        0x50t
        0x4t
        0xft
        0x2et
        0x1bt
        0x3t
        0x75t
        0x24t
        0x2t
        0x38t
        0x4at
        0x15t
        0x4t
        0x37t
        0x73t
        0x2t
        0x73t
        0x38t
        0x61t
        0x79t
        0xet
        0x5dt
        0x4at
    .end array-data
.end method

.method public final tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lms/bz/bd/c/Pgl/w1;->c(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
