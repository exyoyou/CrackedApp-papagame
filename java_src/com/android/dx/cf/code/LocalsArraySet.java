package com.android.dx.cf.code;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.util.Hex;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class LocalsArraySet extends LocalsArray {
    private final OneLocalsArray primary;
    private final ArrayList<LocalsArray> secondaries;

    public LocalsArraySet(int i10) {
        super(i10 != 0);
        this.primary = new OneLocalsArray(i10);
        this.secondaries = new ArrayList<>();
    }

    private LocalsArray getSecondaryForLabel(int i10) {
        if (i10 >= this.secondaries.size()) {
            return null;
        }
        return this.secondaries.get(i10);
    }

    private LocalsArraySet mergeWithOne(OneLocalsArray oneLocalsArray) {
        LocalsArray localsArrayMerge;
        OneLocalsArray oneLocalsArrayMerge = this.primary.merge(oneLocalsArray.getPrimary());
        ArrayList arrayList = new ArrayList(this.secondaries.size());
        int size = this.secondaries.size();
        boolean z10 = false;
        for (int i10 = 0; i10 < size; i10++) {
            LocalsArray localsArray = this.secondaries.get(i10);
            if (localsArray != null) {
                try {
                    localsArrayMerge = localsArray.merge(oneLocalsArray);
                } catch (SimException e10) {
                    e10.addContext("Merging one locals against caller block " + Hex.u2(i10));
                    localsArrayMerge = null;
                }
            } else {
                localsArrayMerge = null;
            }
            z10 = z10 || localsArray != localsArrayMerge;
            arrayList.add(localsArrayMerge);
        }
        return (this.primary != oneLocalsArrayMerge || z10) ? new LocalsArraySet(oneLocalsArrayMerge, arrayList) : this;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0046  */
    private LocalsArraySet mergeWithSet(LocalsArraySet localsArraySet) {
        OneLocalsArray oneLocalsArrayMerge = this.primary.merge(localsArraySet.getPrimary());
        int size = this.secondaries.size();
        int size2 = localsArraySet.secondaries.size();
        int iMax = Math.max(size, size2);
        ArrayList arrayList = new ArrayList(iMax);
        int i10 = 0;
        boolean z10 = false;
        while (i10 < iMax) {
            LocalsArray localsArrayMerge = null;
            LocalsArray localsArray = i10 < size ? this.secondaries.get(i10) : null;
            LocalsArray localsArray2 = i10 < size2 ? localsArraySet.secondaries.get(i10) : null;
            if (localsArray == localsArray2) {
                localsArrayMerge = localsArray;
            } else if (localsArray == null) {
                localsArrayMerge = localsArray2;
            } else if (localsArray2 == null) {
                localsArrayMerge = localsArray;
            } else {
                try {
                    localsArrayMerge = localsArray.merge(localsArray2);
                } catch (SimException e10) {
                    e10.addContext("Merging locals set for caller block " + Hex.u2(i10));
                }
            }
            z10 = z10 || localsArray != localsArrayMerge;
            arrayList.add(localsArrayMerge);
            i10++;
        }
        return (this.primary != oneLocalsArrayMerge || z10) ? new LocalsArraySet(oneLocalsArrayMerge, arrayList) : this;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void annotate(ExceptionWithContext exceptionWithContext) {
        exceptionWithContext.addContext("(locals array set; primary)");
        this.primary.annotate(exceptionWithContext);
        int size = this.secondaries.size();
        for (int i10 = 0; i10 < size; i10++) {
            LocalsArray localsArray = this.secondaries.get(i10);
            if (localsArray != null) {
                exceptionWithContext.addContext("(locals array set: primary for caller " + Hex.u2(i10) + ')');
                localsArray.getPrimary().annotate(exceptionWithContext);
            }
        }
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public LocalsArray copy() {
        return new LocalsArraySet(this);
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public TypeBearer get(int i10) {
        return this.primary.get(i10);
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public TypeBearer getCategory1(int i10) {
        return this.primary.getCategory1(i10);
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public TypeBearer getCategory2(int i10) {
        return this.primary.getCategory2(i10);
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public int getMaxLocals() {
        return this.primary.getMaxLocals();
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public TypeBearer getOrNull(int i10) {
        return this.primary.getOrNull(i10);
    }

    @Override // com.android.dx.cf.code.LocalsArray
    protected OneLocalsArray getPrimary() {
        return this.primary;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void invalidate(int i10) {
        throwIfImmutable();
        this.primary.invalidate(i10);
        for (LocalsArray localsArray : this.secondaries) {
            if (localsArray != null) {
                localsArray.invalidate(i10);
            }
        }
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void makeInitialized(Type type) {
        if (this.primary.getMaxLocals() == 0) {
            return;
        }
        throwIfImmutable();
        this.primary.makeInitialized(type);
        for (LocalsArray localsArray : this.secondaries) {
            if (localsArray != null) {
                localsArray.makeInitialized(type);
            }
        }
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public LocalsArraySet mergeWithSubroutineCaller(LocalsArray localsArray, int i10) {
        LocalsArray localsArray2;
        LocalsArray secondaryForLabel = getSecondaryForLabel(i10);
        OneLocalsArray oneLocalsArrayMerge = this.primary.merge(localsArray.getPrimary());
        if (secondaryForLabel == localsArray) {
            localsArray = secondaryForLabel;
        } else if (secondaryForLabel != null) {
            localsArray = secondaryForLabel.merge(localsArray);
        }
        if (localsArray == secondaryForLabel && oneLocalsArrayMerge == this.primary) {
            return this;
        }
        int size = this.secondaries.size();
        int iMax = Math.max(i10 + 1, size);
        ArrayList arrayList = new ArrayList(iMax);
        int i11 = 0;
        OneLocalsArray primary = null;
        while (i11 < iMax) {
            if (i11 == i10) {
                localsArray2 = localsArray;
            } else {
                localsArray2 = i11 < size ? this.secondaries.get(i11) : null;
            }
            if (localsArray2 != null) {
                primary = primary == null ? localsArray2.getPrimary() : primary.merge(localsArray2.getPrimary());
            }
            arrayList.add(localsArray2);
            i11++;
        }
        LocalsArraySet localsArraySet = new LocalsArraySet(primary, arrayList);
        localsArraySet.setImmutable();
        return localsArraySet;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void set(int i10, TypeBearer typeBearer) {
        throwIfImmutable();
        this.primary.set(i10, typeBearer);
        for (LocalsArray localsArray : this.secondaries) {
            if (localsArray != null) {
                localsArray.set(i10, typeBearer);
            }
        }
    }

    @Override // com.android.dx.util.MutabilityControl
    public void setImmutable() {
        this.primary.setImmutable();
        for (LocalsArray localsArray : this.secondaries) {
            if (localsArray != null) {
                localsArray.setImmutable();
            }
        }
        super.setImmutable();
    }

    public LocalsArray subArrayForLabel(int i10) {
        return getSecondaryForLabel(i10);
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(locals array set; primary)\n");
        sb2.append(getPrimary().toHuman());
        sb2.append('\n');
        int size = this.secondaries.size();
        for (int i10 = 0; i10 < size; i10++) {
            LocalsArray localsArray = this.secondaries.get(i10);
            if (localsArray != null) {
                sb2.append("(locals array set: primary for caller " + Hex.u2(i10) + ")\n");
                sb2.append(localsArray.getPrimary().toHuman());
                sb2.append('\n');
            }
        }
        return sb2.toString();
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public LocalsArraySet merge(LocalsArray localsArray) {
        try {
            LocalsArraySet localsArraySetMergeWithSet = localsArray instanceof LocalsArraySet ? mergeWithSet((LocalsArraySet) localsArray) : mergeWithOne((OneLocalsArray) localsArray);
            localsArraySetMergeWithSet.setImmutable();
            return localsArraySetMergeWithSet;
        } catch (SimException e10) {
            e10.addContext("underlay locals:");
            annotate(e10);
            e10.addContext("overlay locals:");
            localsArray.annotate(e10);
            throw e10;
        }
    }

    public LocalsArraySet(OneLocalsArray oneLocalsArray, ArrayList<LocalsArray> arrayList) {
        super(oneLocalsArray.getMaxLocals() > 0);
        this.primary = oneLocalsArray;
        this.secondaries = arrayList;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void set(RegisterSpec registerSpec) {
        set(registerSpec.getReg(), registerSpec);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private LocalsArraySet(LocalsArraySet localsArraySet) {
        super(localsArraySet.getMaxLocals() > 0);
        this.primary = localsArraySet.primary.copy();
        this.secondaries = new ArrayList<>(localsArraySet.secondaries.size());
        int size = localsArraySet.secondaries.size();
        for (int i10 = 0; i10 < size; i10++) {
            LocalsArray localsArray = localsArraySet.secondaries.get(i10);
            if (localsArray == null) {
                this.secondaries.add(null);
            } else {
                this.secondaries.add(localsArray.copy());
            }
        }
    }
}
