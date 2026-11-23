package m6;

import android.app.Activity;
import android.content.Intent;
import androidx.annotation.NonNull;
import com.join.android.app.common.utils.JsonMapper;
import com.join.kotlin.ui.hmcloud.activity.CloudAssetRecordActivity;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.BindAccountActivity_;
import com.join.mgps.callbacks.r;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.hmcloud.HMCloudGameManager;
import com.papa91.arc.ext.ToastManager;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class d implements r {
    @Override // com.join.kotlin.base.dialog.callback.IDialogActivityCallback
    public void onActivityDismiss(@NonNull Activity activity) {
    }

    @Override // com.join.kotlin.base.dialog.callback.IDialogActivityCallback
    public void onActivityShow(@NonNull Activity activity) {
    }

    @Override // com.join.mgps.callbacks.r
    public void onEvent(Activity activity, int event, String jsonParams) {
        if (event == 1) {
            activity.finish();
            return;
        }
        ExtBean extBean = null;
        if (event == 4) {
            IntentUtil.getInstance().startActivityWithCallback(activity, BindAccountActivity_.class, null, new b());
            return;
        }
        if (event == 5) {
            if (HMCloudGameManager.W().s0()) {
                return;
            }
            ToastManager.show("会员开通成功，正在切换至会员高速通道");
            HMCloudGameManager.W().N0();
            return;
        }
        if (event == 6) {
            activity.finish();
            ToastManager.show("秒进卡使用成功，正在切换至秒进通道");
            if (HMCloudGameManager.W().s0()) {
                return;
            }
            HMCloudGameManager.W().T();
            HMCloudGameManager.W().N0();
            return;
        }
        if (event == 7) {
            int iOptInt = 0;
            if (t2.i(jsonParams)) {
                try {
                    JSONObject jSONObject = new JSONObject(jsonParams);
                    iOptInt = jSONObject.optInt("position");
                    String strOptString = jSONObject.optString("parentScene");
                    if (t2.i(strOptString)) {
                        extBean = (ExtBean) JsonMapper.getInstance().fromJson(strOptString, ExtBean.class);
                    }
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
            IntentUtil.getInstance().startActivity(activity, CloudAssetRecordActivity.class, new Intent().putExtra("parentExtBean", extBean).putExtra("position", iOptInt));
        }
    }
}
