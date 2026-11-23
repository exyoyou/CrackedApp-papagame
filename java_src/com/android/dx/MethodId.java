package com.android.dx;

import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.type.Prototype;
import com.join.mgps.Util.o0;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class MethodId<D, R> {
    final CstMethodRef constant;
    final TypeId<D> declaringType;
    final String name;
    final CstNat nat;
    final TypeList parameters;
    final TypeId<R> returnType;

    MethodId(TypeId<D> typeId, TypeId<R> typeId2, String str, TypeList typeList) {
        if (typeId == null || typeId2 == null || str == null || typeList == null) {
            throw null;
        }
        this.declaringType = typeId;
        this.returnType = typeId2;
        this.name = str;
        this.parameters = typeList;
        CstNat cstNat = new CstNat(new CstString(str), new CstString(descriptor(false)));
        this.nat = cstNat;
        this.constant = new CstMethodRef(typeId.constant, cstNat);
    }

    String descriptor(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(");
        if (z10) {
            sb2.append(this.declaringType.name);
        }
        for (TypeId<?> typeId : this.parameters.types) {
            sb2.append(typeId.name);
        }
        sb2.append(")");
        sb2.append(this.returnType.name);
        return sb2.toString();
    }

    public boolean equals(Object obj) {
        if (obj instanceof MethodId) {
            MethodId methodId = (MethodId) obj;
            if (methodId.declaringType.equals(this.declaringType) && methodId.name.equals(this.name) && methodId.parameters.equals(this.parameters) && methodId.returnType.equals(this.returnType)) {
                return true;
            }
        }
        return false;
    }

    public TypeId<D> getDeclaringType() {
        return this.declaringType;
    }

    public String getName() {
        return this.name;
    }

    public List<TypeId<?>> getParameters() {
        return this.parameters.asList();
    }

    public TypeId<R> getReturnType() {
        return this.returnType;
    }

    public int hashCode() {
        return ((((((527 + this.declaringType.hashCode()) * 31) + this.name.hashCode()) * 31) + this.parameters.hashCode()) * 31) + this.returnType.hashCode();
    }

    public boolean isConstructor() {
        return this.name.equals("<init>");
    }

    public boolean isStaticInitializer() {
        return this.name.equals("<clinit>");
    }

    Prototype prototype(boolean z10) {
        return Prototype.intern(descriptor(z10));
    }

    public String toString() {
        return this.declaringType + o0.f49827a + this.name + "(" + this.parameters + ")";
    }
}
