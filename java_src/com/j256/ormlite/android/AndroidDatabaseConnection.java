package com.j256.ormlite.android;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.misc.IOUtils;
import com.j256.ormlite.stmt.GenericRowMapper;
import com.j256.ormlite.stmt.StatementBuilder;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.GeneratedKeyHolder;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Savepoint;

/* JADX INFO: loaded from: classes5.dex */
public class AndroidDatabaseConnection implements DatabaseConnection {
    private final boolean cancelQueriesEnabled;

    /* JADX INFO: renamed from: db, reason: collision with root package name */
    private final SQLiteDatabase f34407db;
    private final boolean readWrite;
    private static Logger logger = LoggerFactory.getLogger((Class<?>) AndroidDatabaseConnection.class);
    private static final String[] NO_STRING_ARGS = new String[0];

    /* JADX INFO: renamed from: com.j256.ormlite.android.AndroidDatabaseConnection$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$j256$ormlite$field$SqlType;

        static {
            int[] iArr = new int[SqlType.values().length];
            $SwitchMap$com$j256$ormlite$field$SqlType = iArr;
            try {
                iArr[SqlType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.LONG_STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.CHAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BOOLEAN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BYTE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.SHORT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.INTEGER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.LONG.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.FLOAT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.DOUBLE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BYTE_ARRAY.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.SERIALIZABLE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.DATE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BLOB.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BIG_DECIMAL.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.UNKNOWN.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    private static class OurSavePoint implements Savepoint {
        private String name;

        public OurSavePoint(String str) {
            this.name = str;
        }

        @Override // java.sql.Savepoint
        public int getSavepointId() {
            return 0;
        }

        @Override // java.sql.Savepoint
        public String getSavepointName() {
            return this.name;
        }
    }

    public AndroidDatabaseConnection(SQLiteDatabase sQLiteDatabase, boolean z10) {
        this(sQLiteDatabase, z10, false);
    }

    private void bindArgs(SQLiteStatement sQLiteStatement, Object[] objArr, FieldType[] fieldTypeArr) throws SQLException {
        if (objArr == null) {
            return;
        }
        for (int i10 = 0; i10 < objArr.length; i10++) {
            Object obj = objArr[i10];
            if (obj == null) {
                sQLiteStatement.bindNull(i10 + 1);
            } else {
                SqlType sqlType = fieldTypeArr[i10].getSqlType();
                switch (AnonymousClass1.$SwitchMap$com$j256$ormlite$field$SqlType[sqlType.ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                        sQLiteStatement.bindString(i10 + 1, obj.toString());
                        break;
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        sQLiteStatement.bindLong(i10 + 1, ((Number) obj).longValue());
                        break;
                    case 9:
                    case 10:
                        sQLiteStatement.bindDouble(i10 + 1, ((Number) obj).doubleValue());
                        break;
                    case 11:
                    case 12:
                        sQLiteStatement.bindBlob(i10 + 1, (byte[]) obj);
                        break;
                    case 13:
                    case 14:
                    case 15:
                        throw new SQLException("Invalid Android type: " + sqlType);
                    default:
                        throw new SQLException("Unknown sql argument type: " + sqlType);
                }
            }
        }
    }

    private int execute(String str, Object[] objArr, FieldType[] fieldTypeArr, String str2) throws SQLException {
        SQLiteStatement sQLiteStatementCompileStatement = null;
        try {
            try {
                sQLiteStatementCompileStatement = this.f34407db.compileStatement(str);
                bindArgs(sQLiteStatementCompileStatement, objArr, fieldTypeArr);
                int iExecuteUpdateDelete = sQLiteStatementCompileStatement.executeUpdateDelete();
                closeQuietly(sQLiteStatementCompileStatement);
                if (iExecuteUpdateDelete < 0) {
                    iExecuteUpdateDelete = selectNumChanges(str2);
                }
                logger.trace("{} statement is compiled and executed, changed {}: {}", str2, Integer.valueOf(iExecuteUpdateDelete), str);
                return iExecuteUpdateDelete;
            } catch (android.database.SQLException e10) {
                throw new SQLException("updating database failed: " + str, e10);
            }
        } catch (Throwable th) {
            closeQuietly(sQLiteStatementCompileStatement);
            throw th;
        }
    }

    private int selectNumChanges(String str) {
        SQLiteStatement sQLiteStatementCompileStatement = null;
        try {
            sQLiteStatementCompileStatement = this.f34407db.compileStatement("SELECT CHANGES()");
            return (int) sQLiteStatementCompileStatement.simpleQueryForLong();
        } catch (android.database.SQLException e10) {
            logger.warn(e10, "{} unable to run statement 'SELECT CHANGES()' to get the changed lines", str);
            return 1;
        } finally {
            closeQuietly(sQLiteStatementCompileStatement);
        }
    }

    private String[] toStrings(Object[] objArr) {
        if (objArr == null || objArr.length == 0) {
            return null;
        }
        String[] strArr = new String[objArr.length];
        for (int i10 = 0; i10 < objArr.length; i10++) {
            Object obj = objArr[i10];
            if (obj == null) {
                strArr[i10] = null;
            } else {
                strArr[i10] = obj.toString();
            }
        }
        return strArr;
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        try {
            this.f34407db.close();
            logger.trace("{}: db {} closed", this, this.f34407db);
        } catch (android.database.SQLException e10) {
            throw new SQLException("problems closing the database connection", e10);
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public void closeQuietly() {
        IOUtils.closeQuietly(this);
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public void commit(Savepoint savepoint) throws SQLException {
        try {
            this.f34407db.setTransactionSuccessful();
            this.f34407db.endTransaction();
            if (savepoint == null) {
                logger.trace("{}: transaction is successfully ended", this);
            } else {
                logger.trace("{}: transaction {} is successfully ended", this, savepoint.getSavepointName());
            }
        } catch (android.database.SQLException e10) {
            if (savepoint == null) {
                throw new SQLException("problems committing transaction", e10);
            }
            throw new SQLException("problems committing transaction " + savepoint.getSavepointName(), e10);
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public CompiledStatement compileStatement(String str, StatementBuilder.StatementType statementType, FieldType[] fieldTypeArr, int i10, boolean z10) {
        AndroidCompiledStatement androidCompiledStatement = new AndroidCompiledStatement(str, this.f34407db, statementType, this.cancelQueriesEnabled, z10);
        logger.trace("{}: compiled statement got {}: {}", this, androidCompiledStatement, str);
        return androidCompiledStatement;
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public int delete(String str, Object[] objArr, FieldType[] fieldTypeArr) throws SQLException {
        return execute(str, objArr, fieldTypeArr, "deleted");
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public int executeStatement(String str, int i10) throws SQLException {
        return AndroidCompiledStatement.execSql(this.f34407db, str, str, NO_STRING_ARGS);
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public Connection getUnderlyingConnection() {
        return null;
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public int insert(String str, Object[] objArr, FieldType[] fieldTypeArr, GeneratedKeyHolder generatedKeyHolder) throws SQLException {
        SQLiteStatement sQLiteStatementCompileStatement = null;
        try {
            try {
                sQLiteStatementCompileStatement = this.f34407db.compileStatement(str);
                bindArgs(sQLiteStatementCompileStatement, objArr, fieldTypeArr);
                long jExecuteInsert = sQLiteStatementCompileStatement.executeInsert();
                if (generatedKeyHolder != null) {
                    generatedKeyHolder.addKey(Long.valueOf(jExecuteInsert));
                }
                logger.trace("{}: insert statement is compiled and executed, changed {}: {}", (Object) this, (Object) 1, (Object) str);
                closeQuietly(sQLiteStatementCompileStatement);
                return 1;
            } catch (android.database.SQLException e10) {
                throw new SQLException("inserting to database failed: " + str, e10);
            }
        } catch (Throwable th) {
            closeQuietly(sQLiteStatementCompileStatement);
            throw th;
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public boolean isAutoCommit() throws SQLException {
        try {
            boolean zInTransaction = this.f34407db.inTransaction();
            logger.trace("{}: in transaction is {}", this, Boolean.valueOf(zInTransaction));
            return !zInTransaction;
        } catch (android.database.SQLException e10) {
            throw new SQLException("problems getting auto-commit from database", e10);
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public boolean isAutoCommitSupported() {
        return true;
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public boolean isClosed() throws SQLException {
        try {
            boolean zIsOpen = this.f34407db.isOpen();
            logger.trace("{}: db {} isOpen returned {}", this, this.f34407db, Boolean.valueOf(zIsOpen));
            return !zIsOpen;
        } catch (android.database.SQLException e10) {
            throw new SQLException("problems detecting if the database is closed", e10);
        }
    }

    public boolean isReadWrite() {
        return this.readWrite;
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public boolean isTableExists(String str) {
        Cursor cursorRawQuery = this.f34407db.rawQuery("SELECT DISTINCT tbl_name FROM sqlite_master WHERE tbl_name = ?", new String[]{str});
        try {
            boolean z10 = cursorRawQuery.getCount() > 0;
            logger.trace("{}: isTableExists '{}' returned {}", this, str, Boolean.valueOf(z10));
            return z10;
        } finally {
            cursorRawQuery.close();
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public long queryForLong(String str) throws SQLException {
        SQLiteStatement sQLiteStatementCompileStatement = null;
        try {
            try {
                sQLiteStatementCompileStatement = this.f34407db.compileStatement(str);
                long jSimpleQueryForLong = sQLiteStatementCompileStatement.simpleQueryForLong();
                logger.trace("{}: query for long simple query returned {}: {}", this, Long.valueOf(jSimpleQueryForLong), str);
                closeQuietly(sQLiteStatementCompileStatement);
                return jSimpleQueryForLong;
            } catch (android.database.SQLException e10) {
                throw new SQLException("queryForLong from database failed: " + str, e10);
            }
        } catch (Throwable th) {
            closeQuietly(sQLiteStatementCompileStatement);
            throw th;
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public <T> Object queryForOne(String str, Object[] objArr, FieldType[] fieldTypeArr, GenericRowMapper<T> genericRowMapper, ObjectCache objectCache) throws Throwable {
        Cursor cursorRawQuery;
        AndroidDatabaseResults androidDatabaseResults;
        android.database.SQLException e10;
        T tMapRow = (T) null;
        try {
            cursorRawQuery = this.f34407db.rawQuery(str, toStrings(objArr));
            try {
                androidDatabaseResults = new AndroidDatabaseResults(cursorRawQuery, objectCache, true);
                try {
                    try {
                        logger.trace("{}: queried for one result: {}", this, str);
                        if (androidDatabaseResults.first()) {
                            tMapRow = genericRowMapper.mapRow(androidDatabaseResults);
                            if (androidDatabaseResults.next()) {
                                Object obj = DatabaseConnection.MORE_THAN_ONE;
                                IOUtils.closeQuietly(androidDatabaseResults);
                                closeQuietly(cursorRawQuery);
                                return obj;
                            }
                        }
                        IOUtils.closeQuietly(androidDatabaseResults);
                        closeQuietly(cursorRawQuery);
                        return tMapRow;
                    } catch (android.database.SQLException e11) {
                        e10 = e11;
                        throw new SQLException("queryForOne from database failed: " + str, e10);
                    }
                } catch (Throwable th) {
                    th = th;
                    tMapRow = (T) androidDatabaseResults;
                    IOUtils.closeQuietly(tMapRow);
                    closeQuietly(cursorRawQuery);
                    throw th;
                }
            } catch (android.database.SQLException e12) {
                androidDatabaseResults = null;
                e10 = e12;
            } catch (Throwable th2) {
                th = th2;
                IOUtils.closeQuietly(tMapRow);
                closeQuietly(cursorRawQuery);
                throw th;
            }
        } catch (android.database.SQLException e13) {
            androidDatabaseResults = null;
            e10 = e13;
            cursorRawQuery = null;
        } catch (Throwable th3) {
            th = th3;
            cursorRawQuery = null;
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public void releaseSavePoint(Savepoint savepoint) {
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public void rollback(Savepoint savepoint) throws SQLException {
        try {
            this.f34407db.endTransaction();
            if (savepoint == null) {
                logger.trace("{}: transaction is ended, unsuccessfully", this);
            } else {
                logger.trace("{}: transaction {} is ended, unsuccessfully", this, savepoint.getSavepointName());
            }
        } catch (android.database.SQLException e10) {
            if (savepoint == null) {
                throw new SQLException("problems rolling back transaction", e10);
            }
            throw new SQLException("problems rolling back transaction " + savepoint.getSavepointName(), e10);
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public void setAutoCommit(boolean z10) {
        if (!z10) {
            if (this.f34407db.inTransaction()) {
                return;
            }
            this.f34407db.beginTransaction();
        } else if (this.f34407db.inTransaction()) {
            this.f34407db.setTransactionSuccessful();
            this.f34407db.endTransaction();
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public Savepoint setSavePoint(String str) throws SQLException {
        try {
            this.f34407db.beginTransaction();
            logger.trace("{}: save-point set with name {}", this, str);
            return new OurSavePoint(str);
        } catch (android.database.SQLException e10) {
            throw new SQLException("problems beginning transaction " + str, e10);
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(super.hashCode());
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public int update(String str, Object[] objArr, FieldType[] fieldTypeArr) throws SQLException {
        return execute(str, objArr, fieldTypeArr, "updated");
    }

    public AndroidDatabaseConnection(SQLiteDatabase sQLiteDatabase, boolean z10, boolean z11) {
        this.f34407db = sQLiteDatabase;
        this.readWrite = z10;
        this.cancelQueriesEnabled = z11;
        logger.trace("{}: db {} opened, read-write = {}", this, sQLiteDatabase, Boolean.valueOf(z10));
    }

    private void closeQuietly(Cursor cursor) {
        if (cursor != null) {
            cursor.close();
        }
    }

    private void closeQuietly(SQLiteStatement sQLiteStatement) {
        if (sQLiteStatement != null) {
            sQLiteStatement.close();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.j256.ormlite.android.AndroidDatabaseConnection, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r9v4 */
    @Override // com.j256.ormlite.support.DatabaseConnection
    public long queryForLong(String str, Object[] objArr, FieldType[] fieldTypeArr) throws Throwable {
        android.database.SQLException e10;
        ?? r10 = 0;
        try {
            try {
                objArr = this.f34407db.rawQuery(str, toStrings(objArr));
                try {
                    AndroidDatabaseResults androidDatabaseResults = new AndroidDatabaseResults(objArr, null, false);
                    try {
                        long j10 = androidDatabaseResults.first() ? androidDatabaseResults.getLong(0) : 0L;
                        logger.trace("{}: query for long raw query returned {}: {}", (Object) this, Long.valueOf(j10), str);
                        closeQuietly(objArr);
                        IOUtils.closeQuietly(androidDatabaseResults);
                        return j10;
                    } catch (android.database.SQLException e11) {
                        e10 = e11;
                        throw new SQLException("queryForLong from database failed: " + str, e10);
                    }
                } catch (android.database.SQLException e12) {
                    e10 = e12;
                } catch (Throwable th) {
                    th = th;
                    r10 = objArr;
                    closeQuietly(r10);
                    IOUtils.closeQuietly((AutoCloseable) 0);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (android.database.SQLException e13) {
            e10 = e13;
        } catch (Throwable th3) {
            th = th3;
            closeQuietly(r10);
            IOUtils.closeQuietly((AutoCloseable) 0);
            throw th;
        }
    }
}
