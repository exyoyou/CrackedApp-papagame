package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import external.org.apache.commons.lang3.d;
import java.sql.SQLException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class Not implements Clause, NeedsFutureClause {
    private Comparison comparison = null;
    private Exists exists = null;

    public Not() {
    }

    @Override // com.j256.ormlite.stmt.query.Clause
    public void appendSql(DatabaseType databaseType, String str, StringBuilder sb2, List<ArgumentHolder> list, Clause clause) throws SQLException {
        if (this.comparison == null && this.exists == null) {
            throw new IllegalStateException("Clause has not been set in NOT operation");
        }
        sb2.append("(NOT ");
        if (this.comparison == null) {
            this.exists.appendSql(databaseType, str, sb2, list, clause);
        } else {
            if (str != null) {
                databaseType.appendEscapedEntityName(sb2, str);
                sb2.append(d.f90941a);
            }
            databaseType.appendEscapedEntityName(sb2, this.comparison.getColumnName());
            sb2.append(' ');
            this.comparison.appendOperation(sb2);
            this.comparison.appendValue(databaseType, sb2, list);
        }
        int length = sb2.length();
        if (length > 0) {
            int i10 = length - 1;
            if (sb2.charAt(i10) == ' ') {
                sb2.setLength(i10);
            }
        }
        sb2.append(") ");
    }

    @Override // com.j256.ormlite.stmt.query.NeedsFutureClause
    public void setMissingClause(Clause clause) {
        if (this.comparison != null) {
            throw new IllegalArgumentException("NOT operation already has a comparison set");
        }
        if (clause instanceof Comparison) {
            this.comparison = (Comparison) clause;
        } else {
            if (clause instanceof Exists) {
                this.exists = (Exists) clause;
                return;
            }
            throw new IllegalArgumentException("NOT operation can only work with comparison SQL clauses, not " + clause);
        }
    }

    public String toString() {
        if (this.comparison == null) {
            return "NOT without comparison";
        }
        return "NOT comparison " + this.comparison;
    }

    public Not(Clause clause) {
        setMissingClause(clause);
    }
}
