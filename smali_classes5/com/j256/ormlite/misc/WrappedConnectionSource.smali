.class public Lcom/j256/ormlite/misc/WrappedConnectionSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/j256/ormlite/support/ConnectionSource;


# static fields
.field protected static final logger:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field private final connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final cs:Lcom/j256/ormlite/support/ConnectionSource;

.field protected nextForceOkay:Z

.field private final wrappedConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/misc/WrappedDatabaseConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/j256/ormlite/misc/WrappedConnectionSource;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->wrappedConnections:Ljava/util/Map;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->cs:Lcom/j256/ormlite/support/ConnectionSource;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->cs:Lcom/j256/ormlite/support/ConnectionSource;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->cs:Lcom/j256/ormlite/support/ConnectionSource;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/j256/ormlite/misc/WrappedConnectionSource;->isEverythingClosed()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->wrappedConnections:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;->close()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->wrappedConnections:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    new-instance v0, Ljava/sql/SQLException;

    .line 45
    .line 46
    const-string v1, "Wrapped connections were not fully closed when connection-source closed"

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public closeQuietly()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public forceOkay()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->nextForceOkay:Z

    .line 3
    .line 4
    return-void
.end method

.method public getConnectionCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->cs:Lcom/j256/ormlite/support/ConnectionSource;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->cs:Lcom/j256/ormlite/support/ConnectionSource;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;-><init>(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;->getDatabaseConnectionProxy()Lcom/j256/ormlite/support/DatabaseConnection;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v1, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->wrappedConnections:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/j256/ormlite/misc/WrappedConnectionSource;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 27
    .line 28
    const-string v2, "{}: got wrapped read-only DatabaseConnection \'{}\', count = {}"

    .line 29
    .line 30
    iget-object v3, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    .line 32
    invoke-virtual {v1, v2, p0, v0, v3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method public getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->cs:Lcom/j256/ormlite/support/ConnectionSource;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;-><init>(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;->getDatabaseConnectionProxy()Lcom/j256/ormlite/support/DatabaseConnection;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v1, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->wrappedConnections:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/j256/ormlite/misc/WrappedConnectionSource;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 27
    .line 28
    const-string v2, "{}: got wrapped read-write DatabaseConnection \'{}\', count = {}"

    .line 29
    .line 30
    iget-object v3, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    .line 32
    invoke-virtual {v1, v2, p0, v0, v3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method public getSpecialConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->cs:Lcom/j256/ormlite/support/ConnectionSource;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/ConnectionSource;->getSpecialConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public isEverythingClosed()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->nextForceOkay:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v2, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->nextForceOkay:Z

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    sget-object v0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 19
    .line 20
    const-string v1, "{}: ConnectionSource has {} open connections"

    .line 21
    .line 22
    iget-object v3, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    .line 24
    invoke-virtual {v0, v1, p0, v3}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->wrappedConnections:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;

    .line 48
    .line 49
    sget-object v3, Lcom/j256/ormlite/misc/WrappedConnectionSource;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 50
    .line 51
    const-string v4, "{}: still has wrapped DatabaseConnection \'{}\'"

    .line 52
    .line 53
    invoke-virtual {v3, v4, p0, v1}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return v2

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->wrappedConnections:Ljava/util/Map;

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;->isAllStatementsClosed()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_3

    .line 85
    .line 86
    return v2

    .line 87
    :cond_4
    return v1
.end method

.method public isOpen(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->cs:Lcom/j256/ormlite/support/ConnectionSource;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/ConnectionSource;->isOpen(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isSingleConnection(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->cs:Lcom/j256/ormlite/support/ConnectionSource;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/ConnectionSource;->isSingleConnection(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->wrappedConnections:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->nextForceOkay:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "Tried to release unknown connection: "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    invoke-virtual {v0}, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;->isAllStatementsClosed()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->cs:Lcom/j256/ormlite/support/ConnectionSource;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;->getDatabaseConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/j256/ormlite/misc/WrappedDatabaseConnection;->close()V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 60
    .line 61
    .line 62
    sget-object p1, Lcom/j256/ormlite/misc/WrappedConnectionSource;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 63
    .line 64
    const-string v1, "{}: released wrapped DatabaseConnection \'{}\', count = {}"

    .line 65
    .line 66
    iget-object v2, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    .line 68
    invoke-virtual {p1, v1, p0, v0, v2}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    new-instance p1, Ljava/sql/SQLException;

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v2, "Wrapped connection had open statements when released: "

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1
.end method

.method public saveSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->cs:Lcom/j256/ormlite/support/ConnectionSource;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/ConnectionSource;->saveSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setDatabaseType(Lcom/j256/ormlite/db/DatabaseType;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->cs:Lcom/j256/ormlite/support/ConnectionSource;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "setDatabaseType"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    .line 12
    const-class v4, Lcom/j256/ormlite/db/DatabaseType;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    aput-object v4, v3, v5

    .line 16
    .line 17
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/j256/ormlite/misc/WrappedConnectionSource;->cs:Lcom/j256/ormlite/support/ConnectionSource;

    .line 22
    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    aput-object p1, v2, v5

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    move-exception p1

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    .line 33
    .line 34
    const-string v1, "Could not set database type"

    .line 35
    .line 36
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method
