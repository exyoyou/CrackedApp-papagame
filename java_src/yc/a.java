package yc;

import android.os.Bundle;
import android.os.Parcelable;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private a() {
    }

    public static <T extends Parcelable> T[] a(Bundle bundle, String str, Class<T[]> cls) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if (parcelableArray == null) {
            return null;
        }
        Object objNewInstance = Array.newInstance(cls.getComponentType(), parcelableArray.length);
        System.arraycopy(parcelableArray, 0, objNewInstance, 0, parcelableArray.length);
        return (T[]) ((Parcelable[]) objNewInstance);
    }
}
