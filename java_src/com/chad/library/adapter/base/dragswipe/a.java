package com.chad.library.adapter.base.dragswipe;

import android.graphics.Canvas;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class a {

    /* JADX INFO: renamed from: com.chad.library.adapter.base.dragswipe.a$a, reason: collision with other inner class name */
    public static final class C0516a implements Function2<RecyclerView.ViewHolder, Integer, Unit> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final C0516a f23606b = new C0516a();

        public final void a(RecyclerView.ViewHolder viewHolder, int i10) {
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(RecyclerView.ViewHolder viewHolder, Integer num) {
            a(viewHolder, num.intValue());
            return Unit.INSTANCE;
        }
    }

    public static final class b implements Function4<RecyclerView.ViewHolder, Integer, RecyclerView.ViewHolder, Integer, Unit> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b f23607b = new b();

        public final void a(RecyclerView.ViewHolder viewHolder, int i10, RecyclerView.ViewHolder viewHolder2, int i11) {
        }

        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(RecyclerView.ViewHolder viewHolder, Integer num, RecyclerView.ViewHolder viewHolder2, Integer num2) {
            a(viewHolder, num.intValue(), viewHolder2, num2.intValue());
            return Unit.INSTANCE;
        }
    }

    public static final class c implements Function2<RecyclerView.ViewHolder, Integer, Unit> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final c f23608b = new c();

        public final void a(RecyclerView.ViewHolder viewHolder, int i10) {
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(RecyclerView.ViewHolder viewHolder, Integer num) {
            a(viewHolder, num.intValue());
            return Unit.INSTANCE;
        }
    }

    public static final class d implements p2.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function2<RecyclerView.ViewHolder, Integer, Unit> f23609a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Function4<RecyclerView.ViewHolder, Integer, RecyclerView.ViewHolder, Integer, Unit> f23610b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Function2<RecyclerView.ViewHolder, Integer, Unit> f23611c;

        /* JADX WARN: Multi-variable type inference failed */
        public d(Function2<? super RecyclerView.ViewHolder, ? super Integer, Unit> function2, Function4<? super RecyclerView.ViewHolder, ? super Integer, ? super RecyclerView.ViewHolder, ? super Integer, Unit> function4, Function2<? super RecyclerView.ViewHolder, ? super Integer, Unit> function3) {
            this.f23609a = function2;
            this.f23610b = function4;
            this.f23611c = function3;
        }

        @Override // p2.b
        public void a(RecyclerView.ViewHolder viewHolder, int i10) {
            this.f23611c.invoke(viewHolder, Integer.valueOf(i10));
        }

        @Override // p2.b
        public void b(RecyclerView.ViewHolder viewHolder, int i10, RecyclerView.ViewHolder viewHolder2, int i11) {
            this.f23610b.invoke(viewHolder, Integer.valueOf(i10), viewHolder2, Integer.valueOf(i11));
        }

        @Override // p2.b
        public void c(RecyclerView.ViewHolder viewHolder, int i10) {
            this.f23609a.invoke(viewHolder, Integer.valueOf(i10));
        }
    }

    public static final class e implements Function2<RecyclerView.ViewHolder, Integer, Unit> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final e f23612b = new e();

        public final void a(RecyclerView.ViewHolder viewHolder, int i10) {
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(RecyclerView.ViewHolder viewHolder, Integer num) {
            a(viewHolder, num.intValue());
            return Unit.INSTANCE;
        }
    }

    public static final class f implements Function5<Canvas, RecyclerView.ViewHolder, Float, Float, Boolean, Unit> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final f f23613b = new f();

        public final void a(Canvas canvas, RecyclerView.ViewHolder viewHolder, float f10, float f11, boolean z10) {
            Intrinsics.checkNotNullParameter(canvas, "<unused var>");
        }

        @Override // kotlin.jvm.functions.Function5
        public /* bridge */ /* synthetic */ Unit invoke(Canvas canvas, RecyclerView.ViewHolder viewHolder, Float f10, Float f11, Boolean bool) {
            a(canvas, viewHolder, f10.floatValue(), f11.floatValue(), bool.booleanValue());
            return Unit.INSTANCE;
        }
    }

    public static final class g implements Function3<RecyclerView.ViewHolder, Integer, Integer, Unit> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final g f23614b = new g();

        public final void a(RecyclerView.ViewHolder viewHolder, int i10, int i11) {
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(RecyclerView.ViewHolder viewHolder, Integer num, Integer num2) {
            a(viewHolder, num.intValue(), num2.intValue());
            return Unit.INSTANCE;
        }
    }

    public static final class h implements Function2<RecyclerView.ViewHolder, Integer, Unit> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final h f23615b = new h();

        public final void a(RecyclerView.ViewHolder viewHolder, int i10) {
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(RecyclerView.ViewHolder viewHolder, Integer num) {
            a(viewHolder, num.intValue());
            return Unit.INSTANCE;
        }
    }

    public static final class i implements p2.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function2<RecyclerView.ViewHolder, Integer, Unit> f23616a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Function2<RecyclerView.ViewHolder, Integer, Unit> f23617b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Function3<RecyclerView.ViewHolder, Integer, Integer, Unit> f23618c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Function5<Canvas, RecyclerView.ViewHolder, Float, Float, Boolean, Unit> f23619d;

        /* JADX WARN: Multi-variable type inference failed */
        public i(Function2<? super RecyclerView.ViewHolder, ? super Integer, Unit> function2, Function2<? super RecyclerView.ViewHolder, ? super Integer, Unit> function3, Function3<? super RecyclerView.ViewHolder, ? super Integer, ? super Integer, Unit> function4, Function5<? super Canvas, ? super RecyclerView.ViewHolder, ? super Float, ? super Float, ? super Boolean, Unit> function5) {
            this.f23616a = function2;
            this.f23617b = function3;
            this.f23618c = function4;
            this.f23619d = function5;
        }

        @Override // p2.c
        public void a(Canvas canvas, RecyclerView.ViewHolder viewHolder, float f10, float f11, boolean z10) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            this.f23619d.invoke(canvas, viewHolder, Float.valueOf(f10), Float.valueOf(f11), Boolean.valueOf(z10));
        }

        @Override // p2.c
        public void b(RecyclerView.ViewHolder viewHolder, int i10) {
            this.f23616a.invoke(viewHolder, Integer.valueOf(i10));
        }

        @Override // p2.c
        public void c(RecyclerView.ViewHolder viewHolder, int i10, int i11) {
            this.f23618c.invoke(viewHolder, Integer.valueOf(i10), Integer.valueOf(i11));
        }

        @Override // p2.c
        public void d(RecyclerView.ViewHolder viewHolder, int i10) {
            this.f23617b.invoke(viewHolder, Integer.valueOf(i10));
        }
    }

    @NotNull
    public static final com.chad.library.adapter.base.dragswipe.b a(@NotNull com.chad.library.adapter.base.dragswipe.b bVar, @NotNull Function2<? super RecyclerView.ViewHolder, ? super Integer, Unit> onItemDragStart, @NotNull Function4<? super RecyclerView.ViewHolder, ? super Integer, ? super RecyclerView.ViewHolder, ? super Integer, Unit> onItemDragMoving, @NotNull Function2<? super RecyclerView.ViewHolder, ? super Integer, Unit> onItemDragEnd) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        Intrinsics.checkNotNullParameter(onItemDragStart, "onItemDragStart");
        Intrinsics.checkNotNullParameter(onItemDragMoving, "onItemDragMoving");
        Intrinsics.checkNotNullParameter(onItemDragEnd, "onItemDragEnd");
        bVar.k(new d(onItemDragStart, onItemDragMoving, onItemDragEnd));
        return bVar;
    }

    public static /* synthetic */ com.chad.library.adapter.base.dragswipe.b b(com.chad.library.adapter.base.dragswipe.b bVar, Function2 onItemDragStart, Function4 onItemDragMoving, Function2 onItemDragEnd, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            onItemDragStart = C0516a.f23606b;
        }
        if ((i10 & 2) != 0) {
            onItemDragMoving = b.f23607b;
        }
        if ((i10 & 4) != 0) {
            onItemDragEnd = c.f23608b;
        }
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        Intrinsics.checkNotNullParameter(onItemDragStart, "onItemDragStart");
        Intrinsics.checkNotNullParameter(onItemDragMoving, "onItemDragMoving");
        Intrinsics.checkNotNullParameter(onItemDragEnd, "onItemDragEnd");
        bVar.k(new d(onItemDragStart, onItemDragMoving, onItemDragEnd));
        return bVar;
    }

    @NotNull
    public static final com.chad.library.adapter.base.dragswipe.b c(@NotNull com.chad.library.adapter.base.dragswipe.b bVar, @NotNull Function2<? super RecyclerView.ViewHolder, ? super Integer, Unit> onItemSwipeStart, @NotNull Function5<? super Canvas, ? super RecyclerView.ViewHolder, ? super Float, ? super Float, ? super Boolean, Unit> onItemSwipeMoving, @NotNull Function3<? super RecyclerView.ViewHolder, ? super Integer, ? super Integer, Unit> onItemSwiped, @NotNull Function2<? super RecyclerView.ViewHolder, ? super Integer, Unit> onItemSwipeEnd) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        Intrinsics.checkNotNullParameter(onItemSwipeStart, "onItemSwipeStart");
        Intrinsics.checkNotNullParameter(onItemSwipeMoving, "onItemSwipeMoving");
        Intrinsics.checkNotNullParameter(onItemSwiped, "onItemSwiped");
        Intrinsics.checkNotNullParameter(onItemSwipeEnd, "onItemSwipeEnd");
        bVar.l(new i(onItemSwipeStart, onItemSwipeEnd, onItemSwiped, onItemSwipeMoving));
        return bVar;
    }

    public static /* synthetic */ com.chad.library.adapter.base.dragswipe.b d(com.chad.library.adapter.base.dragswipe.b bVar, Function2 onItemSwipeStart, Function5 onItemSwipeMoving, Function3 onItemSwiped, Function2 onItemSwipeEnd, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            onItemSwipeStart = e.f23612b;
        }
        if ((i10 & 2) != 0) {
            onItemSwipeMoving = f.f23613b;
        }
        if ((i10 & 4) != 0) {
            onItemSwiped = g.f23614b;
        }
        if ((i10 & 8) != 0) {
            onItemSwipeEnd = h.f23615b;
        }
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        Intrinsics.checkNotNullParameter(onItemSwipeStart, "onItemSwipeStart");
        Intrinsics.checkNotNullParameter(onItemSwipeMoving, "onItemSwipeMoving");
        Intrinsics.checkNotNullParameter(onItemSwiped, "onItemSwiped");
        Intrinsics.checkNotNullParameter(onItemSwipeEnd, "onItemSwipeEnd");
        bVar.l(new i(onItemSwipeStart, onItemSwipeEnd, onItemSwiped, onItemSwipeMoving));
        return bVar;
    }
}
