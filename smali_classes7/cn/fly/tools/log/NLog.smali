.class public Lcn/fly/tools/log/NLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tools/proguard/ClassKeeper;
.implements Lcn/fly/tools/proguard/PublicMemberKeeper;


# static fields
.field public static final LEVEL_CRASH:I = 0x1

.field public static final LEVEL_NATIVE_CRASH:I = 0x4

.field public static final LEVEL_NORMAL:I

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/fly/tools/log/NLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Z

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcn/fly/tools/log/NLog;->b:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/fly/tools/log/NLog;->a:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/fly/tools/log/NLog;->c:Ljava/lang/String;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcn/fly/tools/log/NLog;->d:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcn/fly/tools/log/NLog;->a:Z

    .line 7
    iput-object p1, p0, Lcn/fly/tools/log/NLog;->c:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcn/fly/tools/log/NLog;->d:I

    return-void
.end method

.method private a(IILjava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    :cond_0
    const-string v2, "004ehBflfl"

    .line 2
    invoke-static {v2}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/fly/commons/c;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGSM] Ck cerr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz v1, :cond_2

    .line 4
    invoke-static {}, Lcn/fly/commons/w;->a()Lcn/fly/commons/w;

    move-result-object v1

    iget-object v2, p0, Lcn/fly/tools/log/NLog;->c:Ljava/lang/String;

    iget v3, p0, Lcn/fly/tools/log/NLog;->d:I

    invoke-virtual {v1, p2, v2, v3, p3}, Lcn/fly/commons/w;->a(ILjava/lang/String;ILjava/lang/String;)V

    .line 5
    :cond_2
    invoke-static {}, Lcn/fly/commons/w;->a()Lcn/fly/commons/w;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcn/fly/commons/w;->a(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p1}, Lcn/fly/tools/log/NLog;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    move-object v3, p1

    :goto_0
    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 11
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    if-eq v3, p1, :cond_2

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n......"

    .line 15
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nCaused by:\n"

    .line 16
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {v3}, Lcn/fly/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 20
    :cond_2
    invoke-static {p1}, Lcn/fly/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 21
    :catchall_0
    invoke-static {p1}, Lcn/fly/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p0, ""

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x3e8

    .line 19
    .line 20
    if-gt v0, v1, :cond_1

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p0, "\n[Message over limit size:1000, cut!]"

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;ILjava/lang/String;)Lcn/fly/tools/log/NLog;
    .locals 1

    .line 1
    sget-object p2, Lcn/fly/tools/log/NLog;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter p2

    .line 4
    :try_start_0
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcn/fly/tools/log/NLog;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcn/fly/tools/log/NLog;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcn/fly/tools/log/NLog;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    monitor-exit p2

    .line 21
    return-object v0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return-object p0

    .line 6
    :catchall_0
    move-exception p0

    .line 7
    instance-of v0, p0, Ljava/lang/OutOfMemoryError;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p0, "023Sgl6hkFgn2kfe6gjheflAfehUgn1kAflfk\'g<glkhfmfmfh"

    .line 12
    .line 13
    invoke-static {p0}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method


# virtual methods
.method public final crash(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcn/fly/tools/log/NLog;->a(IILjava/lang/String;)I

    return-void
.end method

.method public final crash(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1}, Lcn/fly/tools/log/NLog;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0, p1}, Lcn/fly/tools/log/NLog;->a(IILjava/lang/String;)I

    return-void
.end method

.method public final varargs d(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcn/fly/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0, p1}, Lcn/fly/tools/log/NLog;->log(ILjava/lang/Throwable;)I

    move-result p1

    return p1
.end method

.method public final varargs d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcn/fly/tools/log/NLog;->log(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final dg()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/fly/tools/log/NLog;->a:Z

    .line 3
    .line 4
    return-void
.end method

.method public final varargs e(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x6

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcn/fly/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    .line 4
    invoke-virtual {p0, v1, p1, v0}, Lcn/fly/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0, p1}, Lcn/fly/tools/log/NLog;->log(ILjava/lang/Throwable;)I

    move-result p1

    return p1
.end method

.method public final varargs e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcn/fly/tools/log/NLog;->log(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final error(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcn/fly/tools/log/NLog;->e(Ljava/lang/String;)I

    return-void
.end method

.method public final error(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/fly/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/tools/log/NLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public final varargs i(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcn/fly/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final i(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v1, p1, v0}, Lcn/fly/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final i(Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, p1}, Lcn/fly/tools/log/NLog;->log(ILjava/lang/Throwable;)I

    move-result p1

    return p1
.end method

.method public final varargs i(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcn/fly/tools/log/NLog;->log(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final varargs log(ILjava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    array-length v0, p3

    if-lez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 p3, 0x0

    .line 4
    invoke-direct {p0, p1, p3, p2}, Lcn/fly/tools/log/NLog;->a(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final log(ILjava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p2}, Lcn/fly/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcn/fly/tools/log/NLog;->a(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final varargs log(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p4

    if-lez v1, :cond_0

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {p2}, Lcn/fly/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 8
    invoke-direct {p0, p1, p3, p2}, Lcn/fly/tools/log/NLog;->a(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final varargs v(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcn/fly/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final v(Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, p1}, Lcn/fly/tools/log/NLog;->log(ILjava/lang/Throwable;)I

    move-result p1

    return p1
.end method

.method public final varargs v(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcn/fly/tools/log/NLog;->log(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final varargs w(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcn/fly/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final w(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x5

    .line 4
    invoke-virtual {p0, v1, p1, v0}, Lcn/fly/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final w(Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0, p1}, Lcn/fly/tools/log/NLog;->log(ILjava/lang/Throwable;)I

    move-result p1

    return p1
.end method

.method public final varargs w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x5

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcn/fly/tools/log/NLog;->log(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
