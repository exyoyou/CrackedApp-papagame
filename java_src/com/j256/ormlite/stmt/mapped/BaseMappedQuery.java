package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.GenericRowMapper;
import com.j256.ormlite.support.DatabaseResults;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseMappedQuery<T, ID> extends BaseMappedStatement<T, ID> implements GenericRowMapper<T> {
    private Map<String, Integer> columnPositions;
    private Object parent;
    private Object parentId;
    protected final FieldType[] resultsFieldTypes;

    protected BaseMappedQuery(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, String str, FieldType[] fieldTypeArr, FieldType[] fieldTypeArr2) {
        super(dao, tableInfo, str, fieldTypeArr);
        this.columnPositions = null;
        this.parent = null;
        this.parentId = null;
        this.resultsFieldTypes = fieldTypeArr2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.j256.ormlite.stmt.GenericRowMapper
    public T mapRow(DatabaseResults databaseResults) throws SQLException {
        Object objBuildForeignCollection;
        Object obj;
        FieldType fieldType;
        Map<String, Integer> map = this.columnPositions;
        if (map == null) {
            map = new HashMap<>();
        }
        ObjectCache objectCacheForRetrieve = databaseResults.getObjectCacheForRetrieve();
        if (objectCacheForRetrieve != 0) {
            T t10 = (T) objectCacheForRetrieve.get(this.clazz, this.idField.resultToJava(databaseResults, map));
            if (t10 != null) {
                return t10;
            }
        }
        T tCreateObjectInstance = this.dao.createObjectInstance();
        Object obj2 = null;
        boolean z10 = false;
        for (FieldType fieldType2 : this.resultsFieldTypes) {
            if (fieldType2.isForeignCollection()) {
                z10 = true;
            } else {
                Object objResultToJava = fieldType2.resultToJava(databaseResults, map);
                if (objResultToJava == null || this.parent == null || fieldType2.getField().getType() != this.parent.getClass() || !objResultToJava.equals(this.parentId)) {
                    obj = objResultToJava;
                    FieldType fieldType3 = fieldType2;
                    fieldType3.assignField(this.connectionSource, tCreateObjectInstance, obj, false, objectCacheForRetrieve);
                    fieldType = fieldType3;
                } else {
                    obj = objResultToJava;
                    fieldType = fieldType2;
                    fieldType2.assignField(this.connectionSource, tCreateObjectInstance, this.parent, true, objectCacheForRetrieve);
                }
                if (fieldType.isId()) {
                    obj2 = obj;
                }
            }
        }
        if (z10) {
            for (FieldType fieldType4 : this.resultsFieldTypes) {
                if (fieldType4.isForeignCollection() && (objBuildForeignCollection = fieldType4.buildForeignCollection(tCreateObjectInstance, obj2)) != null) {
                    fieldType4.assignField(this.connectionSource, tCreateObjectInstance, objBuildForeignCollection, false, objectCacheForRetrieve);
                }
            }
        }
        ObjectCache objectCacheForStore = databaseResults.getObjectCacheForStore();
        if (objectCacheForStore != 0 && obj2 != null) {
            objectCacheForStore.put(this.clazz, obj2, tCreateObjectInstance);
        }
        if (this.columnPositions == null) {
            this.columnPositions = map;
        }
        return tCreateObjectInstance;
    }

    public void setParentInformation(Object obj, Object obj2) {
        this.parent = obj;
        this.parentId = obj2;
    }
}
