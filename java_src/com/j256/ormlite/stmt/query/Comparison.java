package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.sql.SQLException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
interface Comparison extends Clause {
    void appendOperation(StringBuilder sb2);

    void appendValue(DatabaseType databaseType, StringBuilder sb2, List<ArgumentHolder> list) throws SQLException;

    String getColumnName();
}
