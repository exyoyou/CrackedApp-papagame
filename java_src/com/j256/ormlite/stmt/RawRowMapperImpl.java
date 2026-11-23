package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.RawRowMapper;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes5.dex */
public class RawRowMapperImpl<T, ID> implements RawRowMapper<T> {
    private final Dao<T, ID> dao;
    private final TableInfo<T, ID> tableInfo;

    public RawRowMapperImpl(Dao<T, ID> dao) {
        this.dao = dao;
        this.tableInfo = dao.getTableInfo();
    }

    @Override // com.j256.ormlite.dao.RawRowMapper
    public T mapRow(String[] strArr, String[] strArr2) throws SQLException {
        T tCreateObjectInstance = this.dao.createObjectInstance();
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (i10 < strArr2.length) {
                FieldType fieldTypeByColumnName = this.tableInfo.getFieldTypeByColumnName(strArr[i10]);
                fieldTypeByColumnName.assignField(this.dao.getConnectionSource(), tCreateObjectInstance, fieldTypeByColumnName.convertStringToJavaField(strArr2[i10], i10), false, null);
            }
        }
        return tCreateObjectInstance;
    }
}
