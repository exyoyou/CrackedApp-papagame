.class public Lcom/j256/ormlite/misc/WrappedStatement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final logger:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field private closeCalled:Z

.field private final statement:Lcom/j256/ormlite/support/CompiledStatement;

.field private final statementProxy:Lcom/j256/ormlite/support/CompiledStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/j256/ormlite/misc/WrappedStatement;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/j256/ormlite/misc/WrappedStatement;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/support/CompiledStatement;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/j256/ormlite/misc/WrappedStatement;->statement:Lcom/j256/ormlite/support/CompiledStatement;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [Ljava/lang/Class;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const-class v2, Lcom/j256/ormlite/support/CompiledStatement;

    .line 19
    .line 20
    aput-object v2, v0, v1

    .line 21
    .line 22
    invoke-static {p1, v0, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/j256/ormlite/support/CompiledStatement;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/j256/ormlite/misc/WrappedStatement;->statementProxy:Lcom/j256/ormlite/support/CompiledStatement;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public getStatementProxy()Lcom/j256/ormlite/support/CompiledStatement;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedStatement;->statementProxy:Lcom/j256/ormlite/support/CompiledStatement;

    .line 2
    .line 3
    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/j256/ormlite/misc/WrappedStatement;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "{}: running method on statement: {}"

    .line 8
    .line 9
    invoke-virtual {p1, v1, p0, v0}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p1, p0, Lcom/j256/ormlite/misc/WrappedStatement;->statement:Lcom/j256/ormlite/support/CompiledStatement;

    .line 13
    .line 14
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string p3, "close"

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Lcom/j256/ormlite/misc/WrappedStatement;->closeCalled:Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    :cond_0
    return-object p1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    throw p1
.end method

.method public isClosed()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/j256/ormlite/misc/WrappedStatement;->closeCalled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    sget-object v0, Lcom/j256/ormlite/misc/WrappedStatement;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 8
    .line 9
    const-string v1, "{}: CompiledStatement was not closed: {}"

    .line 10
    .line 11
    iget-object v2, p0, Lcom/j256/ormlite/misc/WrappedStatement;->statement:Lcom/j256/ormlite/support/CompiledStatement;

    .line 12
    .line 13
    invoke-virtual {v0, v1, p0, v2}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    return v0
.end method
