package m.framework.network;

/* JADX INFO: loaded from: classes.dex */
public class KVPair<T> {
    public final String name;
    public final T value;

    public KVPair(String str, T t10) {
        this.name = str;
        this.value = t10;
    }

    public String toString() {
        return String.valueOf(this.name) + " = " + this.value;
    }
}
