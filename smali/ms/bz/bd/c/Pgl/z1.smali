.class public final Lms/bz/bd/c/Pgl/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lms/bz/bd/c/Pgl/z1;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 9

    const/16 v0, 0x33

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "2f664b"

    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lms/bz/bd/c/Pgl/z1;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "dac80a"

    const/4 v2, 0x5

    new-array v8, v2, [B

    fill-array-data v8, :array_1

    invoke-static/range {v3 .. v8}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const v2, 0x1000001

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :try_start_1
    const-string v6, "14b615"

    const/4 v7, 0x2

    new-array v7, v7, [B

    fill-array-data v7, :array_2

    invoke-static/range {v2 .. v7}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    throw v1

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_3
    :cond_1
    :goto_2
    return-object v1

    nop

    :array_0
    .array-data 1
        0x20t
        0x6bt
        0x4bt
        0x56t
        0xet
        0x7bt
        0x25t
        0x1dt
        0x28t
        0x29t
        0x20t
        0x6bt
        0x48t
        0xct
        0x1dt
        0x7ct
        0x27t
        0x48t
        0x29t
        0x70t
        0x2et
        0x77t
        0xbt
        0x6bt
        0xft
        0x45t
        0x23t
        0x48t
        0x71t
        0x6ft
        0x27t
        0x61t
        0x57t
        0xdt
        0x22t
        0x71t
        0x34t
        0x49t
        0x73t
        0x6ft
        0x25t
        0x6dt
        0x40t
        0x50t
        0x22t
        0x71t
        0x7et
        0x68t
        0x46t
        0x4ft
        0x7t
    .end array-data

    :array_1
    .array-data 1
        0x63t
        0x62t
        0x1ct
        0x59t
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x36t
        0x39t
    .end array-data
.end method
