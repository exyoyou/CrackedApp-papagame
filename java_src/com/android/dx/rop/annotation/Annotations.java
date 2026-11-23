package com.android.dx.rop.annotation;

import com.android.dx.rop.cst.CstType;
import com.android.dx.util.MutabilityControl;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes7.dex */
public final class Annotations extends MutabilityControl implements Comparable<Annotations> {
    public static final Annotations EMPTY;
    private final TreeMap<CstType, Annotation> annotations = new TreeMap<>();

    static {
        Annotations annotations = new Annotations();
        EMPTY = annotations;
        annotations.setImmutable();
    }

    public static Annotations combine(Annotations annotations, Annotations annotations2) {
        Annotations annotations3 = new Annotations();
        annotations3.addAll(annotations);
        annotations3.addAll(annotations2);
        annotations3.setImmutable();
        return annotations3;
    }

    public void add(Annotation annotation) {
        throwIfImmutable();
        if (annotation == null) {
            throw new NullPointerException("annotation == null");
        }
        CstType type = annotation.getType();
        if (!this.annotations.containsKey(type)) {
            this.annotations.put(type, annotation);
            return;
        }
        throw new IllegalArgumentException("duplicate type: " + type.toHuman());
    }

    public void addAll(Annotations annotations) {
        throwIfImmutable();
        if (annotations == null) {
            throw new NullPointerException("toAdd == null");
        }
        Iterator<Annotation> it2 = annotations.annotations.values().iterator();
        while (it2.hasNext()) {
            add(it2.next());
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof Annotations) {
            return this.annotations.equals(((Annotations) obj).annotations);
        }
        return false;
    }

    public Collection<Annotation> getAnnotations() {
        return Collections.unmodifiableCollection(this.annotations.values());
    }

    public int hashCode() {
        return this.annotations.hashCode();
    }

    public int size() {
        return this.annotations.size();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("annotations{");
        boolean z10 = true;
        for (Annotation annotation : this.annotations.values()) {
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            sb2.append(annotation.toHuman());
        }
        sb2.append("}");
        return sb2.toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(Annotations annotations) {
        Iterator<Annotation> it2 = this.annotations.values().iterator();
        Iterator<Annotation> it3 = annotations.annotations.values().iterator();
        while (it2.hasNext() && it3.hasNext()) {
            int iCompareTo = it2.next().compareTo(it3.next());
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        if (it2.hasNext()) {
            return 1;
        }
        return it3.hasNext() ? -1 : 0;
    }

    public static Annotations combine(Annotations annotations, Annotation annotation) {
        Annotations annotations2 = new Annotations();
        annotations2.addAll(annotations);
        annotations2.add(annotation);
        annotations2.setImmutable();
        return annotations2;
    }
}
