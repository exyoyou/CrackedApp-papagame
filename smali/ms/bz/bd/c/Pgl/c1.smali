.class public final Lms/bz/bd/c/Pgl/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lms/bz/bd/c/Pgl/c1;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 17

    const/16 v0, 0x24

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "9e76b8"

    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v3, p0

    :try_start_1
    iget-object v4, v3, Lms/bz/bd/c/Pgl/c1;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "868c98"

    const/4 v10, 0x7

    new-array v9, v10, [B

    fill-array-data v9, :array_1

    invoke-static/range {v4 .. v9}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    const/16 v5, 0x18

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    const v11, 0x1000001

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-string v15, "77257d"

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v4, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v11, 0x1000001

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-string v15, "aca116"

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v5, 0x1000001

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "c5ec86"

    new-array v10, v10, [B

    fill-array-data v10, :array_4

    invoke-static/range {v5 .. v10}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_0
    move-object/from16 v3, p0

    :catch_1
    return-object v1

    nop

    :array_0
    .array-data 1
        0x2bt
        0x68t
        0x4at
        0x56t
        0x58t
        0x21t
        0x2et
        0x1et
        0x29t
        0x29t
        0x2bt
        0x69t
        0xat
        0x4ct
        0x48t
        0x2dt
        0x33t
        0x45t
        0x28t
        0x6ft
        0x2ct
        0x62t
        0x4at
        0x56t
        0x54t
        0x3bt
        0x23t
        0xbt
        0x6ft
        0x62t
        0x2dt
        0x69t
        0x50t
        0x4bt
        0x49t
        0x36t
    .end array-data

    :array_1
    .array-data 1
        0x2et
        0x31t
        0x5ft
        0x38t
        0x27t
        0x6t
        0x1ft
    .end array-data

    :array_2
    .array-data 1
        0x25t
        0x3at
        0x45t
        0x44t
    .end array-data

    :array_3
    .array-data 1
        0x79t
        0x65t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x7ft
        0x32t
        0x5t
        0x4t
        0x6t
        0x26t
        0x65t
    .end array-data
.end method
