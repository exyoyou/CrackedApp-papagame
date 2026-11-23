package com.j256.ormlite.table;

import com.j256.ormlite.dao.BaseDaoImpl;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.misc.IOUtils;
import com.j256.ormlite.stmt.StatementBuilder;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.DatabaseResults;
import external.org.apache.commons.lang3.d;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class TableUtils {
    private static Logger logger = LoggerFactory.getLogger((Class<?>) TableUtils.class);
    private static final FieldType[] noFieldTypes = new FieldType[0];

    private TableUtils() {
    }

    private static <T, ID> void addCreateIndexStatements(DatabaseType databaseType, TableInfo<T, ID> tableInfo, List<String> list, boolean z10, boolean z11, boolean z12) {
        HashMap map = new HashMap();
        for (FieldType fieldType : tableInfo.getFieldTypes()) {
            String uniqueIndexName = z11 ? fieldType.getUniqueIndexName() : fieldType.getIndexName();
            if (uniqueIndexName != null) {
                List arrayList = (List) map.get(uniqueIndexName);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    map.put(uniqueIndexName, arrayList);
                }
                arrayList.add(fieldType.getColumnName());
            }
        }
        StringBuilder sb2 = new StringBuilder(128);
        for (Map.Entry entry : map.entrySet()) {
            if (z12) {
                logger.info("creating index '{}' for table '{}", entry.getKey(), tableInfo.getTableName());
            }
            sb2.append("CREATE ");
            if (z11) {
                sb2.append("UNIQUE ");
            }
            sb2.append("INDEX ");
            if (z10 && databaseType.isCreateIndexIfNotExistsSupported()) {
                sb2.append("IF NOT EXISTS ");
            }
            databaseType.appendEscapedEntityName(sb2, (String) entry.getKey());
            sb2.append(" ON ");
            databaseType.appendEscapedEntityName(sb2, tableInfo.getTableName());
            sb2.append(" ( ");
            boolean z13 = true;
            for (String str : (List) entry.getValue()) {
                if (z13) {
                    z13 = false;
                } else {
                    sb2.append(", ");
                }
                databaseType.appendEscapedEntityName(sb2, str);
            }
            sb2.append(" )");
            list.add(sb2.toString());
            sb2.setLength(0);
        }
    }

    private static <T, ID> List<String> addCreateTableStatements(DatabaseType databaseType, TableInfo<T, ID> tableInfo, boolean z10, boolean z11) throws SQLException {
        ArrayList arrayList = new ArrayList();
        addCreateTableStatements(databaseType, tableInfo, arrayList, new ArrayList(), z10, z11);
        return arrayList;
    }

    private static <T, ID> void addDropIndexStatements(DatabaseType databaseType, TableInfo<T, ID> tableInfo, List<String> list, boolean z10) {
        HashSet<String> hashSet = new HashSet();
        for (FieldType fieldType : tableInfo.getFieldTypes()) {
            String indexName = fieldType.getIndexName();
            if (indexName != null) {
                hashSet.add(indexName);
            }
            String uniqueIndexName = fieldType.getUniqueIndexName();
            if (uniqueIndexName != null) {
                hashSet.add(uniqueIndexName);
            }
        }
        StringBuilder sb2 = new StringBuilder(48);
        for (String str : hashSet) {
            logger.info("dropping index '{}' for table '{}", str, tableInfo.getTableName());
            sb2.append("DROP INDEX ");
            databaseType.appendEscapedEntityName(sb2, str);
            list.add(sb2.toString());
            sb2.setLength(0);
        }
    }

    private static <T, ID> void addDropTableStatements(DatabaseType databaseType, TableInfo<T, ID> tableInfo, List<String> list, boolean z10) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (FieldType fieldType : tableInfo.getFieldTypes()) {
            databaseType.dropColumnArg(fieldType, arrayList, arrayList2);
        }
        StringBuilder sb2 = new StringBuilder(64);
        if (z10) {
            logger.info("dropping table '{}'", tableInfo.getTableName());
        }
        sb2.append("DROP TABLE ");
        if (tableInfo.getSchemaName() != null && tableInfo.getSchemaName().length() > 0) {
            databaseType.appendEscapedEntityName(sb2, tableInfo.getSchemaName());
            sb2.append(d.f90941a);
        }
        databaseType.appendEscapedEntityName(sb2, tableInfo.getTableName());
        sb2.append(' ');
        list.addAll(arrayList);
        list.add(sb2.toString());
        list.addAll(arrayList2);
    }

    public static <T> int clearTable(ConnectionSource connectionSource, Class<T> cls) throws SQLException {
        DatabaseType databaseType = connectionSource.getDatabaseType();
        String strExtractTableName = DatabaseTableConfig.extractTableName(databaseType, cls);
        String strExtractSchemaName = DatabaseTableConfig.extractSchemaName(cls);
        if (databaseType.isEntityNamesMustBeUpCase()) {
            strExtractTableName = databaseType.upCaseEntityName(strExtractTableName);
        }
        return clearTable(connectionSource, strExtractSchemaName, strExtractTableName);
    }

    public static <T> int createTable(ConnectionSource connectionSource, Class<T> cls) throws SQLException {
        return doCreateTable(DaoManager.createDao(connectionSource, cls), false);
    }

    public static <T> int createTableIfNotExists(ConnectionSource connectionSource, Class<T> cls) throws SQLException {
        return doCreateTable(DaoManager.createDao(connectionSource, cls), true);
    }

    private static <T, ID> int doCreateTable(Dao<T, ID> dao, boolean z10) throws SQLException {
        ConnectionSource connectionSource = dao.getConnectionSource();
        return dao instanceof BaseDaoImpl ? doCreateTable(connectionSource, ((BaseDaoImpl) dao).getTableInfo(), z10) : doCreateTable(connectionSource, new TableInfo(connectionSource.getDatabaseType(), dao.getDataClass()), z10);
    }

    private static int doCreateTestQueries(DatabaseConnection databaseConnection, DatabaseType databaseType, List<String> list) throws Throwable {
        int i10 = 0;
        for (String str : list) {
            CompiledStatement compiledStatement = null;
            try {
                try {
                    CompiledStatement compiledStatementCompileStatement = databaseConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1, false);
                    try {
                        DatabaseResults databaseResultsRunQuery = compiledStatementCompileStatement.runQuery(null);
                        int i11 = 0;
                        for (boolean zFirst = databaseResultsRunQuery.first(); zFirst; zFirst = databaseResultsRunQuery.next()) {
                            i11++;
                        }
                        logger.info("executing create table after-query got {} results: {}", Integer.valueOf(i11), str);
                        IOUtils.closeThrowSqlException(compiledStatementCompileStatement, "compiled statement");
                        i10++;
                    } catch (SQLException e10) {
                        e = e10;
                        compiledStatement = compiledStatementCompileStatement;
                        throw new SQLException("executing create table after-query failed: " + str, e);
                    } catch (Throwable th) {
                        th = th;
                        compiledStatement = compiledStatementCompileStatement;
                        IOUtils.closeThrowSqlException(compiledStatement, "compiled statement");
                        throw th;
                    }
                } catch (SQLException e11) {
                    e = e11;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return i10;
    }

    private static <T, ID> int doDropTable(DatabaseType databaseType, ConnectionSource connectionSource, TableInfo<T, ID> tableInfo, boolean z10) throws SQLException {
        ArrayList arrayList = new ArrayList();
        addDropIndexStatements(databaseType, tableInfo, arrayList, true);
        addDropTableStatements(databaseType, tableInfo, arrayList, true);
        DatabaseConnection readWriteConnection = connectionSource.getReadWriteConnection(tableInfo.getTableName());
        try {
            return doStatements(readWriteConnection, "drop", arrayList, z10, databaseType.isCreateTableReturnsNegative(), false);
        } finally {
            connectionSource.releaseConnection(readWriteConnection);
        }
    }

    private static int doStatements(DatabaseConnection databaseConnection, String str, Collection<String> collection, boolean z10, boolean z11, boolean z12) throws SQLException {
        int iRunExecute;
        int i10 = 0;
        for (String str2 : collection) {
            CompiledStatement compiledStatementCompileStatement = null;
            try {
                try {
                    compiledStatementCompileStatement = databaseConnection.compileStatement(str2, StatementBuilder.StatementType.EXECUTE, noFieldTypes, -1, false);
                    iRunExecute = compiledStatementCompileStatement.runExecute();
                    try {
                        logger.info("executed {} table statement changed {} rows: {}", str, Integer.valueOf(iRunExecute), str2);
                    } catch (SQLException e10) {
                        e = e10;
                        if (!z10) {
                            throw new SQLException("SQL statement failed: " + str2, e);
                        }
                        logger.info("ignoring {} error '{}' for statement: {}", str, e, str2);
                    }
                } catch (Throwable th) {
                    IOUtils.closeThrowSqlException(compiledStatementCompileStatement, "compiled statement");
                    throw th;
                }
            } catch (SQLException e11) {
                e = e11;
                iRunExecute = 0;
            }
            IOUtils.closeThrowSqlException(compiledStatementCompileStatement, "compiled statement");
            if (iRunExecute < 0) {
                if (!z11) {
                    throw new SQLException("SQL statement " + str2 + " updated " + iRunExecute + " rows, we were expecting >= 0");
                }
            } else if (iRunExecute > 0 && z12) {
                throw new SQLException("SQL statement updated " + iRunExecute + " rows, we were expecting == 0: " + str2);
            }
            i10++;
        }
        return i10;
    }

    public static <T, ID> int dropTable(ConnectionSource connectionSource, Class<T> cls, boolean z10) throws SQLException {
        return dropTable(DaoManager.createDao(connectionSource, cls), z10);
    }

    public static <T, ID> List<String> getCreateTableStatements(ConnectionSource connectionSource, Class<T> cls) throws SQLException {
        ArrayList arrayList = new ArrayList();
        addCreateTableStatements(connectionSource.getDatabaseType(), DaoManager.createDao(connectionSource, cls).getTableInfo(), arrayList, arrayList, false, false);
        return arrayList;
    }

    public static int createTable(Dao<?, ?> dao) throws SQLException {
        return doCreateTable(dao, false);
    }

    public static <T> int createTableIfNotExists(ConnectionSource connectionSource, DatabaseTableConfig<T> databaseTableConfig) throws SQLException {
        return doCreateTable(DaoManager.createDao(connectionSource, databaseTableConfig), true);
    }

    public static <T, ID> int dropTable(Dao<T, ID> dao, boolean z10) throws SQLException {
        ConnectionSource connectionSource = dao.getConnectionSource();
        Class<T> dataClass = dao.getDataClass();
        DatabaseType databaseType = connectionSource.getDatabaseType();
        if (dao instanceof BaseDaoImpl) {
            return doDropTable(databaseType, connectionSource, ((BaseDaoImpl) dao).getTableInfo(), z10);
        }
        return doDropTable(databaseType, connectionSource, new TableInfo(databaseType, dataClass), z10);
    }

    private static <T, ID> void addCreateTableStatements(DatabaseType databaseType, TableInfo<T, ID> tableInfo, List<String> list, List<String> list2, boolean z10, boolean z11) throws SQLException {
        boolean z12;
        StringBuilder sb2 = new StringBuilder(256);
        if (z11) {
            logger.info("creating table '{}'", tableInfo.getTableName());
        }
        sb2.append("CREATE TABLE ");
        if (z10 && databaseType.isCreateIfNotExistsSupported()) {
            sb2.append("IF NOT EXISTS ");
        }
        if (tableInfo.getSchemaName() != null && tableInfo.getSchemaName().length() > 0) {
            databaseType.appendEscapedEntityName(sb2, tableInfo.getSchemaName());
            sb2.append(d.f90941a);
        }
        databaseType.appendEscapedEntityName(sb2, tableInfo.getTableName());
        sb2.append(" (");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        FieldType[] fieldTypes = tableInfo.getFieldTypes();
        int length = fieldTypes.length;
        boolean z13 = true;
        int i10 = 0;
        while (i10 < length) {
            FieldType fieldType = fieldTypes[i10];
            if (fieldType.isForeignCollection()) {
                i10 = i10;
            } else {
                if (z13) {
                    z12 = false;
                } else {
                    sb2.append(", ");
                    z12 = z13;
                }
                String columnDefinition = fieldType.getColumnDefinition();
                if (columnDefinition == null) {
                    databaseType.appendColumnArg(tableInfo.getTableName(), sb2, fieldType, arrayList, arrayList2, arrayList3, list2);
                } else {
                    databaseType.appendEscapedEntityName(sb2, fieldType.getColumnName());
                    sb2.append(' ');
                    sb2.append(columnDefinition);
                    sb2.append(' ');
                }
                z13 = z12;
            }
            i10++;
        }
        databaseType.addPrimaryKeySql(tableInfo.getFieldTypes(), arrayList, arrayList2, arrayList3, list2);
        databaseType.addUniqueComboSql(tableInfo.getFieldTypes(), arrayList, arrayList2, arrayList3, list2);
        for (String str : arrayList) {
            sb2.append(", ");
            sb2.append(str);
        }
        sb2.append(") ");
        databaseType.appendCreateTableSuffix(sb2);
        list.addAll(arrayList2);
        list.add(sb2.toString());
        list.addAll(arrayList3);
        addCreateIndexStatements(databaseType, tableInfo, list, z10, false, z11);
        addCreateIndexStatements(databaseType, tableInfo, list, z10, true, z11);
    }

    public static <T> int createTable(ConnectionSource connectionSource, DatabaseTableConfig<T> databaseTableConfig) throws SQLException {
        return doCreateTable(DaoManager.createDao(connectionSource, databaseTableConfig), false);
    }

    public static <T, ID> List<String> getCreateTableStatements(ConnectionSource connectionSource, DatabaseTableConfig<T> databaseTableConfig) throws SQLException {
        Dao daoCreateDao = DaoManager.createDao(connectionSource, databaseTableConfig);
        DatabaseType databaseType = connectionSource.getDatabaseType();
        if (daoCreateDao instanceof BaseDaoImpl) {
            return addCreateTableStatements(databaseType, ((BaseDaoImpl) daoCreateDao).getTableInfo(), false, false);
        }
        databaseTableConfig.extractFieldTypes(databaseType);
        return addCreateTableStatements(databaseType, new TableInfo(databaseType, databaseTableConfig), false, false);
    }

    public static <T> int clearTable(ConnectionSource connectionSource, DatabaseTableConfig<T> databaseTableConfig) throws SQLException {
        return clearTable(connectionSource, databaseTableConfig.getSchemaName(), databaseTableConfig.getTableName());
    }

    private static <T, ID> int doCreateTable(ConnectionSource connectionSource, TableInfo<T, ID> tableInfo, boolean z10) throws SQLException {
        DatabaseType databaseType = connectionSource.getDatabaseType();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        addCreateTableStatements(databaseType, tableInfo, arrayList, arrayList2, z10, true);
        DatabaseConnection readWriteConnection = connectionSource.getReadWriteConnection(tableInfo.getTableName());
        try {
            return doStatements(readWriteConnection, "create", arrayList, false, databaseType.isCreateTableReturnsNegative(), databaseType.isCreateTableReturnsZero()) + doCreateTestQueries(readWriteConnection, databaseType, arrayList2);
        } finally {
            connectionSource.releaseConnection(readWriteConnection);
        }
    }

    private static <T> int clearTable(ConnectionSource connectionSource, String str, String str2) throws SQLException {
        DatabaseType databaseType = connectionSource.getDatabaseType();
        StringBuilder sb2 = new StringBuilder(48);
        if (databaseType.isTruncateSupported()) {
            sb2.append("TRUNCATE TABLE ");
        } else {
            sb2.append("DELETE FROM ");
        }
        if (str != null && str.length() > 0) {
            databaseType.appendEscapedEntityName(sb2, str);
            sb2.append(d.f90941a);
        }
        databaseType.appendEscapedEntityName(sb2, str2);
        String string = sb2.toString();
        logger.info("clearing table '{}' with '{}", str2, string);
        DatabaseConnection readWriteConnection = connectionSource.getReadWriteConnection(str2);
        CompiledStatement compiledStatementCompileStatement = null;
        try {
            compiledStatementCompileStatement = readWriteConnection.compileStatement(string, StatementBuilder.StatementType.EXECUTE, noFieldTypes, -1, false);
            return compiledStatementCompileStatement.runExecute();
        } finally {
            IOUtils.closeThrowSqlException(compiledStatementCompileStatement, "compiled statement");
            connectionSource.releaseConnection(readWriteConnection);
        }
    }

    public static <T, ID> int dropTable(ConnectionSource connectionSource, DatabaseTableConfig<T> databaseTableConfig, boolean z10) throws SQLException {
        DatabaseType databaseType = connectionSource.getDatabaseType();
        Dao daoCreateDao = DaoManager.createDao(connectionSource, databaseTableConfig);
        if (daoCreateDao instanceof BaseDaoImpl) {
            return doDropTable(databaseType, connectionSource, ((BaseDaoImpl) daoCreateDao).getTableInfo(), z10);
        }
        databaseTableConfig.extractFieldTypes(databaseType);
        return doDropTable(databaseType, connectionSource, new TableInfo(databaseType, databaseTableConfig), z10);
    }

    @Deprecated
    public static <T> List<String> getCreateTableStatements(DatabaseType databaseType, Class<T> cls) throws SQLException {
        ArrayList arrayList = new ArrayList();
        addCreateTableStatements(databaseType, new TableInfo(databaseType, cls), arrayList, arrayList, false, false);
        return arrayList;
    }
}
