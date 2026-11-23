package external.org.apache.commons.lang3.tuple;

import external.org.apache.commons.lang3.ObjectUtils;
import external.org.apache.commons.lang3.builder.b;
import io.netty.util.internal.StringUtil;
import java.io.Serializable;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public abstract class Pair<L, R> implements Map.Entry<L, R>, Comparable<Pair<L, R>>, Serializable {
    private static final long serialVersionUID = 4954918890077093841L;

    public static <L, R> Pair<L, R> of(L l10, R r10) {
        return new ImmutablePair(l10, r10);
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return ObjectUtils.f(getKey(), entry.getKey()) && ObjectUtils.f(getValue(), entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final L getKey() {
        return getLeft();
    }

    public abstract L getLeft();

    public abstract R getRight();

    @Override // java.util.Map.Entry
    public R getValue() {
        return getRight();
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        return (getKey() == null ? 0 : getKey().hashCode()) ^ (getValue() != null ? getValue().hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('(');
        sb2.append(getLeft());
        sb2.append(StringUtil.COMMA);
        sb2.append(getRight());
        sb2.append(')');
        return sb2.toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(Pair<L, R> pair) {
        return new b().g(getLeft(), pair.getLeft()).g(getRight(), pair.getRight()).C();
    }

    public String toString(String str) {
        return String.format(str, getLeft(), getRight());
    }
}
