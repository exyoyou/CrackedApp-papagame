package com.android.dx.dex.file;

import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.type.Prototype;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;

/* JADX INFO: loaded from: classes7.dex */
public final class ProtoIdItem extends IndexedItem {
    private TypeListItem parameterTypes;
    private final Prototype prototype;
    private final CstString shortForm;

    public ProtoIdItem(Prototype prototype) {
        if (prototype == null) {
            throw new NullPointerException("prototype == null");
        }
        this.prototype = prototype;
        this.shortForm = makeShortForm(prototype);
        StdTypeList parameterTypes = prototype.getParameterTypes();
        this.parameterTypes = parameterTypes.size() == 0 ? null : new TypeListItem(parameterTypes);
    }

    private static CstString makeShortForm(Prototype prototype) {
        StdTypeList parameterTypes = prototype.getParameterTypes();
        int size = parameterTypes.size();
        StringBuilder sb2 = new StringBuilder(size + 1);
        sb2.append(shortFormCharFor(prototype.getReturnType()));
        for (int i10 = 0; i10 < size; i10++) {
            sb2.append(shortFormCharFor(parameterTypes.getType(i10)));
        }
        return new CstString(sb2.toString());
    }

    private static char shortFormCharFor(Type type) {
        char cCharAt = type.getDescriptor().charAt(0);
        if (cCharAt == '[') {
            return 'L';
        }
        return cCharAt;
    }

    @Override // com.android.dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        StringIdsSection stringIds = dexFile.getStringIds();
        TypeIdsSection typeIds = dexFile.getTypeIds();
        MixedItemSection typeLists = dexFile.getTypeLists();
        typeIds.intern(this.prototype.getReturnType());
        stringIds.intern(this.shortForm);
        TypeListItem typeListItem = this.parameterTypes;
        if (typeListItem != null) {
            this.parameterTypes = (TypeListItem) typeLists.intern(typeListItem);
        }
    }

    @Override // com.android.dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_PROTO_ID_ITEM;
    }

    @Override // com.android.dx.dex.file.Item
    public int writeSize() {
        return 12;
    }

    @Override // com.android.dx.dex.file.Item
    public void writeTo(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        int iIndexOf = dexFile.getStringIds().indexOf(this.shortForm);
        int iIndexOf2 = dexFile.getTypeIds().indexOf(this.prototype.getReturnType());
        int absoluteOffsetOr0 = OffsettedItem.getAbsoluteOffsetOr0(this.parameterTypes);
        if (annotatedOutput.annotates()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.prototype.getReturnType().toHuman());
            sb2.append(" proto(");
            StdTypeList parameterTypes = this.prototype.getParameterTypes();
            int size = parameterTypes.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (i10 != 0) {
                    sb2.append(", ");
                }
                sb2.append(parameterTypes.getType(i10).toHuman());
            }
            sb2.append(")");
            annotatedOutput.annotate(0, indexString() + ' ' + sb2.toString());
            annotatedOutput.annotate(4, "  shorty_idx:      " + Hex.u4(iIndexOf) + " // " + this.shortForm.toQuoted());
            annotatedOutput.annotate(4, "  return_type_idx: " + Hex.u4(iIndexOf2) + " // " + this.prototype.getReturnType().toHuman());
            StringBuilder sb3 = new StringBuilder();
            sb3.append("  parameters_off:  ");
            sb3.append(Hex.u4(absoluteOffsetOr0));
            annotatedOutput.annotate(4, sb3.toString());
        }
        annotatedOutput.writeInt(iIndexOf);
        annotatedOutput.writeInt(iIndexOf2);
        annotatedOutput.writeInt(absoluteOffsetOr0);
    }
}
