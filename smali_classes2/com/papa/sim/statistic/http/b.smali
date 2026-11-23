.class public Lcom/papa/sim/statistic/http/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/sim/statistic/http/b$k;,
        Lcom/papa/sim/statistic/http/b$n;,
        Lcom/papa/sim/statistic/http/b$p;,
        Lcom/papa/sim/statistic/http/b$l;,
        Lcom/papa/sim/statistic/http/b$j;,
        Lcom/papa/sim/statistic/http/b$i;,
        Lcom/papa/sim/statistic/http/b$q;,
        Lcom/papa/sim/statistic/http/b$o;,
        Lcom/papa/sim/statistic/http/b$m;
    }
.end annotation


# static fields
.field private static final r:Ljava/lang/String; = "OkHttpClientManager"

.field private static s:Lcom/papa/sim/statistic/http/b;


# instance fields
.field private a:Lokhttp3/OkHttpClient;

.field private b:Landroid/os/Handler;

.field private c:Lcom/papa/sim/statistic/JsonMapper;

.field private d:Lcom/papa/sim/statistic/http/b$l;

.field private e:Lcom/papa/sim/statistic/http/b$j;

.field private f:Lcom/papa/sim/statistic/http/b$i;

.field private g:Lcom/papa/sim/statistic/http/b$k;

.field private h:Lcom/papa/sim/statistic/http/b$q;

.field private i:Lcom/papa/sim/statistic/http/b$o;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field private final q:Lcom/papa/sim/statistic/http/b$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/papa/sim/statistic/http/b$p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/papa/sim/statistic/http/b$l;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/http/b$l;-><init>(Lcom/papa/sim/statistic/http/b;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->d:Lcom/papa/sim/statistic/http/b$l;

    .line 10
    .line 11
    new-instance v0, Lcom/papa/sim/statistic/http/b$j;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/http/b$j;-><init>(Lcom/papa/sim/statistic/http/b;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->e:Lcom/papa/sim/statistic/http/b$j;

    .line 17
    .line 18
    new-instance v0, Lcom/papa/sim/statistic/http/b$i;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/http/b$i;-><init>(Lcom/papa/sim/statistic/http/b;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->f:Lcom/papa/sim/statistic/http/b$i;

    .line 24
    .line 25
    new-instance v0, Lcom/papa/sim/statistic/http/b$k;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/http/b$k;-><init>(Lcom/papa/sim/statistic/http/b;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->g:Lcom/papa/sim/statistic/http/b$k;

    .line 31
    .line 32
    new-instance v0, Lcom/papa/sim/statistic/http/b$q;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/http/b$q;-><init>(Lcom/papa/sim/statistic/http/b;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->h:Lcom/papa/sim/statistic/http/b$q;

    .line 38
    .line 39
    new-instance v0, Lcom/papa/sim/statistic/http/b$o;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/http/b$o;-><init>(Lcom/papa/sim/statistic/http/b;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->i:Lcom/papa/sim/statistic/http/b$o;

    .line 45
    .line 46
    const-string v0, ""

    .line 47
    .line 48
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->j:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->k:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->l:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->m:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->n:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->o:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->p:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v0, Lcom/papa/sim/statistic/http/b$h;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/http/b$h;-><init>(Lcom/papa/sim/statistic/http/b;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->q:Lcom/papa/sim/statistic/http/b$p;

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/papa/sim/statistic/http/b;->S()V

    .line 70
    .line 71
    .line 72
    new-instance v0, Landroid/os/Handler;

    .line 73
    .line 74
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->b:Landroid/os/Handler;

    .line 82
    .line 83
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->c:Lcom/papa/sim/statistic/JsonMapper;

    .line 88
    .line 89
    return-void
.end method

.method public static A()Lcom/papa/sim/statistic/http/b$i;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {v0}, Lcom/papa/sim/statistic/http/b;->b()Lcom/papa/sim/statistic/http/b$i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static B()Lcom/papa/sim/statistic/http/b$j;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {v0}, Lcom/papa/sim/statistic/http/b;->c()Lcom/papa/sim/statistic/http/b$j;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private C(Ljava/lang/reflect/Type;)[Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    :try_start_0
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const-string v3, ""

    .line 8
    .line 9
    const-string v4, "interface "

    .line 10
    .line 11
    const-string v5, "class "

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    :try_start_1
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    aget-object v1, v1, v2

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    aput-object p1, v0, v2

    .line 57
    .line 58
    invoke-direct {p0, v1}, Lcom/papa/sim/statistic/http/b;->C(Ljava/lang/reflect/Type;)[Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p0, v0, p1}, Lcom/papa/sim/statistic/http/b;->v([Ljava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    move-object v0, p1

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :cond_4
    :goto_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    aput-object p1, v0, v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :goto_2
    return-object v0
.end method

.method private D(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    return-object p1
.end method

.method public static F()Lcom/papa/sim/statistic/http/b$l;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {v0}, Lcom/papa/sim/statistic/http/b;->d()Lcom/papa/sim/statistic/http/b$l;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static G()Lcom/papa/sim/statistic/http/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/http/b;->s:Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/papa/sim/statistic/http/b;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/papa/sim/statistic/http/b;->s:Lcom/papa/sim/statistic/http/b;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/papa/sim/statistic/http/b;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/papa/sim/statistic/http/b;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/papa/sim/statistic/http/b;->s:Lcom/papa/sim/statistic/http/b;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/papa/sim/statistic/http/b;->s:Lcom/papa/sim/statistic/http/b;

    .line 25
    .line 26
    return-object v0
.end method

.method public static I()Lcom/papa/sim/statistic/http/b$q;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {v0}, Lcom/papa/sim/statistic/http/b;->e()Lcom/papa/sim/statistic/http/b$q;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "application/octet-stream"

    .line 12
    .line 13
    :cond_0
    return-object p1
.end method

.method private R()V
    .locals 0

    .line 1
    return-void
.end method

.method private S()V
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/http/b;->c0(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/join/mgps/Util/q2;->a(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/papa/sim/statistic/http/b$a;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/papa/sim/statistic/http/b$a;-><init>(Lcom/papa/sim/statistic/http/b;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->a:Lokhttp3/OkHttpClient;

    .line 27
    .line 28
    return-void
.end method

.method private T(Ljava/util/Map;)[Lcom/papa/sim/statistic/http/b$n;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/papa/sim/statistic/http/b$n;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-array p1, v0, [Lcom/papa/sim/statistic/http/b$n;

    .line 5
    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-array v1, v1, [Lcom/papa/sim/statistic/http/b$n;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Map$Entry;

    .line 32
    .line 33
    add-int/lit8 v3, v0, 0x1

    .line 34
    .line 35
    new-instance v4, Lcom/papa/sim/statistic/http/b$n;

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v4, v5, v2}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    aput-object v4, v1, v0

    .line 53
    .line 54
    move v0, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-object v1
.end method

.method public static U(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->H()Lcom/papa/sim/statistic/http/b$o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/papa/sim/statistic/http/b$o;->o(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static V(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->H()Lcom/papa/sim/statistic/http/b$o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b$o;->o(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static W(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/papa/sim/statistic/http/b$p;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->H()Lcom/papa/sim/statistic/http/b$o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/papa/sim/statistic/http/b$o;->q(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static X(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/papa/sim/statistic/http/b$p;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->H()Lcom/papa/sim/statistic/http/b$o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b$o;->q(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static Y(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->H()Lcom/papa/sim/statistic/http/b$o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/papa/sim/statistic/http/b$o;->u(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static Z(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->H()Lcom/papa/sim/statistic/http/b$o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b$o;->u(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->a:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lokhttp3/Call;

    .line 27
    .line 28
    invoke-interface {v2}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-interface {v2}, Lokhttp3/Call;->cancel()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lokhttp3/Call;

    .line 65
    .line 66
    invoke-interface {v2}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    invoke-interface {v2}, Lokhttp3/Call;->cancel()V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p1
.end method

.method private a0(Lokhttp3/Request;Ljava/lang/Exception;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->b:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/http/b$f;

    .line 4
    .line 5
    invoke-direct {v1, p0, p3, p1, p2}, Lcom/papa/sim/statistic/http/b$f;-><init>(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;Ljava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private b()Lcom/papa/sim/statistic/http/b$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->f:Lcom/papa/sim/statistic/http/b$i;

    .line 2
    .line 3
    return-object v0
.end method

.method private b0(Ljava/lang/Object;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->b:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/http/b$g;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2, p1}, Lcom/papa/sim/statistic/http/b$g;-><init>(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private c()Lcom/papa/sim/statistic/http/b$j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->e:Lcom/papa/sim/statistic/http/b$j;

    .line 2
    .line 3
    return-object v0
.end method

.method private c0(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/http/b$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/http/b$d;-><init>(Lcom/papa/sim/statistic/http/b;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method private d()Lcom/papa/sim/statistic/http/b$l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->d:Lcom/papa/sim/statistic/http/b$l;

    .line 2
    .line 3
    return-object v0
.end method

.method private e()Lcom/papa/sim/statistic/http/b$q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->h:Lcom/papa/sim/statistic/http/b$q;

    .line 2
    .line 3
    return-object v0
.end method

.method public static e0()Lokhttp3/OkHttpClient;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/http/b$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/http/b$b;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SSL"

    .line 7
    .line 8
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v0, v2, v3

    .line 17
    .line 18
    new-instance v3, Ljava/security/SecureRandom;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v1, v4, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    .line 32
    .line 33
    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lcom/papa/sim/statistic/http/b$c;

    .line 41
    .line 42
    invoke-direct {v1}, Lcom/papa/sim/statistic/http/b$c;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method static synthetic f(Lcom/papa/sim/statistic/http/b;Lokhttp3/Request;Ljava/lang/Exception;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b;->a0(Lokhttp3/Request;Ljava/lang/Exception;Lcom/papa/sim/statistic/http/b$p;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lcom/papa/sim/statistic/http/b;Ljava/lang/Object;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/sim/statistic/http/b;->b0(Ljava/lang/Object;Lcom/papa/sim/statistic/http/b$p;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/papa/sim/statistic/http/b;)Lcom/papa/sim/statistic/http/b$k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/sim/statistic/http/b;->g:Lcom/papa/sim/statistic/http/b$k;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/papa/sim/statistic/http/b;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/sim/statistic/http/b;->b:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/papa/sim/statistic/http/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/http/b;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic k(Lcom/papa/sim/statistic/http/b;Ljava/lang/reflect/Type;)[Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/http/b;->C(Ljava/lang/reflect/Type;)[Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic l(Lcom/papa/sim/statistic/http/b;)Lcom/papa/sim/statistic/JsonMapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/sim/statistic/http/b;->c:Lcom/papa/sim/statistic/JsonMapper;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lcom/papa/sim/statistic/http/b;Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Request;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b;->s(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Request;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private m0([Lcom/papa/sim/statistic/http/b$n;)[Lcom/papa/sim/statistic/http/b$n;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/papa/sim/statistic/http/b$n;

    :cond_0
    return-object p1
.end method

.method static synthetic n(Lcom/papa/sim/statistic/http/b;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/sim/statistic/http/b;->a:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/papa/sim/statistic/http/b;Ljava/util/Map;)[Lcom/papa/sim/statistic/http/b$n;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/http/b;->T(Ljava/util/Map;)[Lcom/papa/sim/statistic/http/b$n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic p(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/sim/statistic/http/b;->w(Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(Lcom/papa/sim/statistic/http/b;[Lcom/papa/sim/statistic/http/b$n;)[Lcom/papa/sim/statistic/http/b$n;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/http/b;->m0([Lcom/papa/sim/statistic/http/b$n;)[Lcom/papa/sim/statistic/http/b$n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic r(Lcom/papa/sim/statistic/http/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/http/b;->Q(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private s(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Request;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    new-array p2, v0, [Lcom/papa/sim/statistic/http/b$n;

    .line 5
    .line 6
    :cond_0
    new-instance v1, Lokhttp3/FormBody$Builder;

    .line 7
    .line 8
    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    array-length v2, p2

    .line 12
    :goto_0
    if-ge v0, v2, :cond_1

    .line 13
    .line 14
    aget-object v3, p2, v0

    .line 15
    .line 16
    :try_start_0
    iget-object v4, v3, Lcom/papa/sim/statistic/http/b$n;->a:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, v3, Lcom/papa/sim/statistic/http/b$n;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v4, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    new-instance v0, Lokhttp3/Request$Builder;

    .line 36
    .line 37
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 45
    .line 46
    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, p3}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method public static t(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/http/b;->a(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private v([Ljava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    array-length v1, p2

    .line 3
    add-int/2addr v0, v1

    .line 4
    new-array v0, v0, [Ljava/lang/Class;

    .line 5
    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    array-length p1, p1

    .line 12
    array-length v1, p2

    .line 13
    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method private w(Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/papa/sim/statistic/http/b;->q:Lcom/papa/sim/statistic/http/b$p;

    .line 4
    .line 5
    :cond_0
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/http/b$p;->c(Lokhttp3/Request;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->a:Lokhttp3/OkHttpClient;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v0, Lcom/papa/sim/statistic/http/b$e;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lcom/papa/sim/statistic/http/b$e;-><init>(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static x(Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->E()Lcom/papa/sim/statistic/http/b$k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p0, p1, v1}, Lcom/papa/sim/statistic/http/b$k;->h(Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static y(Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->E()Lcom/papa/sim/statistic/http/b$k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0, p1, p2}, Lcom/papa/sim/statistic/http/b$k;->h(Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static z()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->u()Lokhttp3/OkHttpClient;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method


# virtual methods
.method public E()Lcom/papa/sim/statistic/http/b$k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->g:Lcom/papa/sim/statistic/http/b$k;

    .line 2
    .line 3
    return-object v0
.end method

.method public H()Lcom/papa/sim/statistic/http/b$o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->i:Lcom/papa/sim/statistic/http/b$o;

    .line 2
    .line 3
    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->l:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->m:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->k:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->o:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->n:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->p:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->j:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b;->j:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/http/b;->k:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/http/b;->l:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/papa/sim/statistic/http/b;->m:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/papa/sim/statistic/http/b;->n:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/papa/sim/statistic/http/b;->o:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/papa/sim/statistic/http/b;->p:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public f0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public g0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public h0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public i0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public j0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public k0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public l0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public u()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->a:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    return-object v0
.end method
