package com.android.dx;

import com.android.dx.rop.type.StdTypeList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
final class TypeList {
    final StdTypeList ropTypes;
    final TypeId<?>[] types;

    TypeList(TypeId<?>[] typeIdArr) {
        this.types = (TypeId[]) typeIdArr.clone();
        this.ropTypes = new StdTypeList(typeIdArr.length);
        for (int i10 = 0; i10 < typeIdArr.length; i10++) {
            this.ropTypes.set(i10, typeIdArr[i10].ropType);
        }
    }

    public List<TypeId<?>> asList() {
        return Collections.unmodifiableList(Arrays.asList(this.types));
    }

    public boolean equals(Object obj) {
        return (obj instanceof TypeList) && Arrays.equals(((TypeList) obj).types, this.types);
    }

    public int hashCode() {
        return Arrays.hashCode(this.types);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < this.types.length; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            sb2.append(this.types[i10]);
        }
        return sb2.toString();
    }
}
