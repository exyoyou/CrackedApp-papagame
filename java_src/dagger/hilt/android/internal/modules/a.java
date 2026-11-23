package dagger.hilt.android.internal.modules;

import android.app.Activity;
import android.content.Context;
import androidx.fragment.app.FragmentActivity;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import dagger.hilt.InstallIn;
import dagger.hilt.android.qualifiers.ActivityContext;

/* JADX INFO: loaded from: classes8.dex */
@Module
@InstallIn({eb.a.class})
abstract class a {
    private a() {
    }

    @Provides
    @Reusable
    static FragmentActivity b(Activity activity) {
        try {
            return (FragmentActivity) activity;
        } catch (ClassCastException e10) {
            throw new IllegalStateException("Expected activity to be a FragmentActivity: " + activity, e10);
        }
    }

    @Binds
    @ActivityContext
    abstract Context a(Activity activity);
}
