package com.j256.ormlite.table;

import com.j256.ormlite.support.ConnectionSource;
import java.sql.SQLException;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseSchemaUtils {
    protected void dumpSchema() throws SQLException {
        ConnectionSource connectionSource = getConnectionSource();
        for (Class<?> cls : getClasses()) {
            Iterator<String> it2 = TableUtils.getCreateTableStatements(connectionSource, cls).iterator();
            while (it2.hasNext()) {
                System.out.println(it2.next() + ";");
            }
        }
    }

    protected abstract Class<?>[] getClasses();

    protected abstract ConnectionSource getConnectionSource() throws SQLException;
}
