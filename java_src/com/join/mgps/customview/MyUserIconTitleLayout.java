package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.wufan.user.service.protobuf.UserInfo;

/* JADX INFO: loaded from: classes3.dex */
public class MyUserIconTitleLayout extends RelativeLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f65362b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f65363c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SimpleDraweeView f65364d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f65365e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private VipView f65366f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    b f65367g;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10;
            UserInfo accountData = AccountUtil_.getInstance_(MyUserIconTitleLayout.this.f65365e).getAccountData();
            if (accountData == null) {
                MyUserIconTitleLayout.this.f65364d.setImageResource(R.drawable.unloginstatus);
                MyUserIconTitleLayout.this.f65362b.setVisibility(8);
            } else {
                com.join.android.app.common.utils.l.u(MyUserIconTitleLayout.this.f65364d, accountData.getAvatarSrc());
                try {
                    i10 = Integer.parseInt(com.join.mgps.Util.b.vl(com.join.mgps.Util.a.b(accountData.getSecretKey())));
                } catch (Exception unused) {
                    i10 = 0;
                }
                MyUserIconTitleLayout.this.f65366f.setVipData(i10, accountData.getSVIPLevel());
            }
        }
    }

    public interface b {
        void a();
    }

    public MyUserIconTitleLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65365e = context;
    }

    public void e() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        this.f65362b.setVisibility(8);
        if (AccountUtil_.getInstance_(getContext().getApplicationContext()).getToken() != null) {
            com.papa.sim.statistic.pref.b.k(this.f65365e).B(false);
            this.f65363c.setVisibility(8);
        } else {
            Toast.makeText(getContext(), getContext().getString(R.string.forum_user_not_login), 0).show();
        }
        this.f65367g.a();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f65362b = (TextView) findViewById(R.id.papa_user_round);
        this.f65363c = (TextView) findViewById(R.id.papa_user_is_in);
        this.f65364d = (SimpleDraweeView) findViewById(R.id.papa_user_icon);
        this.f65366f = (VipView) findViewById(R.id.papa_vip);
        setOnClickListener(this);
    }

    public void setMsgNumber(int number) {
        if (number < 1) {
            this.f65362b.setVisibility(8);
            return;
        }
        if (number < 100) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f65362b.getLayoutParams();
            layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            this.f65362b.setLayoutParams(layoutParams);
            this.f65362b.setCompoundDrawables(null, null, null, null);
            this.f65362b.setBackgroundResource(R.drawable.mygame_big_round);
            this.f65362b.setPadding(1, 0, 0, 1);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f65362b.getLayoutParams();
            layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
            layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams2.setMargins(0, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 4, 0);
            this.f65362b.setGravity(17);
            this.f65362b.setLayoutParams(layoutParams2);
            this.f65362b.setCompoundDrawables(null, null, null, null);
            this.f65362b.setBackgroundResource(R.drawable.message_round);
            this.f65362b.setPadding(1, 0, 2, 1);
        }
        this.f65362b.setText(number + "");
        this.f65362b.setVisibility(0);
    }

    public void setUserIcon() {
        this.f65364d.post(new a());
    }

    public void setUserIconClickListener(b l10) {
        this.f65367g = l10;
    }
}
