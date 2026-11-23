package com.j256.ormlite.support;

import com.j256.ormlite.dao.ObjectCache;
import java.io.InputStream;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.sql.Timestamp;

/* JADX INFO: loaded from: classes5.dex */
public interface DatabaseResults extends AutoCloseable {
    void closeQuietly();

    int findColumn(String str) throws SQLException;

    boolean first() throws SQLException;

    BigDecimal getBigDecimal(int i10) throws SQLException;

    InputStream getBlobStream(int i10) throws SQLException;

    boolean getBoolean(int i10) throws SQLException;

    byte getByte(int i10) throws SQLException;

    byte[] getBytes(int i10) throws SQLException;

    char getChar(int i10) throws SQLException;

    int getColumnCount() throws SQLException;

    String[] getColumnNames() throws SQLException;

    double getDouble(int i10) throws SQLException;

    float getFloat(int i10) throws SQLException;

    int getInt(int i10) throws SQLException;

    long getLong(int i10) throws SQLException;

    Object getObject(int i10) throws SQLException;

    ObjectCache getObjectCacheForRetrieve();

    ObjectCache getObjectCacheForStore();

    short getShort(int i10) throws SQLException;

    String getString(int i10) throws SQLException;

    Timestamp getTimestamp(int i10) throws SQLException;

    boolean last() throws SQLException;

    boolean moveAbsolute(int i10) throws SQLException;

    boolean moveRelative(int i10) throws SQLException;

    boolean next() throws SQLException;

    boolean previous() throws SQLException;

    boolean wasNull(int i10) throws SQLException;
}
