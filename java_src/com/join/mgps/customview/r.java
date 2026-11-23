package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.t2;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.enums.Dtype;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class r extends v implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    SimpleDraweeView f66823b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    SimpleDraweeView f66824c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f66825d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TextView f66826e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f66827f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    TextView f66828g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f66829h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f66830i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ImageView f66831j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ImageView f66832k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f66833l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f66834m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f66835n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f66836o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    a f66837p;

    public interface a {
        void a(boolean modChecked, String modGameId, boolean standChecked, String standGameId);
    }

    public r(Context context) {
        super(context);
        init();
    }

    private void f(boolean isCheck, ImageView iv) {
        if (isCheck) {
            iv.setImageResource(R.drawable.ic_mod_check_selected);
        } else {
            iv.setImageResource(R.drawable.ic_mod_check_normal);
        }
        if (this.f66835n || this.f66836o) {
            this.f66827f.setTextColor(Color.parseColor("#FFFF4E4E"));
        } else {
            this.f66827f.setTextColor(Color.parseColor("#FFB6B6B6"));
        }
    }

    public a c() {
        return this.f66837p;
    }

    public void d(a l10) {
        this.f66837p = l10;
    }

    public void e(View parent, DownloadTask task) {
        ModInfoBean modInfoBean;
        List<DownloadTask> listH;
        showAtLocation(parent, 80, 0, 0);
        if (task == null || !t2.i(task.getMod_info()) || (modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(task.getMod_info(), ModInfoBean.class)) == null || (listH = q5.f.M().H(modInfoBean.getMain_game_id(), modInfoBean.getMod_game_id())) == null) {
            return;
        }
        for (DownloadTask downloadTask : listH) {
            if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                this.f66830i = downloadTask.getCrc_link_type_val();
                this.f66833l.setVisibility(0);
                com.join.android.app.common.utils.l.h(this.f66824c, downloadTask.getPortraitURL());
            } else {
                this.f66834m.setVisibility(0);
                this.f66829h = downloadTask.getCrc_link_type_val();
                com.join.android.app.common.utils.l.h(this.f66823b, downloadTask.getPortraitURL());
            }
        }
    }

    void init() {
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.pop_mod_game_delete_game, (ViewGroup) null);
        this.parentView = viewInflate;
        setContentView(viewInflate);
        setWidth(-1);
        setHeight(-2);
        this.f66823b = (SimpleDraweeView) this.parentView.findViewById(R.id.icon);
        this.f66825d = (TextView) this.parentView.findViewById(R.id.name);
        this.f66824c = (SimpleDraweeView) this.parentView.findViewById(R.id.icon_mod);
        this.f66826e = (TextView) this.parentView.findViewById(R.id.name_mod);
        this.f66831j = (ImageView) this.parentView.findViewById(R.id.iv_mod_check);
        this.f66832k = (ImageView) this.parentView.findViewById(R.id.iv_stand_check);
        this.f66833l = this.parentView.findViewById(R.id.rl_mod);
        this.f66834m = this.parentView.findViewById(R.id.rl_stand);
        this.f66827f = (TextView) this.parentView.findViewById(R.id.delete);
        this.f66828g = (TextView) this.parentView.findViewById(R.id.cancel);
        this.f66827f.setOnClickListener(this);
        this.f66828g.setOnClickListener(this);
        this.f66833l.setOnClickListener(this);
        this.f66834m.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.delete) {
            boolean z10 = this.f66835n;
            if (z10 || this.f66836o) {
                a aVar = this.f66837p;
                if (aVar != null) {
                    aVar.a(z10, this.f66830i, this.f66836o, this.f66829h);
                }
                dismiss();
                return;
            }
            return;
        }
        if (id2 == R.id.cancel) {
            dismiss();
            return;
        }
        if (id2 == R.id.rl_mod) {
            boolean z11 = !this.f66835n;
            this.f66835n = z11;
            f(z11, this.f66831j);
        } else if (id2 == R.id.rl_stand) {
            boolean z12 = !this.f66836o;
            this.f66836o = z12;
            f(z12, this.f66832k);
        }
    }
}
