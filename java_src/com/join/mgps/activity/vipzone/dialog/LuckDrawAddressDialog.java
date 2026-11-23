package com.join.mgps.activity.vipzone.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.vipzone.bean.LuckAddressrequest;
import com.join.mgps.activity.vipzone.bean.PrizeBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.i;
import com.wufan.user.service.protobuf.UserInfo;
import i.d;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes9.dex */
public class LuckDrawAddressDialog extends Activity {
    TextView address1;
    EditText address2;
    ImageView closed;
    Context context;
    EditText name;
    TextView ok;
    EditText phoneNumber;
    PrizeBean prizeBean;
    View selectAddress;

    private void commitAddress(String nameT, String phoneNumbertT, String address1T, String address2T) {
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        RequestModel<LuckAddressrequest> requestModel = new RequestModel<>(this.context);
        LuckAddressrequest luckAddressrequest = new LuckAddressrequest();
        luckAddressrequest.setName(nameT);
        luckAddressrequest.setAddress(address2T);
        luckAddressrequest.setCity(address1T);
        luckAddressrequest.setMobilePhone(Long.parseLong(phoneNumbertT));
        luckAddressrequest.setLotteryId(this.prizeBean.getId());
        luckAddressrequest.setUid(accountData.getUid());
        luckAddressrequest.setUserToken(accountData.getToken());
        requestModel.setArgs(luckAddressrequest);
        i.P0().N0().L1(requestModel).enqueue(new Callback<ResponseModel<PrizeBean>>() { // from class: com.join.mgps.activity.vipzone.dialog.LuckDrawAddressDialog.2
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<PrizeBean>> call, Throwable t10) {
                a3.b(LuckDrawAddressDialog.this.context).d("提交信息失败");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<PrizeBean>> call, Response<ResponseModel<PrizeBean>> response) {
                if (response == null || response.body() == null) {
                    return;
                }
                if (response.body().getCode() == 200) {
                    a3.b(LuckDrawAddressDialog.this.context).d("提交成功");
                    LuckDrawAddressDialog.this.finish();
                } else if (response.body().getCode() == 500) {
                    a3.b(LuckDrawAddressDialog.this.context).d(response.body().getMessage());
                }
            }
        });
    }

    /* JADX INFO: renamed from: onClickAddressSelecter, reason: merged with bridge method [inline-methods] */
    public void lambda$onCreate$0(View view) {
        r7.a.b(this.phoneNumber);
        com.airsaid.pickerviewlibrary.b bVar = new com.airsaid.pickerviewlibrary.b(this.context);
        bVar.l(true);
        bVar.I(20.0f);
        bVar.J("选择城市");
        bVar.p("取消");
        bVar.q(-7829368);
        bVar.r(15.0f);
        bVar.F("确定");
        bVar.G(-16776961);
        bVar.H(15.0f);
        bVar.u(-1);
        bVar.S(new d() { // from class: com.join.mgps.activity.vipzone.dialog.LuckDrawAddressDialog.1
            @Override // i.d, i.a
            public void onCitySelect(String prov, String city, String area) {
                LuckDrawAddressDialog.this.address1.setText(prov + "、" + city + "、" + area);
            }

            @Override // i.d, i.a
            public void onCitySelect(String str) {
                LuckDrawAddressDialog.this.address1.setText(str);
            }
        });
        bVar.n();
    }

    /* JADX INFO: renamed from: onClickClosed, reason: merged with bridge method [inline-methods] */
    public void lambda$onCreate$1(View view) {
        r7.a.b(this.phoneNumber);
        finish();
    }

    public void onClickOk(View view) {
        String string = this.name.getText().toString();
        String string2 = this.phoneNumber.getText().toString();
        String string3 = this.address1.getText().toString();
        String string4 = this.address2.getText().toString();
        if (t2.h(string.trim())) {
            a3.b(this.context).d("请输入姓名");
            return;
        }
        if (t2.h(string2.trim())) {
            a3.b(this.context).d("请输入手机号");
            return;
        }
        if (t2.h(string3.trim())) {
            a3.b(this.context).d("请输入城市");
        } else if (t2.h(string4.trim())) {
            a3.b(this.context).d("请输详细地址");
        } else {
            commitAddress(string, string2, string3, string4);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.context = this;
        getWindow().setSoftInputMode(32);
        setContentView(R.layout.luck_draw_address_dialog_layout);
        this.ok = (TextView) findViewById(R.id.ok);
        this.phoneNumber = (EditText) findViewById(R.id.phoneNumber);
        this.address2 = (EditText) findViewById(R.id.address2);
        this.address1 = (TextView) findViewById(R.id.address1);
        this.name = (EditText) findViewById(R.id.name);
        this.closed = (ImageView) findViewById(R.id.closed);
        View viewFindViewById = findViewById(R.id.selectAddress);
        this.selectAddress = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.dialog.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f58184b.lambda$onCreate$0(view);
            }
        });
        this.closed.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.dialog.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f58185b.lambda$onCreate$1(view);
            }
        });
        this.prizeBean = (PrizeBean) getIntent().getSerializableExtra("datas");
    }
}
