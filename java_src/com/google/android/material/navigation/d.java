package com.google.android.material.navigation;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class d extends MenuBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final Class<?> f31175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f31176b;

    public d(@NonNull Context context, @NonNull Class<?> cls, int i10) {
        super(context);
        this.f31175a = cls;
        this.f31176b = i10;
    }

    public int a() {
        return this.f31176b;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    @NonNull
    protected MenuItem addInternal(int i10, int i11, int i12, @NonNull CharSequence charSequence) {
        if (size() + 1 <= this.f31176b) {
            stopDispatchingItemsChanged();
            MenuItem menuItemAddInternal = super.addInternal(i10, i11, i12, charSequence);
            if (menuItemAddInternal instanceof MenuItemImpl) {
                ((MenuItemImpl) menuItemAddInternal).setExclusiveCheckable(true);
            }
            startDispatchingItemsChanged();
            return menuItemAddInternal;
        }
        String simpleName = this.f31175a.getSimpleName();
        throw new IllegalArgumentException("Maximum number of items supported by " + simpleName + " is " + this.f31176b + ". Limit can be checked with " + simpleName + "#getMaxItemCount()");
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    @NonNull
    public SubMenu addSubMenu(int i10, int i11, int i12, @NonNull CharSequence charSequence) {
        throw new UnsupportedOperationException(this.f31175a.getSimpleName() + " does not support submenus");
    }
}
