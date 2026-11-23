package com.join.mgps.activity;

import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CollectionBeanSub;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.fragment_check_local_game)
public class d extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    TextView f56897c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    TextView f56898d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f56899e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f56900f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public CollectionBeanSub f56901g;

    @AfterViews
    void afterViews() {
        this.f56897c.setText(this.f56900f);
        CollectionBeanSub collectionBeanSub = this.f56901g;
        if (collectionBeanSub != null) {
            this.f56898d.setText(collectionBeanSub.getGame_name());
            String ico_remote = this.f56901g.getIco_remote();
            if (com.join.mgps.Util.t2.h(ico_remote)) {
                return;
            }
            this.f56899e.setImageURI(ico_remote);
        }
    }
}
