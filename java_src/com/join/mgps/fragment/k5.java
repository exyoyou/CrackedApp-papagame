package com.join.mgps.fragment;

import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.base.BaseQuickAdapter;
import java.util.ArrayList;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_simulator_gold_finger)
public class k5 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    RecyclerView f70049c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    LinearLayout f70050d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    NestedScrollView f70051e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ArrayList<String> f70052f;

    class a extends com.join.mgps.base.decoration.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.base.decoration.b.a f70053e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.base.decoration.b.a f70054f;

        a(final com.join.mgps.base.decoration.b.a val$decoration1, final com.join.mgps.base.decoration.b.a val$decoration2) {
            this.f70053e = val$decoration1;
            this.f70054f = val$decoration2;
        }

        @Override // com.join.mgps.base.decoration.b
        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
            return position % 2 == 0 ? this.f70053e : this.f70054f;
        }
    }

    class b extends BaseQuickAdapter<String, com.join.mgps.base.b> {
        public b() {
            super(R.layout.item_simulator_gold_finger, k5.this.f70052f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, String item) {
            helper.setText(R.id.tvGoldFinger, item);
        }
    }

    @AfterViews
    void afterviews() {
        if (getArguments() != null) {
            this.f70052f = (ArrayList) getArguments().getSerializable("contents");
        }
        ArrayList<String> arrayList = this.f70052f;
        if (arrayList == null || arrayList.size() <= 0) {
            this.f70051e.setVisibility(0);
            this.f70050d.setVisibility(0);
            this.f70049c.setVisibility(8);
        } else {
            this.f70051e.setVisibility(8);
            this.f70050d.setVisibility(8);
            this.f70049c.setVisibility(0);
        }
        com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
        aVar.f64116f = 0;
        aVar.f64118b = (int) getResources().getDimension(R.dimen.wdp8);
        aVar.f64120d = (int) getResources().getDimension(R.dimen.wdp20);
        com.join.mgps.base.decoration.b.a aVar2 = new com.join.mgps.base.decoration.b.a();
        aVar2.f64116f = 0;
        aVar2.f64117a = (int) getResources().getDimension(R.dimen.wdp8);
        aVar2.f64120d = (int) getResources().getDimension(R.dimen.wdp20);
        this.f70049c.addItemDecoration(new a(aVar, aVar2));
        this.f70049c.setLayoutManager(new GridLayoutManager(getContext(), 2));
        this.f70049c.setAdapter(new b());
    }
}
