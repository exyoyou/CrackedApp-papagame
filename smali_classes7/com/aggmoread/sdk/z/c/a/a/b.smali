.class public Lcom/aggmoread/sdk/z/c/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/c/a/a/b$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Z

.field private static final c:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sput-object v0, Lcom/aggmoread/sdk/z/c/a/a/b;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/aggmoread/sdk/z/c/a/a/b;->d:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)Ljava/lang/Object;
    .locals 0

    .line 1
    filled-new-array {p0, p1}, [I

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 2
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/16 p0, 0x1a

    invoke-static {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;[I)Ljava/lang/Object;
    .locals 3

    .line 3
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 4
    const/16 v0, 0xa

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static a()V
    .locals 3

    .line 5
    sget-boolean v0, Lcom/aggmoread/sdk/z/c/a/a/b;->a:Z

    if-nez v0, :cond_1

    const-class v0, Lcom/aggmoread/sdk/z/c/a/a/b;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/aggmoread/sdk/z/c/a/a/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-string v1, "AMNAME"

    :try_start_1
    const-class v2, Lcom/aggmoread/sdk/z/c/a/a/b$a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    const-string v1, "aggcore"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/aggmoread/sdk/z/c/a/a/b;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0xc

    invoke-static {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a([Ljava/lang/Object;)V
    .locals 1

    .line 7
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a([Ljava/lang/Object;Landroid/content/Context;)V
    .locals 0

    .line 8
    sget-boolean p1, Lcom/aggmoread/sdk/z/c/a/a/b;->b:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/b;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 5

    .line 9
    sget-boolean v0, Lcom/aggmoread/sdk/z/c/a/a/b;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-class v0, Lcom/aggmoread/sdk/z/c/a/a/b;

    monitor-enter v0

    :try_start_0
    sget-boolean v2, Lcom/aggmoread/sdk/z/c/a/a/b;->b:Z

    if-nez v2, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    sget-object p0, Lcom/aggmoread/sdk/z/c/a/a/b;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    aput-object p0, v2, v1

    const/16 p0, 0xa

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    const/4 v4, 0x2

    aput-object p0, v2, v4

    sget-object p0, Lcom/aggmoread/sdk/z/c/a/a/b;->d:[Ljava/lang/Object;

    const/4 v4, 0x3

    aput-object p0, v2, v4

    new-array p0, v1, [Z

    aput-boolean p1, p0, v3

    const/4 p1, 0x4

    aput-object p0, v2, p1

    const/16 p0, 0xb

    invoke-static {p0, v2}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    aget-boolean p0, p0, v3

    sput-boolean p0, Lcom/aggmoread/sdk/z/c/a/a/b;->b:Z

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return v1

    :array_0
    .array-data 4
        0x2
        0x0
        0x1
        0x3
        0x4
        0x5
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method public static a([B)[B
    .locals 1

    .line 10
    const/16 v0, 0x15

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static a([I)[B
    .locals 1

    .line 11
    const/16 v0, 0xd

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static b([B)I
    .locals 1

    .line 1
    const/16 v0, 0xe

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 2
    const/16 v0, 0xf

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    filled-new-array {v1}, [I

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    aput-object p0, v0, v1

    const/16 p0, 0xc

    invoke-static {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b([Ljava/lang/Object;)V
    .locals 1

    .line 4
    const/4 v0, 0x5

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b()[Ljava/lang/Object;
    .locals 4

    .line 5
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object v2, v0, v1

    const/16 v3, 0xa

    aput-object v2, v0, v3

    const/16 v2, 0x12

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x1b

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static c()V
    .locals 2

    .line 2
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xa

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0xc

    invoke-static {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c([Ljava/lang/Object;)V
    .locals 1

    .line 4
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x11

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    .line 2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xb

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0xc

    invoke-static {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static d([Ljava/lang/Object;)V
    .locals 1

    .line 3
    const/4 v0, 0x7

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xc

    filled-new-array {v1}, [I

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object p0, v0, v2

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static e([Ljava/lang/Object;)V
    .locals 1

    .line 2
    const/16 v0, 0x14

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static e(Ljava/lang/Object;)[B
    .locals 1

    .line 3
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static f(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const/16 v0, 0x9

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 3

    .line 2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xd

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0xc

    invoke-static {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static f([Ljava/lang/Object;)V
    .locals 1

    .line 3
    const/16 v0, 0x8

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static g(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const/16 v0, 0x10

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 3

    .line 2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xe

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0xc

    invoke-static {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const/16 v0, 0x12

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 3

    .line 2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xf

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0xc

    invoke-static {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static i(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x16

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3

    .line 2
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const/16 p0, 0xc

    invoke-static {p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static j(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x17

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static j(Ljava/lang/String;)V
    .locals 3

    .line 2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x3

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0xc

    invoke-static {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x4

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0xc

    invoke-static {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x5

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0xc

    invoke-static {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0xc

    invoke-static {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static n(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x7

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0xc

    invoke-static {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static o(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x8

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0xc

    invoke-static {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static p(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x9

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0xc

    invoke-static {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/b$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
