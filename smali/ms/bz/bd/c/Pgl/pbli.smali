.class public final Lms/bz/bd/c/Pgl/pbli;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static c()Z
    .locals 7

    .line 1
    const/16 v0, 0x39

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "0494bf"

    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lms/bz/bd/c/Pgl/pbli;->c([Ljava/lang/String;)Z

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x22t
        0x39t
        0x47t
        0xet
        0x5ft
        0x68t
        0x27t
        0x10t
        0x6ct
        0x65t
        0x2ft
        0x35t
        0x4ft
        0xet
        0x5bt
        0x63t
        0x32t
        0x18t
        0x7ft
        0x6bt
        0x33t
        0x3dt
        0x4t
        0x43t
        0x52t
        0x63t
        0x36t
        0x5bt
        0x7bt
        0x60t
        0x2at
        0x3bt
        0x45t
        0x4et
        0x54t
        0x65t
        0x3ct
        0x7t
        0x26t
        0x54t
        0x26t
        0x3at
        0x79t
        0x64t
        0x76t
        0x5ct
        0x3ct
        0x1bt
        0x61t
        0x70t
        0x2et
        0x24t
        0x7ft
        0x54t
        0x54t
        0x7dt
        0x20t
    .end array-data
.end method

.method private static varargs c([Ljava/lang/String;)Z
    .locals 6

    .line 2
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v5, p0, v3

    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    goto :goto_1

    :catchall_0
    nop

    const/4 v5, 0x0

    :goto_1
    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v4
.end method
