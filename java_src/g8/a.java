package g8;

import com.czhj.sdk.common.Constants;
import com.join.mgps.Util.t2;
import com.join.mgps.dto.AccountBean;
import com.umeng.analytics.pro.bm;
import com.wufan.user.service.protobuf.MemberTitleInfo;
import com.wufan.user.service.protobuf.UserInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class a {
    public static UserInfo a(AccountBean account) {
        UserInfo.b bVarNewBuilder = UserInfo.newBuilder();
        bVarNewBuilder.setUid(account.getUid());
        bVarNewBuilder.setAccount(account.getAccount());
        bVarNewBuilder.setPapaMoney(bVarNewBuilder.getPapaMoney());
        bVarNewBuilder.setRegisterTime(account.getRegisterTime());
        bVarNewBuilder.setAvatarSrc(account.getAvatarSrc());
        if (t2.i(account.getExp())) {
            bVarNewBuilder.setExp(Integer.parseInt(account.getExp()));
        }
        bVarNewBuilder.setLevel(account.getLevel());
        if (t2.i(account.getSurplusExp())) {
            bVarNewBuilder.setSurplusExp(Integer.parseInt(account.getSurplusExp()));
        }
        bVarNewBuilder.setNickname(account.getNickname());
        bVarNewBuilder.setMobile(account.getMobile());
        bVarNewBuilder.setPayTopTip(account.getPay_top_tip());
        bVarNewBuilder.setGender(account.getGender());
        bVarNewBuilder.setToken(account.getToken());
        bVarNewBuilder.setPwdSetUp(account.getPwd_set_up());
        bVarNewBuilder.setAccountType(account.getAccount_type());
        bVarNewBuilder.setVipLevel(account.getVip_level());
        bVarNewBuilder.setVipLevel(account.getSvip_level());
        bVarNewBuilder.setVipExpTime(account.getVip_exp_time());
        bVarNewBuilder.setLiveTotalCharm(account.getLive_total_charm());
        bVarNewBuilder.setIsAnchor(account.getIs_anchor());
        if (account.getMember_title() != null) {
            MemberTitleInfo.b bVarNewBuilder2 = MemberTitleInfo.newBuilder();
            bVarNewBuilder2.setBattleTitle(account.getMember_title().getBattleTitle());
            bVarNewBuilder2.setLevel(account.getLevel());
            bVarNewBuilder2.setBattleTitleColor(account.getMember_title().getBattleTitleColor());
            bVarNewBuilder.setMemberTitle(bVarNewBuilder2);
        }
        bVarNewBuilder.setIsRealName(account.getIs_real_name());
        if (t2.i(account.getSecretKey())) {
            bVarNewBuilder.setSecretKey(account.getSecretKey());
        } else {
            bVarNewBuilder.setSecretKey(b(account.getUid(), account.getToken(), account.getVip_level()));
        }
        bVarNewBuilder.setMemberTime(account.getMember_time());
        return bVarNewBuilder.build();
    }

    private static String b(int uid, String token, int piv) {
        try {
            JSONObject jSONObject = new JSONObject();
            String strE = com.join.mgps.Util.a.e(System.currentTimeMillis() + "|" + piv);
            jSONObject.put("uid", uid);
            jSONObject.put(Constants.TOKEN, token);
            jSONObject.put(bm.aM, strE);
            return com.join.mgps.Util.a.e(jSONObject.toString());
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }
}
