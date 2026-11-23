package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.n3;

/* JADX INFO: loaded from: classes3.dex */
public class ForumMyHeaderView extends ForumBaseHeaderView {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View f64964d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    View f64965e;

    public ForumMyHeaderView(@NonNull Context context) {
        super(context);
    }

    @Override // com.join.mgps.customview.ForumBaseHeaderView
    protected void a(Context context) {
        super.a(context);
        View.inflate(getContext(), R.layout.mg_view_forum_my_header_view, this);
        this.f64964d = n3.b(this, R.id.llPost);
        this.f64965e = n3.b(this, R.id.llComment);
        this.f64964d.setOnClickListener(this);
        this.f64965e.setOnClickListener(this);
    }

    @Override // com.join.mgps.customview.ForumBaseHeaderView, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        int id2 = view.getId();
        if (id2 == R.id.llPost) {
            IntentUtil.getInstance().goForumMyPostsActivity(view.getContext());
        } else if (id2 == R.id.llComment) {
            IntentUtil.getInstance().goForumProfileCommentActivity(view.getContext());
        }
    }

    public ForumMyHeaderView(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
    }

    public ForumMyHeaderView(@NonNull Context context, @Nullable AttributeSet attrs, @AttrRes int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
