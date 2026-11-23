.class public Lcom/byazt/eti/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/eti/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x180,
        0x36
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

.method private c(Lcom/byazt/eti/sp$c;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    invoke-virtual {p1}, Lcom/byazt/eti/sp$c;->n()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "7611"

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 64
    invoke-virtual {p1}, Lcom/byazt/eti/sp$c;->ve()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "union_meta_cache"

    const/4 v7, 0x0

    const-string v8, "expire_time >? AND rit =? AND save_version =? AND is_using = 0"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2, v4}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/byazt/pe/c;->query(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto/16 :goto_0

    .line 66
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "union_meta_cache"

    const/4 v3, 0x0

    const-string v4, "expire_time >? AND rit =? AND is_using = 0"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lcom/byazt/pe/c;->query(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto/16 :goto_0

    .line 67
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/eti/sp$c;->ve()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 68
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "union_meta_cache"

    const/4 v7, 0x0

    const-string v8, "expire_time >? AND rit =? AND save_version =? AND is_using = 0"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2, v4}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "ad_index ASC, create_time DESC"

    invoke-static/range {v5 .. v12}, Lcom/byazt/pe/c;->query(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto/16 :goto_0

    .line 69
    :cond_2
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "union_meta_cache"

    const/4 v3, 0x0

    const-string v4, "expire_time >? AND rit =? AND is_using = 0"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "ad_index ASC, create_time DESC"

    move-object v0, p1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lcom/byazt/pe/c;->query(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto/16 :goto_0

    .line 70
    :cond_3
    invoke-virtual {p1}, Lcom/byazt/eti/sp$c;->ve()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 71
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "union_meta_cache"

    const/4 v7, 0x0

    const-string v8, "expire_time >? AND rit =? AND save_version =? AND is_using = 0"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2, v4}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "priority DESC"

    invoke-static/range {v5 .. v12}, Lcom/byazt/pe/c;->query(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    .line 72
    :cond_4
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "union_meta_cache"

    const/4 v3, 0x0

    const-string v4, "expire_time >? AND rit =? AND is_using = 0"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "priority DESC"

    move-object v0, p1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lcom/byazt/pe/c;->query(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    .line 73
    :cond_5
    invoke-virtual {p1}, Lcom/byazt/eti/sp$c;->ve()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 74
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "union_meta_cache"

    const/4 v7, 0x0

    const-string v8, "expire_time >? AND rit =? AND save_version =? AND is_using = 0"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2, v4}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "create_time DESC"

    invoke-static/range {v5 .. v12}, Lcom/byazt/pe/c;->query(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    .line 75
    :cond_6
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "union_meta_cache"

    const/4 v3, 0x0

    const-string v4, "expire_time >? AND rit =? AND is_using = 0"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "create_time DESC"

    move-object v0, p1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lcom/byazt/pe/c;->query(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public c(Ljava/lang/String;Lcom/byazt/eti/sp$c;JLjava/util/List;)Lcom/byazt/eti/sp$tt;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/byazt/eti/sp$c;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/byazt/eti/sp$tt;"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p2, p1}, Lcom/byazt/eti/ve;->c(Lcom/byazt/eti/sp$c;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 26
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "uuid"

    .line 27
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz p5, :cond_1

    if-eqz v6, :cond_1

    .line 28
    invoke-interface {p5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    :cond_1
    const-string p2, "meta_data"

    .line 29
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p2, "create_time"

    .line 30
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string p2, "expire_time"

    .line 31
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long p2, p3, v7

    if-lez p2, :cond_2

    cmp-long p2, v2, p3

    if-ltz p2, :cond_0

    .line 32
    :cond_2
    new-instance p2, Lcom/byazt/eti/sp$tt;

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/byazt/eti/sp$tt;-><init>(Ljava/lang/String;JJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_3
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    const-string p3, "RewardFullLoadManager-DB"

    const-string p4, "db get error"

    .line 34
    invoke-static {p3, p4, p2}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 36
    throw p2

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/byazt/eti/sp$c;)V
    .locals 3

    .line 38
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/eti/sp$c;->c()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "union_meta_cache"

    const-string v2, "slot_type =?"

    invoke-static {v0, v1, v2, p1}, Lcom/byazt/pe/c;->delete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 37
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rit =?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v2, "union_meta_cache"

    invoke-static {v0, v2, v1, p1}, Lcom/byazt/pe/c;->delete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/eti/sp$c;Lcom/byazt/eti/c;)V
    .locals 11

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p3, :cond_1

    .line 40
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "union_meta_cache"

    const/4 v4, 0x0

    const-string v5, "expire_time <? AND rit =?"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6, p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/byazt/pe/c;->query(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 41
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "meta_data"

    .line 42
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "create_time"

    .line 43
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v3, "expire_time"

    .line 44
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v3, "uuid"

    .line 45
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 46
    new-instance v3, Lcom/byazt/eti/sp$tt;

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/byazt/eti/sp$tt;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    invoke-interface {p3, v3}, Lcom/byazt/eti/c;->c(Lcom/byazt/eti/sp$tt;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 48
    :cond_1
    invoke-virtual {p2}, Lcom/byazt/eti/sp$c;->ve()Z

    move-result p2

    const-string p3, "union_meta_cache"

    if-eqz p2, :cond_2

    .line 49
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "7611"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v2, v0}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "rit =? AND (save_version!=? OR expire_time <?)"

    invoke-static {p2, p3, v0, p1}, Lcom/byazt/pe/c;->delete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    .line 50
    :cond_2
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "rit =? AND expire_time <?"

    invoke-static {p2, p3, v0, p1}, Lcom/byazt/pe/c;->delete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/eti/sp$tt;Lcom/byazt/eti/a;Lcom/byazt/eti/sp$c;Lcom/byazt/eti/c;)V
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "union_meta_cache"

    const/4 v6, 0x0

    const-string v7, "rit =?"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "create_time ASC"

    invoke-static/range {v4 .. v11}, Lcom/byazt/pe/c;->query(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const-string v5, "union_meta_cache"

    const-string v6, "meta_data"

    const-string v7, "expire_time"

    const-string v8, "create_time"

    const-string v9, "uuid"

    if-eqz v4, :cond_3

    .line 2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Lcom/byazt/eti/sp$c;->uj()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x1

    if-lez v10, :cond_2

    .line 4
    :cond_0
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 6
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 7
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 8
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 9
    new-instance v12, Lcom/byazt/eti/sp$tt;

    move-object v13, v12

    invoke-direct/range {v13 .. v19}, Lcom/byazt/eti/sp$tt;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    invoke-interface {v3, v12}, Lcom/byazt/eti/c;->c(Lcom/byazt/eti/sp$tt;)V

    .line 10
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "rit=? AND uuid=?"

    filled-new-array {v0, v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v5, v13, v11}, Lcom/byazt/pe/c;->delete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v10, v10, -0x1

    if-lez v10, :cond_2

    .line 11
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 12
    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 13
    :cond_3
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "rit"

    .line 14
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, v1, Lcom/byazt/eti/sp$tt;->n:Ljava/lang/String;

    invoke-virtual {v3, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-wide v9, v1, Lcom/byazt/eti/sp$tt;->c:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 17
    iget v0, v1, Lcom/byazt/eti/sp$tt;->uj:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "save_version"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    iget-wide v8, v1, Lcom/byazt/eti/sp$tt;->tt:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "slot_type"

    .line 19
    invoke-virtual/range {p4 .. p4}, Lcom/byazt/eti/sp$c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-boolean v0, v2, Lcom/byazt/eti/a;->c:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "is_using"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 21
    iget v0, v2, Lcom/byazt/eti/a;->tt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "priority"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 22
    iget v0, v2, Lcom/byazt/eti/a;->ve:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ad_index"

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23
    iget-object v0, v1, Lcom/byazt/eti/sp$tt;->ve:Ljava/lang/String;

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v3}, Lcom/byazt/pe/c;->insert(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 51
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rit =? AND uuid =?"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "union_meta_cache"

    invoke-static {v0, p2, v1, p1}, Lcom/byazt/pe/c;->delete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 52
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_using"

    .line 53
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 54
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v1, "rit =? AND uuid =?"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "union_meta_cache"

    invoke-static {p3, p2, v0, v1, p1}, Lcom/byazt/pe/c;->update(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/eti/sp$c;)Z
    .locals 10

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    invoke-virtual {p2}, Lcom/byazt/eti/sp$c;->ve()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 57
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "union_meta_cache"

    const/4 v4, 0x0

    const-string v5, "expire_time >? AND rit =? AND save_version =? AND is_using = 0"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "7611"

    filled-new-array {p2, p1, v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/byazt/pe/c;->query(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "union_meta_cache"

    const/4 v3, 0x0

    const-string v4, "expire_time >? AND rit =? AND is_using = 0"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Lcom/byazt/pe/c;->query(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 59
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 60
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 p2, 0x1

    .line 61
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return p2
.end method

.method public tt(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "is_using"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "rit =?"

    .line 21
    .line 22
    filled-new-array {p1}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v3, "union_meta_cache"

    .line 27
    .line 28
    invoke-static {v1, v3, v0, v2, p1}, Lcom/byazt/pe/c;->update(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method
