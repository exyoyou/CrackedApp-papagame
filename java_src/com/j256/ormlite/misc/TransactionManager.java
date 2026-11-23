package com.j256.ormlite.misc;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import java.sql.SQLException;
import java.sql.Savepoint;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public class TransactionManager {
    private static final String SAVE_POINT_PREFIX = "ORMLITE";
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) TransactionManager.class);
    private static final AtomicInteger savePointCounter = new AtomicInteger();
    private static final ThreadLocal<TransactionLevel> transactionLevelThreadLocal = new ThreadLocal<TransactionLevel>() { // from class: com.j256.ormlite.misc.TransactionManager.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public TransactionLevel initialValue() {
            return new TransactionLevel();
        }
    };
    private ConnectionSource connectionSource;

    private static class TransactionLevel {
        int counter;

        private TransactionLevel() {
        }

        int decrementAndGet() {
            int i10 = this.counter - 1;
            this.counter = i10;
            return i10;
        }

        int incrementAndGet() {
            int i10 = this.counter + 1;
            this.counter = i10;
            return i10;
        }
    }

    public TransactionManager() {
    }

    private static void commit(DatabaseConnection databaseConnection, Savepoint savepoint) throws SQLException {
        String savepointName = savepoint == null ? null : savepoint.getSavepointName();
        databaseConnection.commit(savepoint);
        if (savepointName == null) {
            logger.trace("committed savePoint transaction");
        } else {
            logger.trace("committed savePoint transaction {}", savepointName);
        }
    }

    private static void release(DatabaseConnection databaseConnection, Savepoint savepoint) throws SQLException {
        String savepointName = savepoint == null ? null : savepoint.getSavepointName();
        databaseConnection.releaseSavePoint(savepoint);
        if (savepointName == null) {
            logger.trace("released savePoint transaction");
        } else {
            logger.trace("released savePoint transaction {}", savepointName);
        }
    }

    private static void rollBack(DatabaseConnection databaseConnection, Savepoint savepoint) throws SQLException {
        String savepointName = savepoint == null ? null : savepoint.getSavepointName();
        databaseConnection.rollback(savepoint);
        if (savepointName == null) {
            logger.trace("rolled back savePoint transaction");
        } else {
            logger.trace("rolled back savePoint transaction {}", savepointName);
        }
    }

    public <T> T callInTransaction(Callable<T> callable) throws SQLException {
        return (T) callInTransaction(this.connectionSource, callable);
    }

    public void initialize() {
        if (this.connectionSource != null) {
            return;
        }
        throw new IllegalStateException("dataSource was not set on " + getClass().getSimpleName());
    }

    public void setConnectionSource(ConnectionSource connectionSource) {
        this.connectionSource = connectionSource;
    }

    public TransactionManager(ConnectionSource connectionSource) {
        this.connectionSource = connectionSource;
        initialize();
    }

    public <T> T callInTransaction(String str, Callable<T> callable) throws SQLException {
        return (T) callInTransaction(str, this.connectionSource, callable);
    }

    public static <T> T callInTransaction(ConnectionSource connectionSource, Callable<T> callable) throws SQLException {
        return (T) callInTransaction((String) null, connectionSource, callable);
    }

    public static <T> T callInTransaction(String str, ConnectionSource connectionSource, Callable<T> callable) throws Throwable {
        boolean zSaveSpecialConnection;
        DatabaseConnection readWriteConnection = connectionSource.getReadWriteConnection(str);
        try {
            zSaveSpecialConnection = connectionSource.saveSpecialConnection(readWriteConnection);
            try {
                T t10 = (T) callInTransaction(readWriteConnection, zSaveSpecialConnection, connectionSource.getDatabaseType(), callable);
                if (zSaveSpecialConnection) {
                    connectionSource.clearSpecialConnection(readWriteConnection);
                }
                connectionSource.releaseConnection(readWriteConnection);
                return t10;
            } catch (Throwable th) {
                th = th;
                if (zSaveSpecialConnection) {
                    connectionSource.clearSpecialConnection(readWriteConnection);
                }
                connectionSource.releaseConnection(readWriteConnection);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            zSaveSpecialConnection = false;
        }
    }

    public static <T> T callInTransaction(DatabaseConnection databaseConnection, DatabaseType databaseType, Callable<T> callable) throws SQLException {
        return (T) callInTransaction(databaseConnection, false, databaseType, callable);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0052 A[Catch: all -> 0x00be, TryCatch #5 {all -> 0x00be, blocks: (B:4:0x000f, B:8:0x0019, B:10:0x001f, B:12:0x0025, B:17:0x0035, B:19:0x0052, B:20:0x005a), top: B:62:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:20:0x005a A[Catch: all -> 0x00be, TRY_LEAVE, TryCatch #5 {all -> 0x00be, blocks: (B:4:0x000f, B:8:0x0019, B:10:0x001f, B:12:0x0025, B:17:0x0035, B:19:0x0052, B:20:0x005a), top: B:62:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:28:0x007d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x007f A[Catch: Exception -> 0x0078, all -> 0x0091, TryCatch #1 {all -> 0x0091, blocks: (B:22:0x0067, B:24:0x0074, B:29:0x007f, B:30:0x0083, B:38:0x0097, B:40:0x009d, B:42:0x00a4, B:45:0x00af, B:47:0x00b3, B:48:0x00b5, B:49:0x00b6, B:50:0x00bd, B:44:0x00a8), top: B:57:0x0067, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0083 A[Catch: Exception -> 0x0078, all -> 0x0091, TRY_LEAVE, TryCatch #1 {all -> 0x0091, blocks: (B:22:0x0067, B:24:0x0074, B:29:0x007f, B:30:0x0083, B:38:0x0097, B:40:0x009d, B:42:0x00a4, B:45:0x00af, B:47:0x00b3, B:48:0x00b5, B:49:0x00b6, B:50:0x00bd, B:44:0x00a8), top: B:57:0x0067, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0088  */
    /* JADX WARN: Code duplicated, block: B:58:0x0074 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static <T> T callInTransaction(DatabaseConnection databaseConnection, boolean z10, DatabaseType databaseType, Callable<T> callable) throws Throwable {
        Savepoint savePoint;
        boolean z11;
        int iDecrementAndGet;
        ThreadLocal<TransactionLevel> threadLocal = transactionLevelThreadLocal;
        TransactionLevel transactionLevel = threadLocal.get();
        boolean z12 = false;
        if (!z10) {
            try {
                if (databaseType.isNestedSavePointsSupported()) {
                    if (databaseConnection.isAutoCommitSupported() && databaseConnection.isAutoCommit()) {
                        databaseConnection.setAutoCommit(false);
                        try {
                            logger.trace("had to set auto-commit to false");
                            z12 = true;
                        } catch (Throwable th) {
                            th = th;
                            z12 = true;
                        }
                    }
                    savePoint = databaseConnection.setSavePoint(SAVE_POINT_PREFIX + savePointCounter.incrementAndGet());
                    if (savePoint == null) {
                        logger.trace("started savePoint transaction");
                    } else {
                        logger.trace("started savePoint transaction {}", savePoint.getSavepointName());
                    }
                    z11 = z12;
                    z12 = true;
                } else {
                    savePoint = null;
                    z11 = false;
                }
                try {
                    try {
                        transactionLevel.incrementAndGet();
                        T tCall = callable.call();
                        iDecrementAndGet = transactionLevel.decrementAndGet();
                        if (iDecrementAndGet <= 0) {
                            try {
                                threadLocal.remove();
                            } catch (Exception e10) {
                                e = e10;
                                transactionLevel = null;
                                if (transactionLevel != null && transactionLevel.decrementAndGet() <= 0) {
                                    transactionLevelThreadLocal.remove();
                                }
                                if (z12) {
                                    try {
                                        rollBack(databaseConnection, savePoint);
                                    } catch (SQLException unused) {
                                        logger.error(e, "after commit exception, rolling back to save-point also threw exception");
                                    }
                                }
                                if (e instanceof SQLException) {
                                    throw ((SQLException) e);
                                }
                                throw new SQLException("Transaction callable threw non-SQL exception", e);
                            }
                        }
                        if (z12) {
                            if (iDecrementAndGet <= 0) {
                                commit(databaseConnection, savePoint);
                            } else {
                                release(databaseConnection, savePoint);
                            }
                        }
                        if (z11) {
                            databaseConnection.setAutoCommit(true);
                            logger.trace("restored auto-commit to true");
                        }
                        return tCall;
                    } catch (Throwable th2) {
                        th = th2;
                        z12 = z11;
                    }
                } catch (Exception e11) {
                    e = e11;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            if (databaseConnection.isAutoCommitSupported()) {
                databaseConnection.setAutoCommit(false);
                logger.trace("had to set auto-commit to false");
                z12 = true;
            }
            savePoint = databaseConnection.setSavePoint(SAVE_POINT_PREFIX + savePointCounter.incrementAndGet());
            if (savePoint == null) {
                logger.trace("started savePoint transaction");
            } else {
                logger.trace("started savePoint transaction {}", savePoint.getSavepointName());
            }
            z11 = z12;
            z12 = true;
            transactionLevel.incrementAndGet();
            T tCall2 = callable.call();
            iDecrementAndGet = transactionLevel.decrementAndGet();
            if (iDecrementAndGet <= 0) {
                threadLocal.remove();
            }
            if (z12) {
                if (iDecrementAndGet <= 0) {
                    commit(databaseConnection, savePoint);
                } else {
                    release(databaseConnection, savePoint);
                }
            }
            if (z11) {
                databaseConnection.setAutoCommit(true);
                logger.trace("restored auto-commit to true");
            }
            return tCall2;
        }
        if (z12) {
            databaseConnection.setAutoCommit(true);
            logger.trace("restored auto-commit to true");
        }
        throw th;
    }
}
