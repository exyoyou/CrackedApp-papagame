.class public Lcom/sdk/w/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/util/List;Lcom/sdk/e/a;)Lcom/sdk/a/c;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sdk/e/a<",
            "TT;>;)",
            "Lcom/sdk/a/c<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v1, p3

    const-string v2, "sign"

    new-instance v3, Lcom/sdk/y/a;

    move-object/from16 v4, p1

    move-object/from16 v0, p4

    invoke-direct {v3, v4, v1, v0}, Lcom/sdk/y/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sdk/e/a;)V

    .line 1
    new-instance v5, Lcom/sdk/base/framework/bean/DataInfo;

    invoke-direct {v5}, Lcom/sdk/base/framework/bean/DataInfo;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "-"

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_6

    const/4 v12, 0x0

    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_4

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_3

    array-length v14, v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_1

    const-string v14, "127"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "192"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v0, v6

    goto :goto_1

    :cond_1
    const-string v13, "%"

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "::1"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v0, v7

    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v1, 0x2d

    const/4 v8, 0x5

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v1, v0, :cond_5

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v6, :cond_5

    const-string v13, "privateIp"

    invoke-virtual {v5, v13, v0}, Lcom/sdk/base/framework/bean/DataInfo;->putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v1, v0, :cond_6

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v1, :cond_6

    const-string v7, "privateIp_v6"

    invoke-virtual {v5, v7, v0}, Lcom/sdk/base/framework/bean/DataInfo;->putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "serviceType"

    invoke-virtual {v5, v1, v0}, Lcom/sdk/base/framework/bean/DataInfo;->putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "newVersion"

    const-string v1, "11"

    invoke-virtual {v5, v0, v1}, Lcom/sdk/base/framework/bean/DataInfo;->putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2
    sget-boolean v0, Lcom/sdk/t/a;->f:Z

    const-string v1, "operator"

    if-eqz v0, :cond_9

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/sdk/n/a;->a(Landroid/content/Context;)I

    move-result v0

    if-gt v0, v9, :cond_7

    if-ge v0, v11, :cond_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/sdk/base/framework/bean/DataInfo;->putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "/dro/netm/v2.0/qc"

    goto :goto_5

    :cond_9
    const-string v0, "/dro/netm/v1.0/qc"

    :goto_5
    sget-object v4, Lcom/sdk/y/a;->l:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "public HttpHandler<T> getAuthoriseCodeCucc : dataInfo \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v9}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    iget-object v4, v3, Lcom/sdk/g/b;->g:Ljava/lang/String;

    .line 4
    new-instance v6, Lcom/sdk/g/a;

    invoke-direct {v6, v3}, Lcom/sdk/g/a;-><init>(Lcom/sdk/g/b;)V

    .line 5
    invoke-static {v4}, Lcom/sdk/r/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_a

    const v0, 0x18a90

    const-string v1, "\u672a\u68c0\u6d4b\u5230\u57df\u540d"

    invoke-virtual {v3, v11, v0, v1}, Lcom/sdk/g/b;->a(IILjava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_c

    .line 6
    :cond_a
    sget-object v7, Lcom/sdk/g/b;->j:Ljava/lang/String;

    const-string v9, "public HttpHandler<T> sendRequest() \u5f00\u59cb"

    invoke-static {v7, v9, v10}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    :try_start_1
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    iget-object v9, v3, Lcom/sdk/g/b;->f:Landroid/content/Context;

    sget-object v12, Lcom/sdk/base/module/config/BaseConfig;->apk:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/sdk/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 7
    sget-object v12, Lcom/sdk/t/a;->b:Ljava/lang/String;

    .line 8
    filled-new-array {v9, v12}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    :goto_6
    const/4 v14, 0x2

    if-ge v13, v14, :cond_d

    .line 9
    aget-object v15, v12, v13

    if-eqz v15, :cond_b

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v14, v11, :cond_c

    :cond_b
    invoke-static {v15}, Lcom/sdk/r/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_c

    const/4 v12, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_d
    const/4 v12, 0x0

    :goto_7
    if-eqz v12, :cond_e

    const-string v0, "ApiKey\u6216PublicKey\u4e0d\u80fd\u4e3a\u7a7a"

    const v1, 0x18a8c

    .line 10
    invoke-virtual {v3, v11, v1, v0}, Lcom/sdk/g/b;->a(IILjava/lang/String;)V

    const/4 v5, 0x0

    goto/16 :goto_9

    .line 11
    :cond_e
    sget-object v12, Lcom/sdk/t/a;->g:Ljava/lang/String;

    .line 12
    invoke-static {v12}, Lcom/sdk/r/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/16 v14, 0x10

    if-eqz v13, :cond_f

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v14

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v14

    invoke-virtual {v12, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 13
    sput-object v12, Lcom/sdk/t/a;->g:Ljava/lang/String;

    .line 14
    :cond_f
    invoke-virtual {v12, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0x20

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    sget-object v15, Lcom/sdk/a/c;->C:Ljava/util/TreeMap;

    invoke-virtual {v15}, Ljava/util/TreeMap;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sget-object v11, Lcom/sdk/a/c;->C:Ljava/util/TreeMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    const-string v8, "InitTime"

    :try_start_2
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v8, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/sdk/a/c;->C:Ljava/util/TreeMap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    const-string v11, "ifProtal"

    :try_start_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v11, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v5, v13, v12}, Lcom/sdk/g/b;->a(Lcom/sdk/base/framework/bean/DataInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    invoke-static {}, Lcom/sdk/p/f;->a()Lcom/sdk/p/f;

    move-result-object v11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 15
    iget-object v13, v11, Lcom/sdk/p/f;->a:Lcom/sdk/q/a;

    iget-object v11, v11, Lcom/sdk/p/f;->b:Ljava/lang/String;

    invoke-interface {v13, v11, v12}, Lcom/sdk/q/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    const-string v12, "apiKey"

    .line 16
    invoke-virtual {v7, v12, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "params"

    invoke-virtual {v7, v12, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "paramsKey"

    invoke-virtual {v7, v8, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    const-string v8, "l"

    :try_start_6
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9, v0, v7}, Lcom/sdk/p/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, v14}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v8}, Lcom/sdk/r/a;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v7, v2, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    const-string v11, "sign_Type"

    .line 17
    :try_start_7
    sget-object v12, Lcom/sdk/t/a;->d:Ljava/lang/String;

    .line 18
    invoke-virtual {v7, v11, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "api-protocol"

    const-string v8, "1.1"

    invoke-virtual {v9, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    new-instance v2, Lcom/sdk/a/e;

    invoke-direct {v2}, Lcom/sdk/a/e;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    const-string v8, "POST"

    .line 19
    :try_start_8
    invoke-static {v8}, Lcom/sdk/r/a;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_11

    iput-object v8, v2, Lcom/sdk/a/e;->a:Ljava/lang/String;

    .line 20
    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    iput-object v0, v2, Lcom/sdk/a/e;->b:Ljava/lang/String;

    .line 22
    iput-object v6, v2, Lcom/sdk/a/e;->g:Lcom/sdk/e/b;

    .line 23
    iput v10, v2, Lcom/sdk/a/e;->f:I

    .line 24
    iput-object v7, v2, Lcom/sdk/a/e;->c:Ljava/util/TreeMap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    const/4 v4, 0x0

    .line 25
    :try_start_9
    iput-object v4, v2, Lcom/sdk/a/e;->d:Ljava/util/ArrayList;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 26
    :try_start_a
    iput-object v9, v2, Lcom/sdk/a/e;->e:Ljava/util/HashMap;

    .line 27
    sget-object v0, Lcom/sdk/n/a$c;->b:Lcom/sdk/n/a$c;

    .line 28
    sget-boolean v4, Lcom/sdk/t/a;->f:Z

    if-eqz v4, :cond_14

    .line 29
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 30
    sget-object v4, Lcom/sdk/n/a;->a:Ljava/lang/String;

    const/4 v4, 0x1

    if-eq v1, v4, :cond_13

    const/4 v4, 0x2

    if-eq v1, v4, :cond_12

    goto :goto_8

    :cond_12
    sget-object v0, Lcom/sdk/n/a$c;->c:Lcom/sdk/n/a$c;

    goto :goto_8

    :cond_13
    sget-object v0, Lcom/sdk/n/a$c;->a:Lcom/sdk/n/a$c;

    .line 31
    :cond_14
    :goto_8
    iput-object v0, v2, Lcom/sdk/a/e;->h:Lcom/sdk/n/a$c;

    .line 32
    new-instance v0, Lcom/sdk/a/d;

    iget-object v1, v3, Lcom/sdk/g/b;->f:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/sdk/a/d;-><init>(Landroid/content/Context;Lcom/sdk/a/e;)V

    new-instance v1, Lcom/sdk/a/c;

    invoke-direct {v1, v0}, Lcom/sdk/a/c;-><init>(Lcom/sdk/a/d;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    const/4 v2, 0x1

    :try_start_b
    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v10

    .line 33
    sget-object v0, Lcom/sdk/d/c;->h:Ljava/util/concurrent/Executor;

    .line 34
    iget-boolean v5, v1, Lcom/sdk/d/c;->e:Z

    if-nez v5, :cond_15

    iput-boolean v2, v1, Lcom/sdk/d/c;->e:Z

    iget-object v2, v1, Lcom/sdk/d/c;->a:Lcom/sdk/d/c$e;

    iput-object v4, v2, Lcom/sdk/d/c$e;->a:[Ljava/lang/Object;

    new-instance v2, Lcom/sdk/d/g;

    iget-object v4, v1, Lcom/sdk/d/c;->b:Ljava/util/concurrent/FutureTask;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v4}, Lcom/sdk/d/g;-><init>(Lcom/sdk/d/b;Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move-object v8, v1

    goto/16 :goto_c

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot execute task: the task is already executed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :catch_1
    move-exception v0

    move-object v8, v1

    goto :goto_b

    :catch_2
    move-exception v0

    move-object v5, v4

    goto :goto_a

    :catch_3
    move-exception v0

    const/4 v5, 0x0

    :try_start_c
    const-string v1, "\u516c\u94a5\u51fa\u9519"

    const v2, 0x18a8e

    const/4 v4, 0x1

    .line 35
    invoke-virtual {v3, v4, v2, v1}, Lcom/sdk/g/b;->a(IILjava/lang/String;)V

    sget-object v1, Lcom/sdk/g/b;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u516c\u94a5\u51fa\u9519\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v4, Lcom/sdk/g/b;->k:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/sdk/base/framework/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u516c\u94a5\u51fa\u9519: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :goto_9
    move-object v8, v5

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    const/4 v5, 0x0

    :goto_a
    move-object v8, v5

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sdk/base/framework/utils/log/MobileLogManager;->status302002(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7f51\u7edc\u8bbf\u95ee\u5f02\u5e38:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x49bb2

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2, v1}, Lcom/sdk/g/b;->a(IILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sdk/g/b;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "BaseProtocol sendRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/sdk/g/b;->k:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sdk/base/framework/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :goto_c
    return-object v8
.end method
