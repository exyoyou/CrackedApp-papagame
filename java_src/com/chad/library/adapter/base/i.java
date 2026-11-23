package com.chad.library.adapter.base;

import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@SourceDebugExtension({"SMAP\nQuickAdapterHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuickAdapterHelper.kt\ncom/chad/library/adapter/base/QuickAdapterHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,337:1\n1#2:338\n1869#3,2:339\n1869#3,2:341\n*S KotlinDebug\n*F\n+ 1 QuickAdapterHelper.kt\ncom/chad/library/adapter/base/QuickAdapterHelper\n*L\n155#1:339,2\n219#1:341,2\n*E\n"})
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final BaseQuickAdapter<?, ?> f23638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final s2.c<?> f23639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final t2.g<?> f23640c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private final ArrayList<BaseQuickAdapter<?, ?>> f23641d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final ArrayList<BaseQuickAdapter<?, ?>> f23642e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final ConcatAdapter f23643f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private BaseQuickAdapter.f f23644g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private BaseQuickAdapter.f f23645h;

    public static final class a implements BaseQuickAdapter.f {
        a() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.f
        public void onViewAttachedToWindow(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            i.this.l().h(holder.getBindingAdapterPosition());
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.f
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
        }
    }

    public static final class b implements BaseQuickAdapter.f {
        b() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.f
        public void onViewAttachedToWindow(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            t2.g<?> gVarN = i.this.n();
            RecyclerView.Adapter<? extends RecyclerView.ViewHolder> bindingAdapter = holder.getBindingAdapter();
            gVarN.m(bindingAdapter != null ? bindingAdapter.getItemCount() : 0, holder.getBindingAdapterPosition());
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.f
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NotNull
        private final BaseQuickAdapter<?, ?> f23648a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        private s2.c<?> f23649b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        private t2.g<?> f23650c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @NotNull
        private ConcatAdapter.Config f23651d;

        public c(@NotNull BaseQuickAdapter<?, ?> contentAdapter) {
            Intrinsics.checkNotNullParameter(contentAdapter, "contentAdapter");
            this.f23648a = contentAdapter;
            ConcatAdapter.Config DEFAULT = ConcatAdapter.Config.DEFAULT;
            Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
            this.f23651d = DEFAULT;
        }

        @NotNull
        public final i a() {
            return new i(this.f23648a, this.f23649b, this.f23650c, this.f23651d, null);
        }

        @NotNull
        public final c b(@NotNull ConcatAdapter.Config config) {
            Intrinsics.checkNotNullParameter(config, "config");
            this.f23651d = config;
            return this;
        }

        @NotNull
        public final c c(@Nullable s2.c.a aVar) {
            s2.a aVar2 = new s2.a();
            aVar2.p(aVar);
            return d(aVar2);
        }

        @NotNull
        public final c d(@Nullable s2.c<?> cVar) {
            this.f23649b = cVar;
            return this;
        }

        @NotNull
        public final c e(@Nullable t2.g.a aVar) {
            t2.c cVar = new t2.c(false, 1, null);
            cVar.y(aVar);
            return f(cVar);
        }

        @NotNull
        public final c f(@Nullable t2.g<?> gVar) {
            this.f23650c = gVar;
            return this;
        }
    }

    public /* synthetic */ i(BaseQuickAdapter baseQuickAdapter, s2.c cVar, t2.g gVar, ConcatAdapter.Config config, DefaultConstructorMarker defaultConstructorMarker) {
        this(baseQuickAdapter, cVar, gVar, config);
    }

    @NotNull
    public final i a(int i10, @NotNull BaseQuickAdapter<?, ?> adapter) {
        int size;
        int size2;
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        if (i10 < 0 || i10 > this.f23642e.size()) {
            throw new IndexOutOfBoundsException("Index must be between 0 and " + this.f23642e.size() + ". Given:" + i10);
        }
        if (i10 == this.f23642e.size()) {
            b(adapter);
        } else {
            if (this.f23640c == null) {
                size = this.f23643f.getAdapters().size();
                size2 = this.f23642e.size();
            } else {
                size = this.f23643f.getAdapters().size() - 1;
                size2 = this.f23642e.size();
            }
            this.f23643f.addAdapter((size - size2) + i10, adapter);
            this.f23642e.add(adapter);
        }
        return this;
    }

    @NotNull
    public final i b(@NotNull BaseQuickAdapter<?, ?> adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        BaseQuickAdapter.f fVar = this.f23645h;
        if (fVar != null) {
            if (this.f23642e.isEmpty()) {
                this.f23638a.removeOnViewAttachStateChangeListener(fVar);
            } else {
                ((BaseQuickAdapter) CollectionsKt___CollectionsKt.last((List) this.f23642e)).removeOnViewAttachStateChangeListener(fVar);
            }
            adapter.addOnViewAttachStateChangeListener(fVar);
        }
        if (this.f23640c == null) {
            this.f23643f.addAdapter(adapter);
        } else {
            ConcatAdapter concatAdapter = this.f23643f;
            concatAdapter.addAdapter(concatAdapter.getAdapters().size() - 1, adapter);
        }
        this.f23642e.add(adapter);
        return this;
    }

    @NotNull
    public final i c(int i10, @NotNull BaseQuickAdapter<?, ?> adapter) {
        BaseQuickAdapter.f fVar;
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        if (i10 < 0 || i10 > this.f23641d.size()) {
            throw new IndexOutOfBoundsException("Index must be between 0 and " + this.f23641d.size() + ". Given:" + i10);
        }
        if (i10 == 0 && (fVar = this.f23644g) != null) {
            if (this.f23641d.isEmpty()) {
                this.f23638a.removeOnViewAttachStateChangeListener(fVar);
            } else {
                ((BaseQuickAdapter) CollectionsKt___CollectionsKt.first((List) this.f23641d)).removeOnViewAttachStateChangeListener(fVar);
            }
            adapter.addOnViewAttachStateChangeListener(fVar);
        }
        if (this.f23639b != null) {
            i10++;
        }
        this.f23643f.addAdapter(i10, adapter);
        this.f23641d.add(adapter);
        return this;
    }

    @NotNull
    public final i d(@NotNull BaseQuickAdapter<?, ?> adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        c(this.f23641d.size(), adapter);
        return this;
    }

    @NotNull
    public final i e() {
        Iterator<T> it2 = this.f23642e.iterator();
        while (it2.hasNext()) {
            BaseQuickAdapter baseQuickAdapter = (BaseQuickAdapter) it2.next();
            this.f23643f.removeAdapter(baseQuickAdapter);
            BaseQuickAdapter.f fVar = this.f23645h;
            if (fVar != null) {
                baseQuickAdapter.removeOnViewAttachStateChangeListener(fVar);
            }
        }
        this.f23642e.clear();
        return this;
    }

    @NotNull
    public final i f() {
        Iterator<T> it2 = this.f23641d.iterator();
        while (it2.hasNext()) {
            BaseQuickAdapter baseQuickAdapter = (BaseQuickAdapter) it2.next();
            this.f23643f.removeAdapter(baseQuickAdapter);
            BaseQuickAdapter.f fVar = this.f23644g;
            if (fVar != null) {
                baseQuickAdapter.removeOnViewAttachStateChangeListener(fVar);
            }
        }
        this.f23641d.clear();
        return this;
    }

    @NotNull
    public final ConcatAdapter g() {
        return this.f23643f;
    }

    @NotNull
    public final List<BaseQuickAdapter<?, ?>> h() {
        return this.f23642e;
    }

    @NotNull
    public final List<BaseQuickAdapter<?, ?>> i() {
        return this.f23641d;
    }

    @NotNull
    public final BaseQuickAdapter<?, ?> j() {
        return this.f23638a;
    }

    @NotNull
    public final r2.b k() {
        r2.b bVarB;
        s2.c<?> cVar = this.f23639b;
        return (cVar == null || (bVarB = cVar.b()) == null) ? new r2.b.d(false) : bVarB;
    }

    @Nullable
    public final s2.c<?> l() {
        return this.f23639b;
    }

    @NotNull
    public final r2.b m() {
        r2.b bVarB;
        t2.g<?> gVar = this.f23640c;
        return (gVar == null || (bVarB = gVar.b()) == null) ? new r2.b.d(false) : bVarB;
    }

    @Nullable
    public final t2.g<?> n() {
        return this.f23640c;
    }

    @NotNull
    public final i o(@NotNull BaseQuickAdapter<?, ?> adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        if (!Intrinsics.areEqual(adapter, this.f23638a)) {
            this.f23643f.removeAdapter(adapter);
            this.f23641d.remove(adapter);
            this.f23642e.remove(adapter);
            BaseQuickAdapter.f fVar = this.f23644g;
            if (fVar != null) {
                adapter.removeOnViewAttachStateChangeListener(fVar);
                if (this.f23641d.isEmpty()) {
                    this.f23638a.addOnViewAttachStateChangeListener(fVar);
                } else {
                    ((BaseQuickAdapter) CollectionsKt___CollectionsKt.first((List) this.f23641d)).addOnViewAttachStateChangeListener(fVar);
                }
            }
            BaseQuickAdapter.f fVar2 = this.f23645h;
            if (fVar2 != null) {
                adapter.removeOnViewAttachStateChangeListener(fVar2);
                if (this.f23642e.isEmpty()) {
                    this.f23638a.addOnViewAttachStateChangeListener(fVar2);
                } else {
                    ((BaseQuickAdapter) CollectionsKt___CollectionsKt.last((List) this.f23642e)).addOnViewAttachStateChangeListener(fVar2);
                }
            }
        }
        return this;
    }

    public final void p(@NotNull r2.b value) {
        Intrinsics.checkNotNullParameter(value, "value");
        s2.c<?> cVar = this.f23639b;
        if (cVar != null) {
            cVar.f(value);
        }
    }

    public final void q(@NotNull r2.b value) {
        Intrinsics.checkNotNullParameter(value, "value");
        t2.g<?> gVar = this.f23640c;
        if (gVar != null) {
            gVar.f(value);
        }
    }

    private i(BaseQuickAdapter<?, ?> baseQuickAdapter, s2.c<?> cVar, t2.g<?> gVar, ConcatAdapter.Config config) {
        this.f23638a = baseQuickAdapter;
        this.f23639b = cVar;
        this.f23640c = gVar;
        this.f23641d = new ArrayList<>(0);
        this.f23642e = new ArrayList<>(0);
        ConcatAdapter concatAdapter = new ConcatAdapter(config, (RecyclerView.Adapter<? extends RecyclerView.ViewHolder>[]) new RecyclerView.Adapter[0]);
        this.f23643f = concatAdapter;
        if (cVar != null) {
            concatAdapter.addAdapter(cVar);
            a aVar = new a();
            baseQuickAdapter.addOnViewAttachStateChangeListener(aVar);
            this.f23644g = aVar;
        }
        concatAdapter.addAdapter(baseQuickAdapter);
        if (gVar != null) {
            concatAdapter.addAdapter(gVar);
            b bVar = new b();
            baseQuickAdapter.addOnViewAttachStateChangeListener(bVar);
            this.f23645h = bVar;
        }
    }
}
