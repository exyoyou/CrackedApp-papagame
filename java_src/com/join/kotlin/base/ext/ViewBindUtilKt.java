package com.join.kotlin.base.ext;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import androidx.viewbinding.ViewBinding;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u001a%\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0006\u0010\u0007\u001a7\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007¢\u0006\u0004\b\u0006\u0010\r\u001a9\u0010\u000e\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0013\u0012\u0004\u0012\u0002H\u00010\u0012H\u0002¢\u0006\u0002\u0010\u0014\u001a2\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0016\"\b\b\u0000\u0010\u0001*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0007¨\u0006\u001c"}, d2 = {"inflateBindingWithGeneric", "VB", "Landroidx/viewbinding/ViewBinding;", "Landroidx/appcompat/app/AppCompatActivity;", "layoutInflater", "Landroid/view/LayoutInflater;", "inflateWithGeneric", "(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;", "Landroidx/fragment/app/Fragment;", "parent", "Landroid/view/ViewGroup;", "attachToParent", "", "(Landroidx/fragment/app/Fragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Landroidx/viewbinding/ViewBinding;", "withGenericBindingClass", "any", "", "block", "Lkotlin/Function1;", "Ljava/lang/Class;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Landroidx/viewbinding/ViewBinding;", "generateDataBindingHolder", "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;", "Landroidx/databinding/ViewDataBinding;", "context", "Landroid/content/Context;", "layoutId", "", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ViewBindUtilKt {
    @JvmName(name = "generateDataBindingHolder")
    @NotNull
    public static final <VB extends ViewDataBinding> v2.a<VB> generateDataBindingHolder(@NotNull Context context, int i10, @Nullable ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new v2.a<>(DataBindingUtil.inflate(LayoutInflater.from(context), i10, viewGroup, false));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewBinding inflateBindingWithGeneric$lambda$0(LayoutInflater layoutInflater, Class clazz) throws IllegalAccessException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Object objInvoke = clazz.getMethod("inflate", LayoutInflater.class).invoke(null, layoutInflater);
        Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type VB of com.join.kotlin.base.ext.ViewBindUtilKt.inflateBindingWithGeneric");
        return (ViewBinding) objInvoke;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewBinding inflateBindingWithGeneric$lambda$2(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10, Class clazz) throws IllegalAccessException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Object objInvoke = clazz.getMethod("inflate", LayoutInflater.class, ViewGroup.class, Boolean.TYPE).invoke(null, layoutInflater, viewGroup, Boolean.valueOf(z10));
        Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type VB of com.join.kotlin.base.ext.ViewBindUtilKt.inflateBindingWithGeneric");
        return (ViewBinding) objInvoke;
    }

    @JvmName(name = "inflateWithGeneric")
    @NotNull
    public static final <VB extends ViewBinding> VB inflateWithGeneric(@NotNull AppCompatActivity appCompatActivity, @NotNull final LayoutInflater layoutInflater) {
        Intrinsics.checkNotNullParameter(appCompatActivity, "<this>");
        Intrinsics.checkNotNullParameter(layoutInflater, "layoutInflater");
        ViewDataBinding viewDataBinding = (VB) withGenericBindingClass(appCompatActivity, new Function1() { // from class: com.join.kotlin.base.ext.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ViewBindUtilKt.inflateBindingWithGeneric$lambda$0(layoutInflater, (Class) obj);
            }
        });
        if (viewDataBinding instanceof ViewDataBinding) {
            viewDataBinding.setLifecycleOwner(appCompatActivity);
        }
        return viewDataBinding;
    }

    private static final <VB extends ViewBinding> VB withGenericBindingClass(Object obj, Function1<? super Class<VB>, ? extends VB> function1) throws Throwable {
        Type genericSuperclass = obj.getClass().getGenericSuperclass();
        for (Class<? super Object> superclass = obj.getClass().getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
            if (genericSuperclass instanceof ParameterizedType) {
                try {
                    Type type = ((ParameterizedType) genericSuperclass).getActualTypeArguments()[1];
                    Intrinsics.checkNotNull(type, "null cannot be cast to non-null type java.lang.Class<VB of com.join.kotlin.base.ext.ViewBindUtilKt.withGenericBindingClass>");
                    return function1.invoke((Class) type);
                } catch (ClassCastException | NoSuchMethodException unused) {
                    continue;
                } catch (InvocationTargetException e10) {
                    throw e10.getTargetException();
                }
            }
            genericSuperclass = superclass.getGenericSuperclass();
        }
        throw new IllegalArgumentException("There is no generic of ViewBinding.");
    }

    @JvmName(name = "inflateWithGeneric")
    @NotNull
    public static final <VB extends ViewBinding> VB inflateWithGeneric(@NotNull Fragment fragment, @NotNull final LayoutInflater layoutInflater, @Nullable final ViewGroup viewGroup, final boolean z10) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(layoutInflater, "layoutInflater");
        ViewDataBinding viewDataBinding = (VB) withGenericBindingClass(fragment, new Function1() { // from class: com.join.kotlin.base.ext.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ViewBindUtilKt.inflateBindingWithGeneric$lambda$2(layoutInflater, viewGroup, z10, (Class) obj);
            }
        });
        if (viewDataBinding instanceof ViewDataBinding) {
            viewDataBinding.setLifecycleOwner(fragment.getViewLifecycleOwner());
        }
        return viewDataBinding;
    }
}
