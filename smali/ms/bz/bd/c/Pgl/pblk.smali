.class public final Lms/bz/bd/c/Pgl/pblk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lms/bz/bd/c/Pgl/pblk$pblb;
    }
.end annotation


# instance fields
.field private final c:Lms/bz/bd/c/Pgl/pblk$pblb;


# direct methods
.method public constructor <init>(Lms/bz/bd/c/Pgl/pblk$pblb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lms/bz/bd/c/Pgl/pblk;->c:Lms/bz/bd/c/Pgl/pblk$pblb;

    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 1
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const v2, 0x1000001

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :try_start_0
    const-string v6, "6f53ff"

    const/16 v7, 0x1b

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    invoke-static/range {v2 .. v7}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "058b47"

    const/4 v8, 0x3

    new-array v8, v8, [B

    fill-array-data v8, :array_1

    invoke-static/range {v3 .. v8}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v0, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v6

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v12, "e71f7f"

    const/4 p0, 0x7

    new-array v13, p0, [B

    fill-array-data v13, :array_2

    invoke-static/range {v8 .. v13}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    :catch_0
    return-object v1

    :array_0
    .array-data 1
        0x26t
        0x6at
        0x42t
        0x55t
        0x56t
        0x78t
        0x31t
        0x9t
        0x6bt
        0x70t
        0x69t
        0x57t
        0x5ft
        0x54t
        0x4dt
        0x74t
        0x38t
        0x77t
        0x76t
        0x6ct
        0x37t
        0x61t
        0x54t
        0x53t
        0x50t
        0x74t
        0x26t
    .end array-data

    :array_1
    .array-data 1
        0x26t
        0x32t
        0x5ft
    .end array-data

    :array_2
    .array-data 1
        0x61t
        0x3bt
        0x49t
        0x1ct
        0x7t
        0x66t
        0x68t
    .end array-data
.end method

.method static c(Lms/bz/bd/c/Pgl/pblk;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Z
    .locals 8

    .line 2
    const/16 v0, 0x15

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "3fca99"

    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lms/bz/bd/c/Pgl/pblk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    new-array v7, v1, [B

    fill-array-data v7, :array_1

    const v2, 0x1000001

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-string v6, "dff479"

    invoke-static/range {v2 .. v7}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :array_0
    .array-data 1
        0x30t
        0x6bt
        0x5et
        0x17t
        0x13t
        0x27t
        0x3ct
        0x43t
        0x7ct
        0x37t
        0x30t
        0x61t
        0x15t
        0x18t
        0x3t
        0x60t
        0x3ct
        0x46t
        0x30t
        0x34t
        0x2et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x53t
        0x56t
        0x30t
        0x65t
        0x25t
        0xbt
        0x48t
        0x74t
    .end array-data
.end method

.method static synthetic tt(Lms/bz/bd/c/Pgl/pblk;)Lms/bz/bd/c/Pgl/pblk$pblb;
    .locals 0

    .line 1
    iget-object p0, p0, Lms/bz/bd/c/Pgl/pblk;->c:Lms/bz/bd/c/Pgl/pblk$pblb;

    return-object p0
.end method

.method private tt(Landroid/content/Context;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/byazt/jtc/ve;

    new-instance v1, Lms/bz/bd/c/Pgl/pblk$pgla;

    invoke-direct {v1, p0, p1}, Lms/bz/bd/c/Pgl/pblk$pgla;-><init>(Lms/bz/bd/c/Pgl/pblk;Landroid/content/Context;)V

    const-string p1, "bd/c/Pgl/pblk"

    invoke-direct {v0, v1, p1}, Lcom/byazt/jtc/ve;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static tt()Z
    .locals 8

    .line 3
    const/16 v0, 0xf

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "3cea58"

    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lms/bz/bd/c/Pgl/pblk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x7

    new-array v7, v1, [B

    fill-array-data v7, :array_1

    const v2, 0x1000001

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-string v6, "cc8470"

    invoke-static/range {v2 .. v7}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    nop

    :array_0
    .array-data 1
        0x30t
        0x6et
        0x58t
        0x6t
        0x19t
        0x3at
        0x39t
        0xct
        0x24t
        0x23t
        0x2dt
        0x65t
        0x3t
        0x16t
        0x1et
    .end array-data

    :array_1
    .array-data 1
        0x67t
        0x6ft
        0x40t
        0x4et
        0x7t
        0x30t
        0x6et
    .end array-data
.end method


# virtual methods
.method public final c(Landroid/content/Context;)V
    .locals 12

    const/4 v0, 0x4

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "7fd210"

    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    new-array v8, v1, [B

    fill-array-data v8, :array_1

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "a65732"

    invoke-static/range {v3 .. v8}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-array v9, v1, [B

    fill-array-data v9, :array_2

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "184382"

    invoke-static/range {v4 .. v9}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0x8

    new-array v9, v3, [B

    fill-array-data v9, :array_3

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "ddd091"

    invoke-static/range {v4 .. v9}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x5

    new-array v10, v4, [B

    fill-array-data v10, :array_4

    const v5, 0x1000001

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "b50d91"

    invoke-static/range {v5 .. v10}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Lms/bz/bd/c/Pgl/a1;

    invoke-direct {v0, p1}, Lms/bz/bd/c/Pgl/a1;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lms/bz/bd/c/Pgl/pblk;->c:Lms/bz/bd/c/Pgl/pblk$pblb;

    invoke-virtual {v0, p1}, Lms/bz/bd/c/Pgl/a1;->c(Lms/bz/bd/c/Pgl/pblk$pblb;)V

    goto/16 :goto_0

    :cond_0
    new-array v9, v4, [B

    fill-array-data v9, :array_5

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "ba8d8a"

    invoke-static/range {v4 .. v9}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Lms/bz/bd/c/Pgl/c1;

    invoke-direct {v0, p1}, Lms/bz/bd/c/Pgl/c1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lms/bz/bd/c/Pgl/c1;->c()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_1
    new-array v9, v0, [B

    fill-array-data v9, :array_6

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "82e3f9"

    invoke-static/range {v4 .. v9}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x7

    new-array v10, v4, [B

    fill-array-data v10, :array_7

    const v5, 0x1000001

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "0c839d"

    invoke-static/range {v5 .. v10}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 19
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    new-array v11, v0, [B

    fill-array-data v11, :array_8

    const v6, 0x1000001

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "109b73"

    invoke-static/range {v6 .. v11}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v0, Lms/bz/bd/c/Pgl/z1;

    invoke-direct {v0, p1}, Lms/bz/bd/c/Pgl/z1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lms/bz/bd/c/Pgl/z1;->c()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_2
    new-array v10, v1, [B

    fill-array-data v10, :array_9

    const v5, 0x1000001

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "16475b"

    invoke-static/range {v5 .. v10}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lms/bz/bd/c/Pgl/a2;

    invoke-direct {v0, p1}, Lms/bz/bd/c/Pgl/a2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lms/bz/bd/c/Pgl/a2;->c()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_3
    const/16 v1, 0xa

    new-array v10, v1, [B

    fill-array-data v10, :array_a

    const v5, 0x1000001

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "9de541"

    invoke-static/range {v5 .. v10}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lms/bz/bd/c/Pgl/a2;

    invoke-direct {v0, p1}, Lms/bz/bd/c/Pgl/a2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lms/bz/bd/c/Pgl/a2;->c()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_4
    new-array v9, v4, [B

    fill-array-data v9, :array_b

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "d3deb8"

    invoke-static/range {v4 .. v9}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x3

    new-array v9, v1, [B

    fill-array-data v9, :array_c

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "13043a"

    invoke-static/range {v4 .. v9}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 28
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-array v9, v3, [B

    fill-array-data v9, :array_d

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "682784"

    invoke-static/range {v4 .. v9}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lms/bz/bd/c/Pgl/pblk;->c()Z

    move-result v1

    if-nez v1, :cond_5

    new-array v8, v0, [B

    fill-array-data v8, :array_e

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "016c3d"

    invoke-static/range {v3 .. v8}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lms/bz/bd/c/Pgl/pblk;->tt()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-direct {p0, p1}, Lms/bz/bd/c/Pgl/pblk;->tt(Landroid/content/Context;)V

    :cond_6
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lms/bz/bd/c/Pgl/pblk;->c:Lms/bz/bd/c/Pgl/pblk$pblb;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lms/bz/bd/c/Pgl/pblk$pblb;->c(Ljava/lang/String;)V

    :cond_7
    return-void

    :array_0
    .array-data 1
        0x7t
        0x57t
        0x22t
        0x75t
    .end array-data

    :array_1
    .array-data 1
        0x58t
        0x1t
        0x67t
        0x74t
        0x29t
        0xct
    .end array-data

    nop

    :array_2
    .array-data 1
        0xct
        0x1ft
        0x69t
        0x68t
        0x31t
        0xat
    .end array-data

    nop

    :array_3
    .array-data 1
        0x58t
        0x49t
        0x23t
        0x6bt
        0x2at
        0x9t
        0x55t
        0x64t
    .end array-data

    :array_4
    .array-data 1
        0x5et
        0x12t
        0x6at
        0x2at
        0x33t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x5dt
        0x56t
        0x69t
        0x39t
        0x26t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x6t
        0x0t
        0x26t
        0x68t
    .end array-data

    :array_7
    .array-data 1
        0x12t
        0x40t
        0x66t
        0x74t
        0x33t
        0x5dt
        0x14t
    .end array-data

    :array_8
    .array-data 1
        0x16t
        0x1bt
        0x7ct
        0x39t
    .end array-data

    :array_9
    .array-data 1
        0x18t
        0x1dt
        0x66t
        0x6ct
        0x27t
        0x5ct
    .end array-data

    nop

    :array_a
    .array-data 1
        0xat
        0x4at
        0x37t
        0x62t
        0x20t
        0x15t
        0x12t
        0x64t
        0x6t
        0x4et
    .end array-data

    nop

    :array_b
    .array-data 1
        0x5at
        0x1ft
        0x32t
        0x21t
        0x71t
        0x1at
        0x54t
    .end array-data

    :array_c
    .array-data 1
        0x1at
        0x5t
        0x66t
    .end array-data

    :array_d
    .array-data 1
        0x1t
        0x1ft
        0x73t
        0x71t
        0x2at
        0x6t
        0x1at
        0x2at
    .end array-data

    :array_e
    .array-data 1
        0x12t
        0x0t
        0x70t
        0x3et
    .end array-data
.end method
