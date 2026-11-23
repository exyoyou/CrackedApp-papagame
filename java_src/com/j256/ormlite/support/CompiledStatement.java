package com.j256.ormlite.support;

import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.field.SqlType;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes5.dex */
public interface CompiledStatement extends AutoCloseable {
    void cancel() throws SQLException;

    void closeQuietly();

    int getColumnCount() throws SQLException;

    String getColumnName(int i10) throws SQLException;

    String getStatement();

    int runExecute() throws SQLException;

    DatabaseResults runQuery(ObjectCache objectCache) throws SQLException;

    int runUpdate() throws SQLException;

    void setMaxRows(int i10) throws SQLException;

    void setObject(int i10, Object obj, SqlType sqlType) throws SQLException;

    void setQueryTimeout(long j10) throws SQLException;
}
