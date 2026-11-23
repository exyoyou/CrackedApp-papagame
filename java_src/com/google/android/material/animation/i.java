package com.google.android.material.animation;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Property;
import androidx.annotation.AnimatorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleableRes;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f29380c = "MotionSpec";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SimpleArrayMap<String, j> f29381a = new SimpleArrayMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SimpleArrayMap<String, PropertyValuesHolder[]> f29382b = new SimpleArrayMap<>();

    private static void a(@NonNull i iVar, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            iVar.l(objectAnimator.getPropertyName(), objectAnimator.getValues());
            iVar.m(objectAnimator.getPropertyName(), j.b(objectAnimator));
        } else {
            throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
        }
    }

    @NonNull
    private PropertyValuesHolder[] b(@NonNull PropertyValuesHolder[] propertyValuesHolderArr) {
        PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[propertyValuesHolderArr.length];
        for (int i10 = 0; i10 < propertyValuesHolderArr.length; i10++) {
            propertyValuesHolderArr2[i10] = propertyValuesHolderArr[i10].clone();
        }
        return propertyValuesHolderArr2;
    }

    @Nullable
    public static i c(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i10) {
        int resourceId;
        if (!typedArray.hasValue(i10) || (resourceId = typedArray.getResourceId(i10, 0)) == 0) {
            return null;
        }
        return d(context, resourceId);
    }

    @Nullable
    public static i d(@NonNull Context context, @AnimatorRes int i10) {
        try {
            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i10);
            if (animatorLoadAnimator instanceof AnimatorSet) {
                return e(((AnimatorSet) animatorLoadAnimator).getChildAnimations());
            }
            if (animatorLoadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(animatorLoadAnimator);
            return e(arrayList);
        } catch (Exception unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Can't load animation resource ID #0x");
            sb2.append(Integer.toHexString(i10));
            return null;
        }
    }

    @NonNull
    private static i e(@NonNull List<Animator> list) {
        i iVar = new i();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            a(iVar, list.get(i10));
        }
        return iVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof i) {
            return this.f29381a.equals(((i) obj).f29381a);
        }
        return false;
    }

    @NonNull
    public <T> ObjectAnimator f(@NonNull String str, @NonNull T t10, @NonNull Property<T, ?> property) {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(t10, g(str));
        objectAnimatorOfPropertyValuesHolder.setProperty(property);
        h(str).a(objectAnimatorOfPropertyValuesHolder);
        return objectAnimatorOfPropertyValuesHolder;
    }

    @NonNull
    public PropertyValuesHolder[] g(String str) {
        if (j(str)) {
            return b(this.f29382b.get(str));
        }
        throw new IllegalArgumentException();
    }

    public j h(String str) {
        if (k(str)) {
            return this.f29381a.get(str);
        }
        throw new IllegalArgumentException();
    }

    public int hashCode() {
        return this.f29381a.hashCode();
    }

    public long i() {
        int size = this.f29381a.size();
        long jMax = 0;
        for (int i10 = 0; i10 < size; i10++) {
            j jVarValueAt = this.f29381a.valueAt(i10);
            jMax = Math.max(jMax, jVarValueAt.c() + jVarValueAt.d());
        }
        return jMax;
    }

    public boolean j(String str) {
        return this.f29382b.get(str) != null;
    }

    public boolean k(String str) {
        return this.f29381a.get(str) != null;
    }

    public void l(String str, PropertyValuesHolder[] propertyValuesHolderArr) {
        this.f29382b.put(str, propertyValuesHolderArr);
    }

    public void m(String str, @Nullable j jVar) {
        this.f29381a.put(str, jVar);
    }

    @NonNull
    public String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f29381a + "}\n";
    }
}
