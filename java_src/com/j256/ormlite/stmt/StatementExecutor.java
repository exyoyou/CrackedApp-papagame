package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.BaseDaoImpl;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DatabaseResultsMapper;
import com.j256.ormlite.dao.GenericRawResults;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.dao.RawRowMapper;
import com.j256.ormlite.dao.RawRowObjectMapper;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.DataType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.misc.IOUtils;
import com.j256.ormlite.misc.TransactionManager;
import com.j256.ormlite.stmt.mapped.MappedCreate;
import com.j256.ormlite.stmt.mapped.MappedDelete;
import com.j256.ormlite.stmt.mapped.MappedDeleteCollection;
import com.j256.ormlite.stmt.mapped.MappedQueryForFieldEq;
import com.j256.ormlite.stmt.mapped.MappedRefresh;
import com.j256.ormlite.stmt.mapped.MappedUpdate;
import com.j256.ormlite.stmt.mapped.MappedUpdateId;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.DatabaseResults;
import com.j256.ormlite.table.TableInfo;
import external.org.apache.commons.lang3.d;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public class StatementExecutor<T, ID> implements GenericRowMapper<String[]> {
    private static Logger logger = LoggerFactory.getLogger((Class<?>) StatementExecutor.class);
    private static final FieldType[] noFieldTypes = new FieldType[0];
    private String countStarQuery;
    private final Dao<T, ID> dao;
    private final DatabaseType databaseType;
    private FieldType[] ifExistsFieldTypes;
    private String ifExistsQuery;
    private final ThreadLocal<Boolean> localIsInBatchMode = new ThreadLocal<Boolean>() { // from class: com.j256.ormlite.stmt.StatementExecutor.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public Boolean initialValue() {
            return Boolean.FALSE;
        }
    };
    private MappedDelete<T, ID> mappedDelete;
    private MappedCreate<T, ID> mappedInsert;
    private MappedQueryForFieldEq<T, ID> mappedQueryForId;
    private MappedRefresh<T, ID> mappedRefresh;
    private MappedUpdate<T, ID> mappedUpdate;
    private MappedUpdateId<T, ID> mappedUpdateId;
    private PreparedQuery<T> preparedQueryForAll;
    private RawRowMapper<T> rawRowMapper;
    private final TableInfo<T, ID> tableInfo;

    private static class ObjectArrayRowMapper implements GenericRowMapper<Object[]> {
        private final DataType[] columnTypes;

        public ObjectArrayRowMapper(DataType[] dataTypeArr) {
            this.columnTypes = dataTypeArr;
        }

        @Override // com.j256.ormlite.stmt.GenericRowMapper
        public Object[] mapRow(DatabaseResults databaseResults) throws SQLException {
            int columnCount = databaseResults.getColumnCount();
            Object[] objArr = new Object[columnCount];
            int i10 = 0;
            while (i10 < columnCount) {
                DataType[] dataTypeArr = this.columnTypes;
                objArr[i10] = (i10 >= dataTypeArr.length ? DataType.STRING : dataTypeArr[i10]).getDataPersister().resultToJava(null, databaseResults, i10);
                i10++;
            }
            return objArr;
        }
    }

    private static class UserDatabaseResultsMapper<UO> implements GenericRowMapper<UO> {
        public final DatabaseResultsMapper<UO> mapper;

        @Override // com.j256.ormlite.stmt.GenericRowMapper
        public UO mapRow(DatabaseResults databaseResults) throws SQLException {
            return this.mapper.mapRow(databaseResults);
        }

        private UserDatabaseResultsMapper(DatabaseResultsMapper<UO> databaseResultsMapper) {
            this.mapper = databaseResultsMapper;
        }
    }

    private static class UserRawRowMapper<UO> implements GenericRowMapper<UO> {
        private String[] columnNames;
        private final RawRowMapper<UO> mapper;
        private final GenericRowMapper<String[]> stringRowMapper;

        public UserRawRowMapper(RawRowMapper<UO> rawRowMapper, GenericRowMapper<String[]> genericRowMapper) {
            this.mapper = rawRowMapper;
            this.stringRowMapper = genericRowMapper;
        }

        private String[] getColumnNames(DatabaseResults databaseResults) throws SQLException {
            String[] strArr = this.columnNames;
            if (strArr != null) {
                return strArr;
            }
            String[] columnNames = databaseResults.getColumnNames();
            this.columnNames = columnNames;
            return columnNames;
        }

        @Override // com.j256.ormlite.stmt.GenericRowMapper
        public UO mapRow(DatabaseResults databaseResults) throws SQLException {
            return this.mapper.mapRow(getColumnNames(databaseResults), this.stringRowMapper.mapRow(databaseResults));
        }
    }

    private static class UserRawRowObjectMapper<UO> implements GenericRowMapper<UO> {
        private String[] columnNames;
        private final DataType[] columnTypes;
        private final RawRowObjectMapper<UO> mapper;

        public UserRawRowObjectMapper(RawRowObjectMapper<UO> rawRowObjectMapper, DataType[] dataTypeArr) {
            this.mapper = rawRowObjectMapper;
            this.columnTypes = dataTypeArr;
        }

        private String[] getColumnNames(DatabaseResults databaseResults) throws SQLException {
            String[] strArr = this.columnNames;
            if (strArr != null) {
                return strArr;
            }
            String[] columnNames = databaseResults.getColumnNames();
            this.columnNames = columnNames;
            return columnNames;
        }

        @Override // com.j256.ormlite.stmt.GenericRowMapper
        public UO mapRow(DatabaseResults databaseResults) throws SQLException {
            int columnCount = databaseResults.getColumnCount();
            Object[] objArr = new Object[columnCount];
            for (int i10 = 0; i10 < columnCount; i10++) {
                DataType[] dataTypeArr = this.columnTypes;
                if (i10 >= dataTypeArr.length) {
                    objArr[i10] = null;
                } else {
                    objArr[i10] = dataTypeArr[i10].getDataPersister().resultToJava(null, databaseResults, i10);
                }
            }
            return this.mapper.mapRow(getColumnNames(databaseResults), this.columnTypes, objArr);
        }
    }

    public StatementExecutor(DatabaseType databaseType, TableInfo<T, ID> tableInfo, Dao<T, ID> dao) {
        this.databaseType = databaseType;
        this.tableInfo = tableInfo;
        this.dao = dao;
    }

    private void assignStatementArguments(CompiledStatement compiledStatement, String[] strArr) throws SQLException {
        for (int i10 = 0; i10 < strArr.length; i10++) {
            compiledStatement.setObject(i10, strArr[i10], SqlType.STRING);
        }
    }

    private <CT> CT doCallBatchTasks(ConnectionSource connectionSource, Callable<CT> callable) throws SQLException {
        DatabaseConnection readWriteConnection = connectionSource.getReadWriteConnection(this.tableInfo.getTableName());
        try {
            this.localIsInBatchMode.set(Boolean.TRUE);
            return (CT) doCallBatchTasks(readWriteConnection, connectionSource.saveSpecialConnection(readWriteConnection), callable);
        } finally {
            connectionSource.clearSpecialConnection(readWriteConnection);
            connectionSource.releaseConnection(readWriteConnection);
            this.localIsInBatchMode.set(Boolean.FALSE);
            Dao<T, ID> dao = this.dao;
            if (dao != null) {
                dao.notifyChanges();
            }
        }
    }

    private void prepareQueryForAll() throws SQLException {
        if (this.preparedQueryForAll == null) {
            this.preparedQueryForAll = new QueryBuilder(this.databaseType, this.tableInfo, this.dao).prepare();
        }
    }

    public SelectIterator<T, ID> buildIterator(BaseDaoImpl<T, ID> baseDaoImpl, ConnectionSource connectionSource, int i10, ObjectCache objectCache) throws SQLException {
        prepareQueryForAll();
        return buildIterator(baseDaoImpl, connectionSource, this.preparedQueryForAll, objectCache, i10);
    }

    public <CT> CT callBatchTasks(ConnectionSource connectionSource, Callable<CT> callable) throws SQLException {
        CT ct;
        if (!connectionSource.isSingleConnection(this.tableInfo.getTableName())) {
            return (CT) doCallBatchTasks(connectionSource, callable);
        }
        synchronized (this) {
            ct = (CT) doCallBatchTasks(connectionSource, callable);
        }
        return ct;
    }

    public int create(DatabaseConnection databaseConnection, T t10, ObjectCache objectCache) throws SQLException {
        if (this.mappedInsert == null) {
            this.mappedInsert = MappedCreate.build(this.dao, this.tableInfo);
        }
        int iInsert = this.mappedInsert.insert(this.databaseType, databaseConnection, t10, objectCache);
        if (this.dao != null && !this.localIsInBatchMode.get().booleanValue()) {
            this.dao.notifyChanges();
        }
        return iInsert;
    }

    public int delete(DatabaseConnection databaseConnection, T t10, ObjectCache objectCache) throws SQLException {
        if (this.mappedDelete == null) {
            this.mappedDelete = MappedDelete.build(this.dao, this.tableInfo);
        }
        int iDelete = this.mappedDelete.delete(databaseConnection, t10, objectCache);
        if (this.dao != null && !this.localIsInBatchMode.get().booleanValue()) {
            this.dao.notifyChanges();
        }
        return iDelete;
    }

    public int deleteById(DatabaseConnection databaseConnection, ID id2, ObjectCache objectCache) throws SQLException {
        if (this.mappedDelete == null) {
            this.mappedDelete = MappedDelete.build(this.dao, this.tableInfo);
        }
        int iDeleteById = this.mappedDelete.deleteById(databaseConnection, id2, objectCache);
        if (this.dao != null && !this.localIsInBatchMode.get().booleanValue()) {
            this.dao.notifyChanges();
        }
        return iDeleteById;
    }

    public int deleteIds(DatabaseConnection databaseConnection, Collection<ID> collection, ObjectCache objectCache) throws SQLException {
        int iDeleteIds = MappedDeleteCollection.deleteIds(this.dao, this.tableInfo, databaseConnection, collection, objectCache);
        if (this.dao != null && !this.localIsInBatchMode.get().booleanValue()) {
            this.dao.notifyChanges();
        }
        return iDeleteIds;
    }

    public int deleteObjects(DatabaseConnection databaseConnection, Collection<T> collection, ObjectCache objectCache) throws SQLException {
        int iDeleteObjects = MappedDeleteCollection.deleteObjects(this.dao, this.tableInfo, databaseConnection, collection, objectCache);
        if (this.dao != null && !this.localIsInBatchMode.get().booleanValue()) {
            this.dao.notifyChanges();
        }
        return iDeleteObjects;
    }

    public int executeRaw(DatabaseConnection databaseConnection, String str, String[] strArr) throws SQLException {
        logger.debug("running raw execute statement: {}", str);
        if (strArr.length > 0) {
            logger.trace("execute arguments: {}", (Object) strArr);
        }
        CompiledStatement compiledStatementCompileStatement = databaseConnection.compileStatement(str, StatementBuilder.StatementType.EXECUTE, noFieldTypes, -1, false);
        try {
            assignStatementArguments(compiledStatementCompileStatement, strArr);
            return compiledStatementCompileStatement.runExecute();
        } finally {
            IOUtils.closeThrowSqlException(compiledStatementCompileStatement, "compiled statement");
        }
    }

    public int executeRawNoArgs(DatabaseConnection databaseConnection, String str) throws SQLException {
        logger.debug("running raw execute statement: {}", str);
        return databaseConnection.executeStatement(str, -1);
    }

    public RawRowMapper<T> getRawRowMapper() {
        if (this.rawRowMapper == null) {
            this.rawRowMapper = new RawRowMapperImpl(this.dao);
        }
        return this.rawRowMapper;
    }

    public GenericRowMapper<T> getSelectStarRowMapper() throws SQLException {
        prepareQueryForAll();
        return this.preparedQueryForAll;
    }

    public boolean ifExists(DatabaseConnection databaseConnection, ID id2) throws SQLException {
        if (this.ifExistsQuery == null) {
            QueryBuilder queryBuilder = new QueryBuilder(this.databaseType, this.tableInfo, this.dao);
            queryBuilder.selectRaw("COUNT(*)");
            queryBuilder.where().eq(this.tableInfo.getIdField().getColumnName(), new SelectArg());
            this.ifExistsQuery = queryBuilder.prepareStatementString();
            this.ifExistsFieldTypes = new FieldType[]{this.tableInfo.getIdField()};
        }
        long jQueryForLong = databaseConnection.queryForLong(this.ifExistsQuery, new Object[]{this.tableInfo.getIdField().convertJavaFieldToSqlArgValue(id2)}, this.ifExistsFieldTypes);
        logger.debug("query of '{}' returned {}", this.ifExistsQuery, Long.valueOf(jQueryForLong));
        return jQueryForLong != 0;
    }

    public List<T> query(ConnectionSource connectionSource, PreparedStmt<T> preparedStmt, ObjectCache objectCache) throws Throwable {
        SelectIterator<T, ID> selectIteratorBuildIterator = buildIterator(null, connectionSource, preparedStmt, objectCache, -1);
        try {
            ArrayList arrayList = new ArrayList();
            while (selectIteratorBuildIterator.hasNextThrow()) {
                arrayList.add(selectIteratorBuildIterator.nextThrow());
            }
            logger.debug("query of '{}' with {} args returned {} results", preparedStmt, Integer.valueOf(preparedStmt.getNumArgs()), Integer.valueOf(arrayList.size()));
            return arrayList;
        } finally {
            IOUtils.closeThrowSqlException(selectIteratorBuildIterator, "iterator");
        }
    }

    public List<T> queryForAll(ConnectionSource connectionSource, ObjectCache objectCache) throws SQLException {
        prepareQueryForAll();
        return query(connectionSource, this.preparedQueryForAll, objectCache);
    }

    public long queryForCountStar(DatabaseConnection databaseConnection) throws SQLException {
        if (this.countStarQuery == null) {
            StringBuilder sb2 = new StringBuilder(64);
            sb2.append("SELECT COUNT(*) FROM ");
            if (this.tableInfo.getSchemaName() != null && this.tableInfo.getSchemaName().length() > 0) {
                this.databaseType.appendEscapedEntityName(sb2, this.tableInfo.getSchemaName());
                sb2.append(d.f90941a);
            }
            this.databaseType.appendEscapedEntityName(sb2, this.tableInfo.getTableName());
            this.countStarQuery = sb2.toString();
        }
        long jQueryForLong = databaseConnection.queryForLong(this.countStarQuery);
        logger.debug("query of '{}' returned {}", this.countStarQuery, Long.valueOf(jQueryForLong));
        return jQueryForLong;
    }

    public T queryForFirst(DatabaseConnection databaseConnection, PreparedStmt<T> preparedStmt, ObjectCache objectCache) throws Throwable {
        CompiledStatement compiledStatementCompile = preparedStmt.compile(databaseConnection, StatementBuilder.StatementType.SELECT);
        DatabaseResults databaseResults = null;
        try {
            compiledStatementCompile.setMaxRows(1);
            DatabaseResults databaseResultsRunQuery = compiledStatementCompile.runQuery(objectCache);
            try {
                if (!databaseResultsRunQuery.first()) {
                    logger.debug("query-for-first of '{}' with {} args returned 0 results", preparedStmt, Integer.valueOf(preparedStmt.getNumArgs()));
                    IOUtils.closeThrowSqlException(databaseResultsRunQuery, "results");
                    IOUtils.closeThrowSqlException(compiledStatementCompile, "compiled statement");
                    return null;
                }
                logger.debug("query-for-first of '{}' with {} args returned at least 1 result", preparedStmt, Integer.valueOf(preparedStmt.getNumArgs()));
                T tMapRow = preparedStmt.mapRow(databaseResultsRunQuery);
                IOUtils.closeThrowSqlException(databaseResultsRunQuery, "results");
                IOUtils.closeThrowSqlException(compiledStatementCompile, "compiled statement");
                return tMapRow;
            } catch (Throwable th) {
                th = th;
                databaseResults = databaseResultsRunQuery;
                IOUtils.closeThrowSqlException(databaseResults, "results");
                IOUtils.closeThrowSqlException(compiledStatementCompile, "compiled statement");
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public T queryForId(DatabaseConnection databaseConnection, ID id2, ObjectCache objectCache) throws SQLException {
        if (this.mappedQueryForId == null) {
            this.mappedQueryForId = MappedQueryForFieldEq.build(this.dao, this.tableInfo, null);
        }
        return this.mappedQueryForId.execute(databaseConnection, id2, objectCache);
    }

    public long queryForLong(DatabaseConnection databaseConnection, PreparedStmt<T> preparedStmt) throws SQLException {
        CompiledStatement compiledStatementCompile = preparedStmt.compile(databaseConnection, StatementBuilder.StatementType.SELECT_LONG);
        try {
            DatabaseResults databaseResultsRunQuery = compiledStatementCompile.runQuery(null);
            if (databaseResultsRunQuery.first()) {
                long j10 = databaseResultsRunQuery.getLong(0);
                IOUtils.closeThrowSqlException(databaseResultsRunQuery, "results");
                IOUtils.closeThrowSqlException(compiledStatementCompile, "compiled statement");
                return j10;
            }
            throw new SQLException("No result found in queryForLong: " + preparedStmt);
        } catch (Throwable th) {
            IOUtils.closeThrowSqlException((AutoCloseable) null, "results");
            IOUtils.closeThrowSqlException(compiledStatementCompile, "compiled statement");
            throw th;
        }
    }

    public GenericRawResults<String[]> queryRaw(ConnectionSource connectionSource, String str, String[] strArr, ObjectCache objectCache) throws Throwable {
        logger.debug("executing raw query for: {}", str);
        if (strArr.length > 0) {
            logger.trace("query arguments: {}", (Object) strArr);
        }
        DatabaseConnection readOnlyConnection = connectionSource.getReadOnlyConnection(this.tableInfo.getTableName());
        CompiledStatement compiledStatement = null;
        try {
            CompiledStatement compiledStatementCompileStatement = readOnlyConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1, false);
            try {
                assignStatementArguments(compiledStatementCompileStatement, strArr);
                RawResultsImpl rawResultsImpl = new RawResultsImpl(connectionSource, readOnlyConnection, String[].class, compiledStatementCompileStatement, this, objectCache);
                IOUtils.closeThrowSqlException((AutoCloseable) null, "compiled statement");
                return rawResultsImpl;
            } catch (Throwable th) {
                th = th;
                compiledStatement = compiledStatementCompileStatement;
                IOUtils.closeThrowSqlException(compiledStatement, "compiled statement");
                if (readOnlyConnection != null) {
                    connectionSource.releaseConnection(readOnlyConnection);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public int refresh(DatabaseConnection databaseConnection, T t10, ObjectCache objectCache) throws SQLException {
        if (this.mappedRefresh == null) {
            this.mappedRefresh = MappedRefresh.build(this.dao, this.tableInfo);
        }
        return this.mappedRefresh.executeRefresh(databaseConnection, t10, objectCache);
    }

    public int update(DatabaseConnection databaseConnection, T t10, ObjectCache objectCache) throws SQLException {
        if (this.mappedUpdate == null) {
            this.mappedUpdate = MappedUpdate.build(this.dao, this.tableInfo);
        }
        int iUpdate = this.mappedUpdate.update(databaseConnection, t10, objectCache);
        if (this.dao != null && !this.localIsInBatchMode.get().booleanValue()) {
            this.dao.notifyChanges();
        }
        return iUpdate;
    }

    public int updateId(DatabaseConnection databaseConnection, T t10, ID id2, ObjectCache objectCache) throws SQLException {
        if (this.mappedUpdateId == null) {
            this.mappedUpdateId = MappedUpdateId.build(this.dao, this.tableInfo);
        }
        int iExecute = this.mappedUpdateId.execute(databaseConnection, t10, id2, objectCache);
        if (this.dao != null && !this.localIsInBatchMode.get().booleanValue()) {
            this.dao.notifyChanges();
        }
        return iExecute;
    }

    public int updateRaw(DatabaseConnection databaseConnection, String str, String[] strArr) throws SQLException {
        logger.debug("running raw update statement: {}", str);
        if (strArr.length > 0) {
            logger.trace("update arguments: {}", (Object) strArr);
        }
        CompiledStatement compiledStatementCompileStatement = databaseConnection.compileStatement(str, StatementBuilder.StatementType.UPDATE, noFieldTypes, -1, false);
        try {
            assignStatementArguments(compiledStatementCompileStatement, strArr);
            return compiledStatementCompileStatement.runUpdate();
        } finally {
            IOUtils.closeThrowSqlException(compiledStatementCompileStatement, "compiled statement");
        }
    }

    @Override // com.j256.ormlite.stmt.GenericRowMapper
    public String[] mapRow(DatabaseResults databaseResults) throws SQLException {
        int columnCount = databaseResults.getColumnCount();
        String[] strArr = new String[columnCount];
        for (int i10 = 0; i10 < columnCount; i10++) {
            strArr[i10] = databaseResults.getString(i10);
        }
        return strArr;
    }

    public SelectIterator<T, ID> buildIterator(BaseDaoImpl<T, ID> baseDaoImpl, ConnectionSource connectionSource, PreparedStmt<T> preparedStmt, ObjectCache objectCache, int i10) throws Throwable {
        DatabaseConnection readOnlyConnection = connectionSource.getReadOnlyConnection(this.tableInfo.getTableName());
        CompiledStatement compiledStatement = null;
        try {
            CompiledStatement compiledStatementCompile = preparedStmt.compile(readOnlyConnection, StatementBuilder.StatementType.SELECT, i10);
            try {
                SelectIterator<T, ID> selectIterator = new SelectIterator<>(this.tableInfo.getDataClass(), baseDaoImpl, preparedStmt, connectionSource, readOnlyConnection, compiledStatementCompile, objectCache);
                IOUtils.closeThrowSqlException((AutoCloseable) null, "compiled statement");
                return selectIterator;
            } catch (Throwable th) {
                th = th;
                compiledStatement = compiledStatementCompile;
                IOUtils.closeThrowSqlException(compiledStatement, "compiled statement");
                if (readOnlyConnection != null) {
                    connectionSource.releaseConnection(readOnlyConnection);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public int delete(DatabaseConnection databaseConnection, PreparedDelete<T> preparedDelete) throws SQLException {
        CompiledStatement compiledStatementCompile = preparedDelete.compile(databaseConnection, StatementBuilder.StatementType.DELETE);
        try {
            int iRunUpdate = compiledStatementCompile.runUpdate();
            if (this.dao != null && !this.localIsInBatchMode.get().booleanValue()) {
                this.dao.notifyChanges();
            }
            return iRunUpdate;
        } finally {
            IOUtils.closeThrowSqlException(compiledStatementCompile, "compiled statement");
        }
    }

    public int update(DatabaseConnection databaseConnection, PreparedUpdate<T> preparedUpdate) throws SQLException {
        CompiledStatement compiledStatementCompile = preparedUpdate.compile(databaseConnection, StatementBuilder.StatementType.UPDATE);
        try {
            int iRunUpdate = compiledStatementCompile.runUpdate();
            if (this.dao != null && !this.localIsInBatchMode.get().booleanValue()) {
                this.dao.notifyChanges();
            }
            return iRunUpdate;
        } finally {
            IOUtils.closeThrowSqlException(compiledStatementCompile, "compiled statement");
        }
    }

    public long queryForLong(DatabaseConnection databaseConnection, String str, String[] strArr) throws Throwable {
        CompiledStatement compiledStatementCompileStatement;
        logger.debug("executing raw query for long: {}", str);
        if (strArr.length > 0) {
            logger.trace("query arguments: {}", (Object) strArr);
        }
        try {
            compiledStatementCompileStatement = databaseConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1, false);
            try {
                assignStatementArguments(compiledStatementCompileStatement, strArr);
                DatabaseResults databaseResultsRunQuery = compiledStatementCompileStatement.runQuery(null);
                if (databaseResultsRunQuery.first()) {
                    long j10 = databaseResultsRunQuery.getLong(0);
                    IOUtils.closeThrowSqlException(databaseResultsRunQuery, "results");
                    IOUtils.closeThrowSqlException(compiledStatementCompileStatement, "compiled statement");
                    return j10;
                }
                throw new SQLException("No result found in queryForLong: " + str);
            } catch (Throwable th) {
                th = th;
                IOUtils.closeThrowSqlException((AutoCloseable) null, "results");
                IOUtils.closeThrowSqlException(compiledStatementCompileStatement, "compiled statement");
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            compiledStatementCompileStatement = null;
        }
    }

    public <UO> GenericRawResults<UO> queryRaw(ConnectionSource connectionSource, String str, RawRowMapper<UO> rawRowMapper, String[] strArr, ObjectCache objectCache) throws Throwable {
        logger.debug("executing raw query for: {}", str);
        if (strArr.length > 0) {
            logger.trace("query arguments: {}", (Object) strArr);
        }
        DatabaseConnection readOnlyConnection = connectionSource.getReadOnlyConnection(this.tableInfo.getTableName());
        CompiledStatement compiledStatement = null;
        try {
            CompiledStatement compiledStatementCompileStatement = readOnlyConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1, false);
            try {
                assignStatementArguments(compiledStatementCompileStatement, strArr);
                RawResultsImpl rawResultsImpl = new RawResultsImpl(connectionSource, readOnlyConnection, String[].class, compiledStatementCompileStatement, new UserRawRowMapper(rawRowMapper, this), objectCache);
                IOUtils.closeThrowSqlException((AutoCloseable) null, "compiled statement");
                return rawResultsImpl;
            } catch (Throwable th) {
                th = th;
                compiledStatement = compiledStatementCompileStatement;
                IOUtils.closeThrowSqlException(compiledStatement, "compiled statement");
                if (readOnlyConnection != null) {
                    connectionSource.releaseConnection(readOnlyConnection);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x005e  */
    /* JADX WARN: Code duplicated, block: B:38:? A[SYNTHETIC] */
    private <CT> CT doCallBatchTasks(DatabaseConnection databaseConnection, boolean z10, Callable<CT> callable) throws Throwable {
        Throwable th;
        boolean z11;
        if (this.databaseType.isBatchUseTransaction()) {
            return (CT) TransactionManager.callInTransaction(databaseConnection, z10, this.databaseType, callable);
        }
        boolean z12 = false;
        try {
            if (databaseConnection.isAutoCommitSupported() && databaseConnection.isAutoCommit()) {
                databaseConnection.setAutoCommit(false);
                try {
                    logger.debug("disabled auto-commit on table {} before batch tasks", this.tableInfo.getTableName());
                    z12 = true;
                } catch (Throwable th2) {
                    th = th2;
                    z11 = true;
                    if (z11) {
                        throw th;
                    }
                    databaseConnection.setAutoCommit(true);
                    logger.debug("re-enabled auto-commit on table {} after batch tasks", this.tableInfo.getTableName());
                    throw th;
                }
            }
            try {
                try {
                    CT ctCall = callable.call();
                    if (z12) {
                        databaseConnection.setAutoCommit(true);
                        logger.debug("re-enabled auto-commit on table {} after batch tasks", this.tableInfo.getTableName());
                    }
                    return ctCall;
                } catch (Throwable th3) {
                    z11 = z12;
                    th = th3;
                    if (z11) {
                        throw th;
                    }
                    databaseConnection.setAutoCommit(true);
                    logger.debug("re-enabled auto-commit on table {} after batch tasks", this.tableInfo.getTableName());
                    throw th;
                }
            } catch (SQLException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new SQLException("Batch tasks callable threw non-SQL exception", e11);
            }
        } catch (Throwable th4) {
            th = th4;
            z11 = false;
        }
    }

    public <UO> GenericRawResults<UO> queryRaw(ConnectionSource connectionSource, String str, DataType[] dataTypeArr, RawRowObjectMapper<UO> rawRowObjectMapper, String[] strArr, ObjectCache objectCache) throws Throwable {
        logger.debug("executing raw query for: {}", str);
        if (strArr.length > 0) {
            logger.trace("query arguments: {}", (Object) strArr);
        }
        DatabaseConnection readOnlyConnection = connectionSource.getReadOnlyConnection(this.tableInfo.getTableName());
        CompiledStatement compiledStatement = null;
        try {
            CompiledStatement compiledStatementCompileStatement = readOnlyConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1, false);
            try {
                assignStatementArguments(compiledStatementCompileStatement, strArr);
                try {
                    RawResultsImpl rawResultsImpl = new RawResultsImpl(connectionSource, readOnlyConnection, String[].class, compiledStatementCompileStatement, new UserRawRowObjectMapper(rawRowObjectMapper, dataTypeArr), objectCache);
                    IOUtils.closeThrowSqlException((AutoCloseable) null, "compiled statement");
                    return rawResultsImpl;
                } catch (Throwable th) {
                    th = th;
                    compiledStatement = compiledStatementCompileStatement;
                    IOUtils.closeThrowSqlException(compiledStatement, "compiled statement");
                    if (readOnlyConnection != null) {
                        connectionSource.releaseConnection(readOnlyConnection);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            readOnlyConnection = readOnlyConnection;
        }
    }

    public GenericRawResults<Object[]> queryRaw(ConnectionSource connectionSource, String str, DataType[] dataTypeArr, String[] strArr, ObjectCache objectCache) throws Throwable {
        logger.debug("executing raw query for: {}", str);
        if (strArr.length > 0) {
            logger.trace("query arguments: {}", (Object) strArr);
        }
        DatabaseConnection readOnlyConnection = connectionSource.getReadOnlyConnection(this.tableInfo.getTableName());
        CompiledStatement compiledStatement = null;
        try {
            CompiledStatement compiledStatementCompileStatement = readOnlyConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1, false);
            try {
                assignStatementArguments(compiledStatementCompileStatement, strArr);
                RawResultsImpl rawResultsImpl = new RawResultsImpl(connectionSource, readOnlyConnection, Object[].class, compiledStatementCompileStatement, new ObjectArrayRowMapper(dataTypeArr), objectCache);
                IOUtils.closeThrowSqlException((AutoCloseable) null, "compiled statement");
                return rawResultsImpl;
            } catch (Throwable th) {
                th = th;
                compiledStatement = compiledStatementCompileStatement;
                IOUtils.closeThrowSqlException(compiledStatement, "compiled statement");
                if (readOnlyConnection != null) {
                    connectionSource.releaseConnection(readOnlyConnection);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <UO> GenericRawResults<UO> queryRaw(ConnectionSource connectionSource, String str, DatabaseResultsMapper<UO> databaseResultsMapper, String[] strArr, ObjectCache objectCache) throws Throwable {
        logger.debug("executing raw query for: {}", str);
        if (strArr.length > 0) {
            logger.trace("query arguments: {}", (Object) strArr);
        }
        DatabaseConnection readOnlyConnection = connectionSource.getReadOnlyConnection(this.tableInfo.getTableName());
        CompiledStatement compiledStatement = null;
        Object[] objArr = 0;
        try {
            CompiledStatement compiledStatementCompileStatement = readOnlyConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1, false);
            try {
                assignStatementArguments(compiledStatementCompileStatement, strArr);
                RawResultsImpl rawResultsImpl = new RawResultsImpl(connectionSource, readOnlyConnection, Object[].class, compiledStatementCompileStatement, new UserDatabaseResultsMapper(databaseResultsMapper), objectCache);
                IOUtils.closeThrowSqlException((AutoCloseable) null, "compiled statement");
                return rawResultsImpl;
            } catch (Throwable th) {
                th = th;
                compiledStatement = compiledStatementCompileStatement;
                IOUtils.closeThrowSqlException(compiledStatement, "compiled statement");
                if (readOnlyConnection != null) {
                    connectionSource.releaseConnection(readOnlyConnection);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
