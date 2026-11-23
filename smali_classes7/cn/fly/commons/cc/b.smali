.class public Lcn/fly/commons/cc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/commons/cc/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/fly/commons/cc/y<",
        "Lcn/fly/commons/cc/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcn/fly/commons/cc/b;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/fly/commons/cc/b;",
            "Ljava/lang/Class<",
            "Lcn/fly/commons/cc/b;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[Z[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    const-string v3, "ghclz"

    .line 2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 3
    :try_start_0
    array-length v0, v1

    if-ne v0, v4, :cond_8

    .line 4
    invoke-static {}, Lcn/fly/tools/a/e;->a()Lcn/fly/tools/a/e;

    move-result-object v0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/fly/tools/a/e;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aput-object v0, p6, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 5
    aput-object v0, p7, v2

    goto/16 :goto_0

    :cond_0
    const-string v3, "nhins"

    .line 6
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v3, :cond_2

    .line 7
    :try_start_1
    array-length v0, v1

    if-ne v0, v4, :cond_1

    .line 8
    invoke-static {}, Lcn/fly/tools/a/e;->a()Lcn/fly/tools/a/e;

    move-result-object v0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/fly/tools/a/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p6, v2

    goto/16 :goto_0

    .line 9
    :cond_1
    array-length v0, v1

    if-ne v0, v5, :cond_8

    .line 10
    invoke-static {}, Lcn/fly/tools/a/e;->a()Lcn/fly/tools/a/e;

    move-result-object v0

    aget-object v3, v1, v2

    check-cast v3, Ljava/lang/String;

    aget-object v5, v1, v4

    check-cast v5, [Ljava/lang/Class;

    aget-object v1, v1, v6

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5, v1}, Lcn/fly/tools/a/e;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p6, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 11
    aput-object v0, p7, v2

    goto/16 :goto_0

    :cond_2
    const-string v3, "ghfld"

    .line 12
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x4

    if-eqz v3, :cond_3

    .line 13
    :try_start_2
    array-length v0, v1

    if-ne v0, v7, :cond_8

    .line 14
    invoke-static {}, Lcn/fly/tools/a/e;->a()Lcn/fly/tools/a/e;

    move-result-object v0

    aget-object v3, v1, v2

    check-cast v3, Ljava/lang/String;

    aget-object v7, v1, v4

    check-cast v7, Ljava/lang/String;

    aget-object v6, v1, v6

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v3, v7, v6, v1}, Lcn/fly/tools/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p6, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    .line 15
    aput-object v0, p7, v2

    goto/16 :goto_0

    :cond_3
    const-string v3, "ihacnm"

    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v8, 0x5

    const/4 v9, 0x6

    if-eqz v3, :cond_4

    .line 17
    :try_start_3
    array-length v0, v1

    if-ne v0, v9, :cond_8

    .line 18
    invoke-static {}, Lcn/fly/tools/a/e;->a()Lcn/fly/tools/a/e;

    move-result-object v10

    aget-object v0, v1, v2

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    aget-object v12, v1, v4

    aget-object v0, v1, v6

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    aget-object v0, v1, v5

    move-object v14, v0

    check-cast v14, [Ljava/lang/Class;

    aget-object v0, v1, v7

    move-object v15, v0

    check-cast v15, [Ljava/lang/Object;

    aget-object v0, v1, v8

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Class;

    invoke-virtual/range {v10 .. v16}, Lcn/fly/tools/a/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p6, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    .line 19
    aput-object v0, p7, v2

    goto/16 :goto_0

    :cond_4
    const-string v3, "ihaclz"

    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 21
    :try_start_4
    array-length v0, v1

    if-ne v0, v9, :cond_8

    .line 22
    invoke-static {}, Lcn/fly/tools/a/e;->a()Lcn/fly/tools/a/e;

    move-result-object v10

    aget-object v0, v1, v2

    move-object v11, v0

    check-cast v11, Ljava/lang/Class;

    aget-object v12, v1, v4

    aget-object v0, v1, v6

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    aget-object v0, v1, v5

    move-object v14, v0

    check-cast v14, [Ljava/lang/Class;

    aget-object v0, v1, v7

    move-object v15, v0

    check-cast v15, [Ljava/lang/Object;

    aget-object v0, v1, v8

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Class;

    invoke-virtual/range {v10 .. v16}, Lcn/fly/tools/a/e;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p6, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_0

    :catchall_4
    move-exception v0

    .line 23
    aput-object v0, p7, v2

    goto :goto_0

    :cond_5
    const-string v3, "exha"

    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 25
    :try_start_5
    array-length v0, v1

    if-ne v0, v4, :cond_8

    .line 26
    invoke-static {}, Lcn/fly/tools/a/e;->a()Lcn/fly/tools/a/e;

    move-result-object v0

    aget-object v1, v1, v2

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/fly/tools/a/e;->a([Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p6, v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_0

    :catchall_5
    move-exception v0

    .line 27
    aput-object v0, p7, v2

    goto :goto_0

    :cond_6
    const-string v3, "ngal"

    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    :try_start_6
    array-length v0, v1

    if-ne v0, v6, :cond_8

    .line 30
    aget-object v0, v1, v2

    check-cast v0, Ljava/lang/String;

    aget-object v1, v1, v4

    check-cast v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/fly/tools/xcrash/XCrash;->getP(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p6, v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_0

    :catchall_6
    move-exception v0

    .line 31
    aput-object v0, p7, v2

    goto :goto_0

    .line 32
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrp"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    aput-object v0, p7, v2

    :cond_8
    :goto_0
    return v4

    :cond_9
    return v2
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/fly/commons/cc/b;

    invoke-virtual/range {p0 .. p7}, Lcn/fly/commons/cc/b;->a(Lcn/fly/commons/cc/b;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
