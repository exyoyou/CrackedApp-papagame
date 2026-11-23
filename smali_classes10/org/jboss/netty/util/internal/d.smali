.class public final Lorg/jboss/netty/util/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:Z

.field private static final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/jboss/netty/util/internal/d;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Lorg/jboss/netty/util/internal/d;->a:I

    .line 6
    .line 7
    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lorg/jboss/netty/util/internal/d;->b(Ljava/lang/ClassLoader;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput-boolean v0, Lorg/jboss/netty/util/internal/d;->b:Z

    .line 18
    .line 19
    const-string v0, "os.name"

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    invoke-static {v0, v1}, Lorg/jboss/netty/util/internal/j;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "win"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    sput-boolean v0, Lorg/jboss/netty/util/internal/d;->c:Z

    .line 38
    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/jboss/netty/util/internal/d;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method private static b(Ljava/lang/ClassLoader;)Z
    .locals 4

    .line 1
    const-string v0, "io.netty.noUnsafe"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lorg/jboss/netty/util/internal/j;->d(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const-string v0, "io.netty.tryUnsafe"

    .line 12
    .line 13
    invoke-static {v0}, Lorg/jboss/netty/util/internal/j;->a(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {v0, v3}, Lorg/jboss/netty/util/internal/j;->d(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v0, "org.jboss.netty.tryUnsafe"

    .line 26
    .line 27
    invoke-static {v0, v3}, Lorg/jboss/netty/util/internal/j;->d(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :goto_0
    if-nez v0, :cond_2

    .line 32
    .line 33
    return v1

    .line 34
    :cond_2
    :try_start_0
    const-string v0, "sun.misc.Unsafe"

    .line 35
    .line 36
    invoke-static {v0, v3, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Lorg/jboss/netty/util/internal/d;->c(Ljava/lang/Class;)Z

    .line 41
    .line 42
    .line 43
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return p0

    .line 45
    :catch_0
    return v1
.end method

.method private static c(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jboss/netty/util/internal/d$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/d$a;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static d()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/jboss/netty/util/internal/d;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public static e()I
    .locals 1

    .line 1
    sget v0, Lorg/jboss/netty/util/internal/d;->a:I

    .line 2
    .line 3
    return v0
.end method

.method private static f()I
    .locals 4

    .line 1
    const/4 v0, 0x6

    .line 2
    :try_start_0
    const-string v1, "android.app.Application"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return v0

    .line 8
    :catch_0
    const/4 v1, 0x0

    .line 9
    :try_start_1
    const-string v2, "java.util.concurrent.LinkedTransferQueue"

    .line 10
    .line 11
    const-class v3, Ljava/util/concurrent/BlockingQueue;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v2, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x7

    .line 21
    return v0

    .line 22
    :catch_1
    :try_start_2
    const-string v2, "java.util.ArrayDeque"

    .line 23
    .line 24
    const-class v3, Ljava/util/Queue;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v2, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 31
    .line 32
    .line 33
    return v0

    .line 34
    :catch_2
    const/4 v0, 0x5

    .line 35
    return v0
.end method
