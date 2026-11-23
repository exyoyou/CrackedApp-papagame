package com.join.mgps.fragment;

import android.app.Fragment;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.shopfragmet_item)
public class MyShopFragmentItem extends Fragment {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @ViewById
    RecyclerView f68809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    a f68810c;

    class a extends RecyclerView.Adapter<C0721a> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Context f68811e;

        /* JADX INFO: renamed from: com.join.mgps.fragment.MyShopFragmentItem$a$a, reason: collision with other inner class name */
        class C0721a extends RecyclerView.ViewHolder {
            public C0721a(View itemView) {
                super(itemView);
            }
        }

        public a(Context context) {
            this.f68811e = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(C0721a holder, int position) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public C0721a onCreateViewHolder(ViewGroup parent, int viewType) {
            return null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 0;
        }
    }

    @AfterViews
    void a() {
        this.f68809b.setLayoutManager(new LinearLayoutManager(getActivity()));
        a aVar = new a(getActivity());
        this.f68810c = aVar;
        this.f68809b.setAdapter(aVar);
    }
}
