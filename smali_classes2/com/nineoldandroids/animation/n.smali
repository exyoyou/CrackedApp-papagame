.class public Lcom/nineoldandroids/animation/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/animation/n$b;,
        Lcom/nineoldandroids/animation/n$c;
    }
.end annotation


# static fields
.field private static final l:Lcom/nineoldandroids/animation/p;

.field private static final m:Lcom/nineoldandroids/animation/p;

.field private static n:[Ljava/lang/Class;

.field private static o:[Ljava/lang/Class;

.field private static p:[Ljava/lang/Class;

.field private static final q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field b:Ljava/lang/String;

.field protected c:Lcom/nineoldandroids/util/c;

.field d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Method;

.field f:Ljava/lang/Class;

.field g:Lcom/nineoldandroids/animation/k;

.field final h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field final i:[Ljava/lang/Object;

.field private j:Lcom/nineoldandroids/animation/p;

.field private k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/nineoldandroids/animation/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/nineoldandroids/animation/n;->l:Lcom/nineoldandroids/animation/p;

    .line 7
    .line 8
    new-instance v0, Lcom/nineoldandroids/animation/f;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/nineoldandroids/animation/f;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/nineoldandroids/animation/n;->m:Lcom/nineoldandroids/animation/p;

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    new-array v1, v0, [Ljava/lang/Class;

    .line 17
    .line 18
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v2, v1, v3

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    const-class v5, Ljava/lang/Float;

    .line 25
    .line 26
    aput-object v5, v1, v4

    .line 27
    .line 28
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    const/4 v7, 0x2

    .line 31
    aput-object v6, v1, v7

    .line 32
    .line 33
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 34
    .line 35
    const/4 v9, 0x3

    .line 36
    aput-object v8, v1, v9

    .line 37
    .line 38
    const/4 v10, 0x4

    .line 39
    const-class v11, Ljava/lang/Double;

    .line 40
    .line 41
    aput-object v11, v1, v10

    .line 42
    .line 43
    const/4 v12, 0x5

    .line 44
    const-class v13, Ljava/lang/Integer;

    .line 45
    .line 46
    aput-object v13, v1, v12

    .line 47
    .line 48
    sput-object v1, Lcom/nineoldandroids/animation/n;->n:[Ljava/lang/Class;

    .line 49
    .line 50
    new-array v1, v0, [Ljava/lang/Class;

    .line 51
    .line 52
    aput-object v8, v1, v3

    .line 53
    .line 54
    aput-object v13, v1, v4

    .line 55
    .line 56
    aput-object v2, v1, v7

    .line 57
    .line 58
    aput-object v6, v1, v9

    .line 59
    .line 60
    aput-object v5, v1, v10

    .line 61
    .line 62
    aput-object v11, v1, v12

    .line 63
    .line 64
    sput-object v1, Lcom/nineoldandroids/animation/n;->o:[Ljava/lang/Class;

    .line 65
    .line 66
    new-array v0, v0, [Ljava/lang/Class;

    .line 67
    .line 68
    aput-object v6, v0, v3

    .line 69
    .line 70
    aput-object v11, v0, v4

    .line 71
    .line 72
    aput-object v2, v0, v7

    .line 73
    .line 74
    aput-object v8, v0, v9

    .line 75
    .line 76
    aput-object v5, v0, v10

    .line 77
    .line 78
    aput-object v13, v0, v12

    .line 79
    .line 80
    sput-object v0, Lcom/nineoldandroids/animation/n;->p:[Ljava/lang/Class;

    .line 81
    .line 82
    new-instance v0, Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lcom/nineoldandroids/animation/n;->q:Ljava/util/HashMap;

    .line 88
    .line 89
    new-instance v0, Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    .line 93
    .line 94
    sput-object v0, Lcom/nineoldandroids/animation/n;->r:Ljava/util/HashMap;

    .line 95
    .line 96
    return-void
.end method

.method private constructor <init>(Lcom/nineoldandroids/util/c;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/nineoldandroids/animation/n;->d:Ljava/lang/reflect/Method;

    .line 12
    iput-object v0, p0, Lcom/nineoldandroids/animation/n;->e:Ljava/lang/reflect/Method;

    .line 13
    iput-object v0, p0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 14
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/n;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    iput-object v0, p0, Lcom/nineoldandroids/animation/n;->i:[Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/nineoldandroids/animation/n;->c:Lcom/nineoldandroids/util/c;

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/nineoldandroids/util/c;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nineoldandroids/animation/n;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/animation/n$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/n;-><init>(Lcom/nineoldandroids/util/c;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/nineoldandroids/animation/n;->d:Ljava/lang/reflect/Method;

    .line 5
    iput-object v0, p0, Lcom/nineoldandroids/animation/n;->e:Ljava/lang/reflect/Method;

    .line 6
    iput-object v0, p0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 7
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/n;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/nineoldandroids/animation/n;->i:[Ljava/lang/Object;

    .line 9
    iput-object p1, p0, Lcom/nineoldandroids/animation/n;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/nineoldandroids/animation/n$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/n;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private C(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/HashMap;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/nineoldandroids/animation/n;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/reflect/Method;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-nez v1, :cond_2

    .line 29
    .line 30
    invoke-direct {p0, p1, p3, p4}, Lcom/nineoldandroids/animation/n;->f(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    new-instance v0, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p1, p0, Lcom/nineoldandroids/animation/n;->b:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object p1, p0, Lcom/nineoldandroids/animation/n;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 56
    .line 57
    .line 58
    return-object v1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    iget-object p2, p0, Lcom/nineoldandroids/animation/n;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method private E(Ljava/lang/Object;Lcom/nineoldandroids/animation/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->c:Lcom/nineoldandroids/util/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/util/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2, v0}, Lcom/nineoldandroids/animation/j;->o(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->e:Ljava/lang/reflect/Method;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Lcom/nineoldandroids/animation/n;->z(Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->e:Ljava/lang/reflect/Method;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p2, p1}, Lcom/nineoldandroids/animation/j;->o(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_1
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :cond_1
    :goto_0
    return-object p0
.end method

.method private f(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/nineoldandroids/animation/n;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :catch_0
    move-exception p3

    .line 18
    :try_start_1
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string p2, "Couldn\'t find no-arg method for property "

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/nineoldandroids/animation/n;->b:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, ": "

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_0
    new-array p3, v0, [Ljava/lang/Class;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/nineoldandroids/animation/n;->f:Ljava/lang/Class;

    .line 54
    .line 55
    const-class v3, Ljava/lang/Float;

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/4 v3, 0x0

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    sget-object v2, Lcom/nineoldandroids/animation/n;->n:[Ljava/lang/Class;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/nineoldandroids/animation/n;->f:Ljava/lang/Class;

    .line 68
    .line 69
    const-class v4, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    sget-object v2, Lcom/nineoldandroids/animation/n;->o:[Ljava/lang/Class;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    iget-object v2, p0, Lcom/nineoldandroids/animation/n;->f:Ljava/lang/Class;

    .line 81
    .line 82
    const-class v4, Ljava/lang/Double;

    .line 83
    .line 84
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    sget-object v2, Lcom/nineoldandroids/animation/n;->p:[Ljava/lang/Class;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    new-array v2, v0, [Ljava/lang/Class;

    .line 94
    .line 95
    iget-object v4, p0, Lcom/nineoldandroids/animation/n;->f:Ljava/lang/Class;

    .line 96
    .line 97
    aput-object v4, v2, v3

    .line 98
    .line 99
    :goto_0
    array-length v4, v2

    .line 100
    const/4 v5, 0x0

    .line 101
    :goto_1
    if-ge v5, v4, :cond_4

    .line 102
    .line 103
    aget-object v6, v2, v5

    .line 104
    .line 105
    aput-object v6, p3, v3

    .line 106
    .line 107
    :try_start_2
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iput-object v6, p0, Lcom/nineoldandroids/animation/n;->f:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 112
    .line 113
    return-object v1

    .line 114
    :catch_2
    :try_start_3
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 119
    .line 120
    .line 121
    iput-object v6, p0, Lcom/nineoldandroids/animation/n;->f:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    .line 122
    .line 123
    return-object v1

    .line 124
    :catch_3
    add-int/lit8 v5, v5, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string p2, "Couldn\'t find setter/getter for property "

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object p2, p0, Lcom/nineoldandroids/animation/n;->b:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string p2, " with value type "

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object p2, p0, Lcom/nineoldandroids/animation/n;->f:Ljava/lang/Class;

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    :goto_2
    move-object p1, v1

    .line 153
    :goto_3
    return-object p1
.end method

.method public static varargs i(Lcom/nineoldandroids/util/c;[F)Lcom/nineoldandroids/animation/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nineoldandroids/util/c<",
            "*",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lcom/nineoldandroids/animation/n;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/n$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/n$b;-><init>(Lcom/nineoldandroids/util/c;[F)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static varargs j(Ljava/lang/String;[F)Lcom/nineoldandroids/animation/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/n$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/n$b;-><init>(Ljava/lang/String;[F)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static varargs k(Lcom/nineoldandroids/util/c;[I)Lcom/nineoldandroids/animation/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nineoldandroids/util/c<",
            "*",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lcom/nineoldandroids/animation/n;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/n$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/n$c;-><init>(Lcom/nineoldandroids/util/c;[I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static varargs l(Ljava/lang/String;[I)Lcom/nineoldandroids/animation/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/n$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/n$c;-><init>(Ljava/lang/String;[I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static varargs m(Lcom/nineoldandroids/util/c;[Lcom/nineoldandroids/animation/j;)Lcom/nineoldandroids/animation/n;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/nineoldandroids/animation/k;->e([Lcom/nineoldandroids/animation/j;)Lcom/nineoldandroids/animation/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/nineoldandroids/animation/i;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/nineoldandroids/animation/n$c;

    .line 10
    .line 11
    check-cast v0, Lcom/nineoldandroids/animation/i;

    .line 12
    .line 13
    invoke-direct {p1, p0, v0}, Lcom/nineoldandroids/animation/n$c;-><init>(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/animation/i;)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    instance-of v1, v0, Lcom/nineoldandroids/animation/g;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    new-instance p1, Lcom/nineoldandroids/animation/n$b;

    .line 22
    .line 23
    check-cast v0, Lcom/nineoldandroids/animation/g;

    .line 24
    .line 25
    invoke-direct {p1, p0, v0}, Lcom/nineoldandroids/animation/n$b;-><init>(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/animation/g;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1
    new-instance v1, Lcom/nineoldandroids/animation/n;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/nineoldandroids/animation/n;-><init>(Lcom/nineoldandroids/util/c;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, v1, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    aget-object p0, p1, p0

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/j;->getType()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iput-object p0, v1, Lcom/nineoldandroids/animation/n;->f:Ljava/lang/Class;

    .line 44
    .line 45
    return-object v1
.end method

.method public static varargs n(Ljava/lang/String;[Lcom/nineoldandroids/animation/j;)Lcom/nineoldandroids/animation/n;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/nineoldandroids/animation/k;->e([Lcom/nineoldandroids/animation/j;)Lcom/nineoldandroids/animation/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/nineoldandroids/animation/i;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/nineoldandroids/animation/n$c;

    .line 10
    .line 11
    check-cast v0, Lcom/nineoldandroids/animation/i;

    .line 12
    .line 13
    invoke-direct {p1, p0, v0}, Lcom/nineoldandroids/animation/n$c;-><init>(Ljava/lang/String;Lcom/nineoldandroids/animation/i;)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    instance-of v1, v0, Lcom/nineoldandroids/animation/g;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    new-instance p1, Lcom/nineoldandroids/animation/n$b;

    .line 22
    .line 23
    check-cast v0, Lcom/nineoldandroids/animation/g;

    .line 24
    .line 25
    invoke-direct {p1, p0, v0}, Lcom/nineoldandroids/animation/n$b;-><init>(Ljava/lang/String;Lcom/nineoldandroids/animation/g;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1
    new-instance v1, Lcom/nineoldandroids/animation/n;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/nineoldandroids/animation/n;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, v1, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    aget-object p0, p1, p0

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/j;->getType()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iput-object p0, v1, Lcom/nineoldandroids/animation/n;->f:Ljava/lang/Class;

    .line 44
    .line 45
    return-object v1
.end method

.method public static varargs o(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/animation/p;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nineoldandroids/util/c;",
            "Lcom/nineoldandroids/animation/p<",
            "TV;>;[TV;)",
            "Lcom/nineoldandroids/animation/n;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/nineoldandroids/animation/n;-><init>(Lcom/nineoldandroids/util/c;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/n;->v([Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/n;->r(Lcom/nineoldandroids/animation/p;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static varargs p(Ljava/lang/String;Lcom/nineoldandroids/animation/p;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/nineoldandroids/animation/n;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/n;->v([Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/n;->r(Lcom/nineoldandroids/animation/p;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private z(Ljava/lang/Class;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/nineoldandroids/animation/n;->r:Ljava/util/HashMap;

    .line 2
    .line 3
    const-string v1, "get"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nineoldandroids/animation/n;->C(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/nineoldandroids/animation/n;->e:Ljava/lang/reflect/Method;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method A(Ljava/lang/Class;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/nineoldandroids/animation/n;->q:Ljava/util/HashMap;

    .line 2
    .line 3
    const-string v1, "set"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/nineoldandroids/animation/n;->f:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nineoldandroids/animation/n;->C(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/nineoldandroids/animation/n;->d:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    return-void
.end method

.method B(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->c:Lcom/nineoldandroids/util/c;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/util/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/nineoldandroids/animation/j;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j;->f()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Lcom/nineoldandroids/animation/n;->c:Lcom/nineoldandroids/util/c;

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Lcom/nineoldandroids/util/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/j;->o(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void

    .line 45
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v1, "No such property ("

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/nineoldandroids/animation/n;->c:Lcom/nineoldandroids/util/c;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/nineoldandroids/util/c;->b()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ") on target object "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ". Trying reflection instead"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/nineoldandroids/animation/n;->c:Lcom/nineoldandroids/util/c;

    .line 79
    .line 80
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/nineoldandroids/animation/n;->d:Ljava/lang/reflect/Method;

    .line 85
    .line 86
    if-nez v1, :cond_3

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/n;->A(Ljava/lang/Class;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-object v1, p0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 92
    .line 93
    iget-object v1, v1, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_6

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lcom/nineoldandroids/animation/j;

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/j;->f()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_4

    .line 116
    .line 117
    iget-object v3, p0, Lcom/nineoldandroids/animation/n;->e:Ljava/lang/reflect/Method;

    .line 118
    .line 119
    if-nez v3, :cond_5

    .line 120
    .line 121
    invoke-direct {p0, v0}, Lcom/nineoldandroids/animation/n;->z(Ljava/lang/Class;)V

    .line 122
    .line 123
    .line 124
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/nineoldandroids/animation/n;->e:Ljava/lang/reflect/Method;

    .line 125
    .line 126
    const/4 v4, 0x0

    .line 127
    new-array v4, v4, [Ljava/lang/Object;

    .line 128
    .line 129
    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/j;->o(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catch_1
    move-exception v2

    .line 138
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :catch_2
    move-exception v2

    .line 143
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_6
    return-void
.end method

.method D(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/nineoldandroids/animation/j;

    .line 11
    .line 12
    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/n;->E(Ljava/lang/Object;Lcom/nineoldandroids/animation/j;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method a(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/k;->b(F)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/nineoldandroids/animation/n;->k:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method public b()Lcom/nineoldandroids/animation/n;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/nineoldandroids/animation/n;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/nineoldandroids/animation/n;->b:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v1, v0, Lcom/nineoldandroids/animation/n;->b:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/nineoldandroids/animation/n;->c:Lcom/nineoldandroids/util/c;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/nineoldandroids/animation/n;->c:Lcom/nineoldandroids/util/c;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/k;->a()Lcom/nineoldandroids/animation/k;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/nineoldandroids/animation/n;->j:Lcom/nineoldandroids/animation/p;

    .line 24
    .line 25
    iput-object v1, v0, Lcom/nineoldandroids/animation/n;->j:Lcom/nineoldandroids/animation/p;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    return-object v0

    .line 28
    :catch_0
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/n;->b()Lcom/nineoldandroids/animation/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->k:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->j:Lcom/nineoldandroids/animation/p;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->f:Ljava/lang/Class;

    .line 6
    .line 7
    const-class v1, Ljava/lang/Integer;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/nineoldandroids/animation/n;->l:Lcom/nineoldandroids/animation/p;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-class v1, Ljava/lang/Float;

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    sget-object v0, Lcom/nineoldandroids/animation/n;->m:Lcom/nineoldandroids/animation/p;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    iput-object v0, p0, Lcom/nineoldandroids/animation/n;->j:Lcom/nineoldandroids/animation/p;

    .line 23
    .line 24
    :cond_2
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->j:Lcom/nineoldandroids/animation/p;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget-object v1, p0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/k;->g(Lcom/nineoldandroids/animation/p;)V

    .line 31
    .line 32
    .line 33
    :cond_3
    return-void
.end method

.method q(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->c:Lcom/nineoldandroids/util/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/n;->d()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/nineoldandroids/util/c;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->d:Ljava/lang/reflect/Method;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->i:[Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/n;->d()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->d:Ljava/lang/reflect/Method;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/nineoldandroids/animation/n;->i:[Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public r(Lcom/nineoldandroids/animation/p;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/animation/n;->j:Lcom/nineoldandroids/animation/p;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/k;->g(Lcom/nineoldandroids/animation/p;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public varargs s([F)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/nineoldandroids/animation/n;->f:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/nineoldandroids/animation/k;->c([F)Lcom/nineoldandroids/animation/k;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 10
    .line 11
    return-void
.end method

.method public varargs t([I)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/nineoldandroids/animation/n;->f:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/nineoldandroids/animation/k;->d([I)Lcom/nineoldandroids/animation/k;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 10
    .line 11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/nineoldandroids/animation/n;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ": "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/k;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public varargs u([Lcom/nineoldandroids/animation/j;)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-array v1, v1, [Lcom/nineoldandroids/animation/j;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aget-object v3, p1, v2

    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/j;->getType()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iput-object v3, p0, Lcom/nineoldandroids/animation/n;->f:Ljava/lang/Class;

    .line 17
    .line 18
    :goto_0
    if-ge v2, v0, :cond_0

    .line 19
    .line 20
    aget-object v3, p1, v2

    .line 21
    .line 22
    aput-object v3, v1, v2

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Lcom/nineoldandroids/animation/k;

    .line 28
    .line 29
    invoke-direct {p1, v1}, Lcom/nineoldandroids/animation/k;-><init>([Lcom/nineoldandroids/animation/j;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 33
    .line 34
    return-void
.end method

.method public varargs v([Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/nineoldandroids/animation/n;->f:Ljava/lang/Class;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/nineoldandroids/animation/k;->f([Ljava/lang/Object;)Lcom/nineoldandroids/animation/k;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 15
    .line 16
    return-void
.end method

.method public w(Lcom/nineoldandroids/util/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/animation/n;->c:Lcom/nineoldandroids/util/c;

    .line 2
    .line 3
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/animation/n;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method y(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/nineoldandroids/animation/j;

    .line 16
    .line 17
    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/n;->E(Ljava/lang/Object;Lcom/nineoldandroids/animation/j;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
