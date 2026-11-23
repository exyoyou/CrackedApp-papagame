package com.xinzhu.overmind.client.stub;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.xinzhu.overmind.client.f;
import com.xinzhu.overmind.entity.ClientConfig;
import sa.s;

/* JADX INFO: loaded from: classes8.dex */
public class StubContentProvider extends ContentProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f89448b = "com.xinzhu.overmind.initprocess";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f89449c = "com.xinzhu.overmind.initprocess.clientconfig";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f89450d = "com.xinzhu.overmind.initprocess.client";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f89451e = "com.xinzhu.overmind.initprocess.pid";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final /* synthetic */ boolean f89452f = false;

    public static class StubContentProviderP0 extends StubContentProvider {
    }

    public static class StubContentProviderP1 extends StubContentProvider {
    }

    public static class StubContentProviderP10 extends StubContentProvider {
    }

    public static class StubContentProviderP11 extends StubContentProvider {
    }

    public static class StubContentProviderP12 extends StubContentProvider {
    }

    public static class StubContentProviderP13 extends StubContentProvider {
    }

    public static class StubContentProviderP14 extends StubContentProvider {
    }

    public static class StubContentProviderP15 extends StubContentProvider {
    }

    public static class StubContentProviderP16 extends StubContentProvider {
    }

    public static class StubContentProviderP17 extends StubContentProvider {
    }

    public static class StubContentProviderP18 extends StubContentProvider {
    }

    public static class StubContentProviderP19 extends StubContentProvider {
    }

    public static class StubContentProviderP2 extends StubContentProvider {
    }

    public static class StubContentProviderP20 extends StubContentProvider {
    }

    public static class StubContentProviderP21 extends StubContentProvider {
    }

    public static class StubContentProviderP22 extends StubContentProvider {
    }

    public static class StubContentProviderP23 extends StubContentProvider {
    }

    public static class StubContentProviderP24 extends StubContentProvider {
    }

    public static class StubContentProviderP25 extends StubContentProvider {
    }

    public static class StubContentProviderP26 extends StubContentProvider {
    }

    public static class StubContentProviderP27 extends StubContentProvider {
    }

    public static class StubContentProviderP28 extends StubContentProvider {
    }

    public static class StubContentProviderP29 extends StubContentProvider {
    }

    public static class StubContentProviderP3 extends StubContentProvider {
    }

    public static class StubContentProviderP30 extends StubContentProvider {
    }

    public static class StubContentProviderP31 extends StubContentProvider {
    }

    public static class StubContentProviderP32 extends StubContentProvider {
    }

    public static class StubContentProviderP33 extends StubContentProvider {
    }

    public static class StubContentProviderP34 extends StubContentProvider {
    }

    public static class StubContentProviderP35 extends StubContentProvider {
    }

    public static class StubContentProviderP36 extends StubContentProvider {
    }

    public static class StubContentProviderP37 extends StubContentProvider {
    }

    public static class StubContentProviderP38 extends StubContentProvider {
    }

    public static class StubContentProviderP39 extends StubContentProvider {
    }

    public static class StubContentProviderP4 extends StubContentProvider {
    }

    public static class StubContentProviderP40 extends StubContentProvider {
    }

    public static class StubContentProviderP41 extends StubContentProvider {
    }

    public static class StubContentProviderP42 extends StubContentProvider {
    }

    public static class StubContentProviderP43 extends StubContentProvider {
    }

    public static class StubContentProviderP44 extends StubContentProvider {
    }

    public static class StubContentProviderP45 extends StubContentProvider {
    }

    public static class StubContentProviderP46 extends StubContentProvider {
    }

    public static class StubContentProviderP47 extends StubContentProvider {
    }

    public static class StubContentProviderP48 extends StubContentProvider {
    }

    public static class StubContentProviderP49 extends StubContentProvider {
    }

    public static class StubContentProviderP5 extends StubContentProvider {
    }

    public static class StubContentProviderP50 extends StubContentProvider {
    }

    public static class StubContentProviderP51 extends StubContentProvider {
    }

    public static class StubContentProviderP52 extends StubContentProvider {
    }

    public static class StubContentProviderP53 extends StubContentProvider {
    }

    public static class StubContentProviderP54 extends StubContentProvider {
    }

    public static class StubContentProviderP55 extends StubContentProvider {
    }

    public static class StubContentProviderP56 extends StubContentProvider {
    }

    public static class StubContentProviderP57 extends StubContentProvider {
    }

    public static class StubContentProviderP58 extends StubContentProvider {
    }

    public static class StubContentProviderP59 extends StubContentProvider {
    }

    public static class StubContentProviderP6 extends StubContentProvider {
    }

    public static class StubContentProviderP60 extends StubContentProvider {
    }

    public static class StubContentProviderP61 extends StubContentProvider {
    }

    public static class StubContentProviderP62 extends StubContentProvider {
    }

    public static class StubContentProviderP63 extends StubContentProvider {
    }

    public static class StubContentProviderP64 extends StubContentProvider {
    }

    public static class StubContentProviderP65 extends StubContentProvider {
    }

    public static class StubContentProviderP66 extends StubContentProvider {
    }

    public static class StubContentProviderP67 extends StubContentProvider {
    }

    public static class StubContentProviderP68 extends StubContentProvider {
    }

    public static class StubContentProviderP69 extends StubContentProvider {
    }

    public static class StubContentProviderP7 extends StubContentProvider {
    }

    public static class StubContentProviderP70 extends StubContentProvider {
    }

    public static class StubContentProviderP71 extends StubContentProvider {
    }

    public static class StubContentProviderP72 extends StubContentProvider {
    }

    public static class StubContentProviderP73 extends StubContentProvider {
    }

    public static class StubContentProviderP74 extends StubContentProvider {
    }

    public static class StubContentProviderP75 extends StubContentProvider {
    }

    public static class StubContentProviderP76 extends StubContentProvider {
    }

    public static class StubContentProviderP77 extends StubContentProvider {
    }

    public static class StubContentProviderP78 extends StubContentProvider {
    }

    public static class StubContentProviderP79 extends StubContentProvider {
    }

    public static class StubContentProviderP8 extends StubContentProvider {
    }

    public static class StubContentProviderP80 extends StubContentProvider {
    }

    public static class StubContentProviderP81 extends StubContentProvider {
    }

    public static class StubContentProviderP82 extends StubContentProvider {
    }

    public static class StubContentProviderP83 extends StubContentProvider {
    }

    public static class StubContentProviderP84 extends StubContentProvider {
    }

    public static class StubContentProviderP85 extends StubContentProvider {
    }

    public static class StubContentProviderP86 extends StubContentProvider {
    }

    public static class StubContentProviderP87 extends StubContentProvider {
    }

    public static class StubContentProviderP88 extends StubContentProvider {
    }

    public static class StubContentProviderP89 extends StubContentProvider {
    }

    public static class StubContentProviderP9 extends StubContentProvider {
    }

    public static class StubContentProviderP90 extends StubContentProvider {
    }

    public static class StubContentProviderP91 extends StubContentProvider {
    }

    public static class StubContentProviderP92 extends StubContentProvider {
    }

    public static class StubContentProviderP93 extends StubContentProvider {
    }

    public static class StubContentProviderP94 extends StubContentProvider {
    }

    public static class StubContentProviderP95 extends StubContentProvider {
    }

    public static class StubContentProviderP96 extends StubContentProvider {
    }

    public static class StubContentProviderP97 extends StubContentProvider {
    }

    public static class StubContentProviderP98 extends StubContentProvider {
    }

    public static class StubContentProviderP99 extends StubContentProvider {
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Bundle call(@NonNull String str, @Nullable String str2, @Nullable Bundle bundle) {
        if (!str.equals(f89448b)) {
            return super.call(str, str2, bundle);
        }
        bundle.setClassLoader(ClientConfig.class.getClassLoader());
        f.getClient().initProcess((ClientConfig) bundle.getParcelable(f89449c));
        Bundle bundle2 = new Bundle();
        s.d(bundle2, f89450d, f.getClient());
        bundle2.putInt(f89451e, Process.myPid());
        return bundle2;
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }
}
