package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.table.TableInfo;
import external.org.apache.commons.lang3.d;
import java.sql.SQLException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class DeleteBuilder<T, ID> extends StatementBuilder<T, ID> {
    private Long limit;

    public DeleteBuilder(DatabaseType databaseType, TableInfo<T, ID> tableInfo, Dao<T, ID> dao) {
        super(databaseType, tableInfo, dao, StatementBuilder.StatementType.DELETE);
    }

    private void appendLimit(StringBuilder sb2) {
        Long l10 = this.limit;
        if (l10 != null) {
            this.databaseType.appendUpdateLimitValue(sb2, l10.longValue());
        }
    }

    @Override // com.j256.ormlite.stmt.StatementBuilder
    protected void appendStatementEnd(StringBuilder sb2, List<ArgumentHolder> list) {
        if (this.databaseType.isLimitDeleteAtEndSupported()) {
            appendLimit(sb2);
        }
    }

    @Override // com.j256.ormlite.stmt.StatementBuilder
    protected void appendStatementStart(StringBuilder sb2, List<ArgumentHolder> list) {
        sb2.append("DELETE FROM ");
        if (this.tableInfo.getSchemaName() != null && this.tableInfo.getSchemaName().length() > 0) {
            this.databaseType.appendEscapedEntityName(sb2, this.tableInfo.getSchemaName());
            sb2.append(d.f90941a);
        }
        if (this.databaseType.isLimitAfterDeleteSupported()) {
            appendLimit(sb2);
        }
        this.databaseType.appendEscapedEntityName(sb2, this.tableInfo.getTableName());
        sb2.append(' ');
    }

    public int delete() throws SQLException {
        return this.dao.delete((PreparedDelete) prepare());
    }

    public DeleteBuilder<T, ID> limit(Long l10) {
        this.limit = l10;
        return this;
    }

    public PreparedDelete<T> prepare() throws SQLException {
        return super.prepareStatement(this.limit, false);
    }

    @Override // com.j256.ormlite.stmt.StatementBuilder
    public void reset() {
        super.reset();
        this.limit = null;
    }
}
