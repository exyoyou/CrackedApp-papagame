.class public Lcn/fly/commons/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/fly/commons/w$a;,
        Lcn/fly/commons/w$b;,
        Lcn/fly/commons/w$c;
    }
.end annotation


# static fields
.field public static volatile a:Z

.field private static b:Lcn/fly/commons/w;


# instance fields
.field private c:Ljava/io/File;

.field private d:Ljava/math/BigInteger;

.field private e:Ljava/math/BigInteger;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcn/fly/commons/w;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcn/fly/commons/w;->g:Ljava/util/List;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    const/16 v1, 0x64

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcn/fly/commons/w;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    new-instance v0, Ljava/math/BigInteger;

    .line 29
    .line 30
    const-string v1, "f53c224aefb38daa0825c1b8ea691b16d2e16db10880548afddd780c6670a091a11dafa954ea4a9483797fda1045d2693a08daa48cf9cedce1e8733b857304cb"

    .line 31
    .line 32
    const/16 v2, 0x10

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcn/fly/commons/w;->d:Ljava/math/BigInteger;

    .line 38
    .line 39
    new-instance v0, Ljava/math/BigInteger;

    .line 40
    .line 41
    const-string v1, "27749621e6ca022469645faed16e8261acf6af822467382d55c24bb9bc02356ab16e76ddc799dc8ba6b4f110411996eeb63505c9dcf969d3fc085d712f0f1a9713b67aa1128d7cc41bda363afb0ec7ade60e542a4e22869395331cc0096de412034551e98bb2629ae1b7168b8bc82006d064ab335d8567283e70beb6a49e9423"

    .line 42
    .line 43
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcn/fly/commons/w;->e:Ljava/math/BigInteger;

    .line 47
    .line 48
    return-void
.end method

.method public static declared-synchronized a()Lcn/fly/commons/w;
    .locals 2

    const-class v0, Lcn/fly/commons/w;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcn/fly/commons/w;->b:Lcn/fly/commons/w;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcn/fly/commons/w;

    invoke-direct {v1}, Lcn/fly/commons/w;-><init>()V

    sput-object v1, Lcn/fly/commons/w;->b:Lcn/fly/commons/w;

    .line 5
    :cond_0
    sget-object v1, Lcn/fly/commons/w;->b:Lcn/fly/commons/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(I)Lcn/fly/tools/a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/fly/commons/w;->b(I)Lcn/fly/tools/a;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 30
    :cond_0
    :try_start_0
    invoke-static {}, Lcn/fly/commons/r;->c()[B

    move-result-object v0

    .line 31
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 32
    :try_start_1
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :try_start_2
    new-instance v7, Lcn/fly/tools/utils/FlyRSA;

    const/16 v8, 0x400

    invoke-direct {v7, v8}, Lcn/fly/tools/utils/FlyRSA;-><init>(I)V

    iget-object v8, p0, Lcn/fly/commons/w;->d:Ljava/math/BigInteger;

    iget-object v9, p0, Lcn/fly/commons/w;->e:Ljava/math/BigInteger;

    invoke-virtual {v7, v0, v8, v9}, Lcn/fly/tools/utils/FlyRSA;->encode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v7

    .line 34
    array-length v8, v7

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 35
    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    const-string v7, "utf-8"

    .line 36
    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcn/fly/tools/utils/Data;->AES128Encode([B[B)[B

    move-result-object p1

    .line 37
    array-length v0, p1

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 38
    invoke-virtual {v6, p1}, Ljava/io/OutputStream;->write([B)V

    .line 39
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-array p1, v5, [Ljava/io/Closeable;

    aput-object v6, p1, v4

    aput-object v2, p1, v3

    .line 40
    invoke-static {p1}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 41
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v6, v1

    :goto_0
    new-array v0, v5, [Ljava/io/Closeable;

    aput-object v6, v0, v4

    aput-object v2, v0, v3

    .line 42
    invoke-static {v0}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 43
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    .line 44
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object v1
.end method

.method static synthetic a(Lcn/fly/commons/w;Ljava/lang/Runnable;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/fly/commons/w;->a(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/Runnable;)Z
    .locals 3

    .line 10
    iget-object v0, p0, Lcn/fly/commons/w;->c:Ljava/io/File;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "005CemKhGel:dZfi"

    invoke-static {v2}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/fly/commons/w;->c:Ljava/io/File;

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcn/fly/commons/w;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :catchall_0
    :cond_0
    iget-object v0, p0, Lcn/fly/commons/w;->c:Ljava/io/File;

    new-instance v1, Lcn/fly/commons/w$1;

    invoke-direct {v1, p0, p1}, Lcn/fly/commons/w$1;-><init>(Lcn/fly/commons/w;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcn/fly/commons/v;->a(Ljava/io/File;Lcn/fly/commons/u;)Z

    move-result p1

    return p1
.end method

.method private static b(I)Lcn/fly/tools/a;
    .locals 4

    .line 4
    new-instance v0, Lcn/fly/tools/a;

    const-string v1, "005,emegLdhVfk"

    invoke-static {v1}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x32

    invoke-direct {v0, v2, p0, v1}, Lcn/fly/tools/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private b(ILjava/lang/String;)V
    .locals 4

    .line 5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "015dfUemgjRie8ek=gXgjedfiem h^elfk"

    .line 6
    invoke-static {v1}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "007ked:fi[e9fkBg"

    .line 8
    invoke-static {v2}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "008k*ekejelekejVj6fd"

    .line 9
    invoke-static {v1}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ver"

    .line 10
    sget v1, Lcn/fly/FlySDK;->SDK_VERSION_CODE:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "003Weggjfk"

    .line 11
    invoke-static {p1}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcn/fly/commons/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-static {}, Lcn/fly/FlySDK;->getContextSafely()Landroid/content/Context;

    move-result-object p1

    const-string p2, "013_gjPgfSedgkekelBeBedOde!gjQj"

    invoke-static {p2}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-array v0, v1, [Ljava/lang/Class;

    const-class v1, Landroid/content/Intent;

    aput-object v1, v0, v3

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 14
    invoke-static {p1, p2, v2, v0, v1}, Lcn/fly/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)I
    .locals 4

    .line 15
    invoke-static {}, Lcn/fly/FlySDK;->getContextSafely()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16
    sget-boolean v0, Lcn/fly/commons/w;->a:Z

    if-nez v0, :cond_1

    .line 17
    iget-object v0, p0, Lcn/fly/commons/w;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ltz v0, :cond_5

    .line 18
    iget-object v0, p0, Lcn/fly/commons/w;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    if-lez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcn/fly/commons/w;->g:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_0
    iget-object p1, p0, Lcn/fly/commons/w;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 21
    :cond_1
    iget-object v0, p0, Lcn/fly/commons/w;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 22
    iget-object v0, p0, Lcn/fly/commons/w;->g:Ljava/util/List;

    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcn/fly/commons/w;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 24
    iget-object v1, p0, Lcn/fly/commons/w;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 25
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcn/fly/commons/w;->b(ILjava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_2
    iget-object v1, p0, Lcn/fly/commons/w;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 27
    :cond_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 28
    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2}, Lcn/fly/commons/w;->b(ILjava/lang/String;)V

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;)V
    .locals 9

    .line 6
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[LGSM] Sd curr"

    invoke-virtual {v0, v2, v1}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 7
    new-instance v3, Lcn/fly/commons/w$a;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcn/fly/commons/w$a;-><init>(Lcn/fly/commons/w$1;)V

    const/4 v8, 0x0

    move v4, p3

    move v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lcn/fly/commons/w$a;->a(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcn/fly/commons/w$a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/fly/commons/w$a;->run()V

    return-void
.end method

.method public a(ILjava/lang/String;ILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[LGSM] Sd curr"

    invoke-virtual {v0, v2, v1}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p4, :cond_0

    .line 9
    new-instance v3, Lcn/fly/commons/w$a;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcn/fly/commons/w$a;-><init>(Lcn/fly/commons/w$1;)V

    const/4 v7, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v4, p3

    move v5, p1

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Lcn/fly/commons/w$a;->a(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcn/fly/commons/w$a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/fly/commons/w$a;->run()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/fly/commons/w;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v0

    const-string v1, "[LGSM] Sd last"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    sget-object v0, Lcn/fly/commons/ac;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcn/fly/commons/w$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/fly/commons/w$c;-><init>(Lcn/fly/commons/w$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
