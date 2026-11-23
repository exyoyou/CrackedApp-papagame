package db;

import android.content.Context;
import android.media.SoundPool;
import androidx.annotation.RawRes;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C1156a f90856d = new C1156a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SoundPool f90857a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f90858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f90859c;

    /* JADX INFO: renamed from: db.a$a, reason: collision with other inner class name */
    public static final class C1156a {
        private C1156a() {
        }

        @JvmStatic
        @NotNull
        public final a a() {
            return new a(null);
        }

        public /* synthetic */ C1156a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private a() {
        SoundPool soundPoolBuild = new SoundPool.Builder().build();
        Intrinsics.checkExpressionValueIsNotNull(soundPoolBuild, "SoundPool.Builder().build()");
        this.f90857a = soundPoolBuild;
    }

    @JvmStatic
    @NotNull
    public static final a c() {
        return f90856d.a();
    }

    public final float a() {
        return this.f90859c;
    }

    public final void b(@NotNull Context context, @RawRes int i10) {
        this.f90858b = this.f90857a.load(context, i10, 1);
    }

    public final void d() {
        int i10 = this.f90858b;
        if (i10 != 0) {
            SoundPool soundPool = this.f90857a;
            float f10 = this.f90859c;
            soundPool.play(i10, f10, f10, 1, 0, 1.0f);
        }
    }

    public final void e() {
        this.f90857a.release();
    }

    public final void f(float f10) {
        this.f90859c = Math.min(1.0f, Math.max(f10, 0.0f));
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
