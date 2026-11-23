.class public final Lcom/xinzhu/haunted/android/content/pm/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "s"

.field public static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z

.field private static f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Z

.field private static h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Z


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/content/pm/r;->a()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/xinzhu/haunted/d;->a(Ljava/lang/Class;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/xinzhu/haunted/android/content/pm/s;->c:Ljava/lang/Class;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/xinzhu/haunted/android/content/pm/s;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/xinzhu/haunted/android/content/pm/s;->e:Z

    .line 20
    .line 21
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v1, Lcom/xinzhu/haunted/android/content/pm/s;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 27
    .line 28
    sput-boolean v0, Lcom/xinzhu/haunted/android/content/pm/s;->g:Z

    .line 29
    .line 30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v1, Lcom/xinzhu/haunted/android/content/pm/s;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    .line 37
    sput-boolean v0, Lcom/xinzhu/haunted/android/content/pm/s;->i:Z

    .line 38
    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xinzhu/haunted/android/content/pm/s;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/xinzhu/haunted/android/content/pm/s;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x1

    .line 8
    if-nez p0, :cond_2

    .line 9
    .line 10
    sget-boolean p0, Lcom/xinzhu/haunted/android/content/pm/s;->i:Z

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lcom/xinzhu/haunted/android/content/pm/s;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    sget-object p3, Lcom/xinzhu/haunted/android/content/pm/s;->c:Ljava/lang/Class;

    .line 18
    .line 19
    const/16 p4, 0xa

    .line 20
    .line 21
    new-array p4, p4, [Ljava/lang/Object;

    .line 22
    .line 23
    const-class p5, Ljava/lang/String;

    .line 24
    .line 25
    aput-object p5, p4, p2

    .line 26
    .line 27
    aput-object p5, p4, p1

    .line 28
    .line 29
    const/4 p6, 0x2

    .line 30
    const-class p7, Ljava/util/List;

    .line 31
    .line 32
    aput-object p7, p4, p6

    .line 33
    .line 34
    const/4 p6, 0x3

    .line 35
    aput-object p5, p4, p6

    .line 36
    .line 37
    const/4 p5, 0x4

    .line 38
    sget-object p6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 39
    .line 40
    aput-object p6, p4, p5

    .line 41
    .line 42
    const/4 p5, 0x5

    .line 43
    sget-object p6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    aput-object p6, p4, p5

    .line 46
    .line 47
    const/4 p5, 0x6

    .line 48
    invoke-static {}, Lcom/xinzhu/haunted/android/content/pm/q;->a()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object p6

    .line 52
    aput-object p6, p4, p5

    .line 53
    .line 54
    const/4 p5, 0x7

    .line 55
    aput-object p7, p4, p5

    .line 56
    .line 57
    const/16 p5, 0x8

    .line 58
    .line 59
    aput-object p7, p4, p5

    .line 60
    .line 61
    const/16 p5, 0x9

    .line 62
    .line 63
    sget-object p6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 64
    .line 65
    aput-object p6, p4, p5

    .line 66
    .line 67
    const-string p5, "HtSharedLibraryInfo"

    .line 68
    .line 69
    invoke-static {p3, p5, p4}, Lcom/xinzhu/haunted/d;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    const/4 p4, 0x0

    .line 74
    invoke-static {p0, p4, p3}, Landroidx/lifecycle/i;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    sput-boolean p1, Lcom/xinzhu/haunted/android/content/pm/s;->i:Z

    .line 78
    .line 79
    sget-object p0, Lcom/xinzhu/haunted/android/content/pm/s;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-nez p0, :cond_0

    .line 86
    .line 87
    return p2

    .line 88
    :cond_0
    return p1

    .line 89
    :cond_1
    return p2

    .line 90
    :cond_2
    return p1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)Lcom/xinzhu/haunted/android/content/pm/s;
    .locals 5

    .line 1
    invoke-static/range {p0 .. p10}, Lcom/xinzhu/haunted/android/content/pm/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    new-instance v0, Lcom/xinzhu/haunted/android/content/pm/s;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/xinzhu/haunted/android/content/pm/s;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lcom/xinzhu/haunted/android/content/pm/s;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 21
    .line 22
    const/16 v3, 0xa

    .line 23
    .line 24
    new-array v3, v3, [Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    aput-object p0, v3, v4

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    aput-object p1, v3, p0

    .line 31
    .line 32
    const/4 p0, 0x2

    .line 33
    aput-object p2, v3, p0

    .line 34
    .line 35
    const/4 p0, 0x3

    .line 36
    aput-object p3, v3, p0

    .line 37
    .line 38
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const/4 p1, 0x4

    .line 43
    aput-object p0, v3, p1

    .line 44
    .line 45
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/4 p1, 0x5

    .line 50
    aput-object p0, v3, p1

    .line 51
    .line 52
    const/4 p0, 0x6

    .line 53
    aput-object p7, v3, p0

    .line 54
    .line 55
    const/4 p0, 0x7

    .line 56
    aput-object p8, v3, p0

    .line 57
    .line 58
    const/16 p0, 0x8

    .line 59
    .line 60
    aput-object p9, v3, p0

    .line 61
    .line 62
    invoke-static {p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const/16 p1, 0x9

    .line 67
    .line 68
    aput-object p0, v3, p1

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    iput-object p0, v0, Lcom/xinzhu/haunted/android/content/pm/s;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    return-object v0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_1
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_2
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-object v1
.end method


# virtual methods
.method public b()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/android/content/pm/s;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    sget-boolean v0, Lcom/xinzhu/haunted/android/content/pm/s;->e:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/xinzhu/haunted/android/content/pm/s;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    sget-object v3, Lcom/xinzhu/haunted/android/content/pm/s;->c:Ljava/lang/Class;

    .line 18
    .line 19
    const-string v4, "getName"

    .line 20
    .line 21
    new-array v5, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {v3, v4, v5}, Lcom/xinzhu/haunted/d;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v0, v4, v3}, Landroidx/lifecycle/i;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    sput-boolean v1, Lcom/xinzhu/haunted/android/content/pm/s;->e:Z

    .line 32
    .line 33
    sget-object v0, Lcom/xinzhu/haunted/android/content/pm/s;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    return v2

    .line 42
    :cond_0
    return v1

    .line 43
    :cond_1
    return v2

    .line 44
    :cond_2
    return v1
.end method

.method public c()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/android/content/pm/s;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    sget-boolean v0, Lcom/xinzhu/haunted/android/content/pm/s;->g:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/xinzhu/haunted/android/content/pm/s;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    sget-object v3, Lcom/xinzhu/haunted/android/content/pm/s;->c:Ljava/lang/Class;

    .line 18
    .line 19
    const-string v4, "getPath"

    .line 20
    .line 21
    new-array v5, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {v3, v4, v5}, Lcom/xinzhu/haunted/d;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v0, v4, v3}, Landroidx/lifecycle/i;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    sput-boolean v1, Lcom/xinzhu/haunted/android/content/pm/s;->g:Z

    .line 32
    .line 33
    sget-object v0, Lcom/xinzhu/haunted/android/content/pm/s;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    return v2

    .line 42
    :cond_0
    return v1

    .line 43
    :cond_1
    return v2

    .line 44
    :cond_2
    return v1
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/s;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/content/pm/s;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/reflect/Method;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/xinzhu/haunted/android/content/pm/s;->a:Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-object v1
.end method

.method public f()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/s;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/content/pm/s;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/reflect/Method;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/xinzhu/haunted/android/content/pm/s;->a:Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-object v1
.end method
