.class public Lcom/j256/ormlite/misc/WrappedDatabaseConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final logger:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field protected final connection:Lcom/j256/ormlite/support/DatabaseConnection;

.field protected final connectionProxy:Lcom/j256/ormlite/support/DatabaseConnection;

.field protected final wrappedStatements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/j256/ormlite/misc/WrappedStatement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;->wrappedStatements:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x1

    .line 22
    new-array v0, v0, [Ljava/lang/Class;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const-class v2, Lcom/j256/ormlite/support/DatabaseConnection;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    invoke-static {p1, v0, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/j256/ormlite/support/DatabaseConnection;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;->connectionProxy:Lcom/j256/ormlite/support/DatabaseConnection;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;->wrappedStatements:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getDatabaseConnection()Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDatabaseConnectionProxy()Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;->connectionProxy:Lcom/j256/ormlite/support/DatabaseConnection;

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
    sget-object p1, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "{}: running method on connection: {}"

    .line 8
    .line 9
    invoke-virtual {p1, v1, p0, v0}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    .line 13
    .line 14
    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string v0, "compileStatement"

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    instance-of p2, p3, Lcom/j256/ormlite/support/CompiledStatement;

    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    new-instance p2, Lcom/j256/ormlite/misc/WrappedStatement;

    .line 35
    .line 36
    move-object v0, p3

    .line 37
    check-cast v0, Lcom/j256/ormlite/support/CompiledStatement;

    .line 38
    .line 39
    invoke-direct {p2, v0}, Lcom/j256/ormlite/misc/WrappedStatement;-><init>(Lcom/j256/ormlite/support/CompiledStatement;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;->wrappedStatements:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    const-string v0, "{}: connection is wrapping statement: {}"

    .line 48
    .line 49
    invoke-virtual {p1, v0, p0, p3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/j256/ormlite/misc/WrappedStatement;->getStatementProxy()Lcom/j256/ormlite/support/CompiledStatement;

    .line 53
    .line 54
    .line 55
    move-result-object p3
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    return-object p3

    .line 57
    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    throw p1
.end method

.method public isAllStatementsClosed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;->wrappedStatements:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/j256/ormlite/misc/WrappedStatement;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/j256/ormlite/misc/WrappedStatement;->isClosed()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return v0

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    return v0
.end method
