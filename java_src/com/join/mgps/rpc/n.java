package com.join.mgps.rpc;

import android.os.AsyncTask;
import com.fasterxml.jackson.core.type.TypeReference;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.y0;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.PayCenterOrderResponse;
import com.join.mgps.dto.PayGameCheckResult;
import com.join.mgps.dto.PayGameDataRequest;
import com.join.mgps.dto.PayGameDetialBean;
import com.join.mgps.dto.PaygameCheckResponse;
import com.join.mgps.dto.PaygameResponse;
import com.join.mgps.dto.RequestAppDetialArgs;
import com.join.mgps.dto.ResultMainBean;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f72441a = "RPCClient";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final char[] f72442b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    class a extends AsyncTask<PayCenterOrderRequest, Object, PayCenterOrderResponse> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.join.android.app.common.http.b f72443a;

        a(final com.join.android.app.common.http.b val$callback) {
            this.f72443a = val$callback;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PayCenterOrderResponse doInBackground(PayCenterOrderRequest... requests) {
            PayCenterOrderRequest payCenterOrderRequest = requests[0];
            return new PayCenterOrderResponse(y0.a(n.d(payCenterOrderRequest), false), payCenterOrderRequest.getAction());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(PayCenterOrderResponse response) {
            super.onPostExecute(response);
            this.f72443a.onSuccess(response);
        }
    }

    class b extends AsyncTask<PayGameDataRequest, CommentResponse<PaygameResponse>, CommentResponse<PaygameResponse>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.join.android.app.common.http.b f72444a;

        class a extends TypeReference<CommentResponse<PaygameResponse>> {
            a() {
            }
        }

        b(final com.join.android.app.common.http.b val$callback) {
            this.f72444a = val$callback;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public CommentResponse<PaygameResponse> doInBackground(PayGameDataRequest... requests) {
            return (CommentResponse) JsonMapper.getInstance().fromJson(y0.b(h.f72400y + "/payment/buy", false, requests[0].getArgs()), new a());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(CommentResponse<PaygameResponse> response) {
            super.onPostExecute(response);
            this.f72444a.onSuccess(response);
        }
    }

    class c extends AsyncTask<PayGameDataRequest, CommentResponse<PaygameCheckResponse>, CommentResponse<PaygameCheckResponse>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.join.android.app.common.http.b f72446a;

        class a extends TypeReference<CommentResponse<PaygameCheckResponse>> {
            a() {
            }
        }

        c(final com.join.android.app.common.http.b val$callback) {
            this.f72446a = val$callback;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public CommentResponse<PaygameCheckResponse> doInBackground(PayGameDataRequest... requests) {
            return (CommentResponse) JsonMapper.getInstance().fromJson(y0.b(h.f72400y + "/payment/buy", false, requests[0].getArgsCheck()), new a());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(CommentResponse<PaygameCheckResponse> response) {
            super.onPostExecute(response);
            this.f72446a.onSuccess(response);
        }
    }

    class d extends AsyncTask<PayGameDataRequest, CommentResponse<PayGameCheckResult>, CommentResponse<PayGameCheckResult>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.join.android.app.common.http.b f72448a;

        class a extends TypeReference<CommentResponse<PayGameCheckResult>> {
            a() {
            }
        }

        d(final com.join.android.app.common.http.b val$callback) {
            this.f72448a = val$callback;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public CommentResponse<PayGameCheckResult> doInBackground(PayGameDataRequest... requests) {
            return (CommentResponse) JsonMapper.getInstance().fromJson(y0.b(h.f72400y + "/activation/auth", false, requests[0].getArgsCheck2()), new a());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(CommentResponse<PayGameCheckResult> response) {
            super.onPostExecute(response);
            this.f72448a.onSuccess(response);
        }
    }

    class e extends AsyncTask<RequestAppDetialArgs, CommentResponse<PayGameCheckResult>, ResultMainBean<PayGameDetialBean>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.join.android.app.common.http.b f72450a;

        class a extends TypeReference<ResultMainBean<PayGameDetialBean>> {
            a() {
            }
        }

        e(final com.join.android.app.common.http.b val$callback) {
            this.f72450a = val$callback;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResultMainBean<PayGameDetialBean> doInBackground(RequestAppDetialArgs... requests) {
            return (ResultMainBean) JsonMapper.getInstance().fromJson(y0.b(h.f72400y + "/user/game/state", false, requests[0].getArgs()), new a());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(ResultMainBean<PayGameDetialBean> response) {
            super.onPostExecute(response);
            this.f72450a.onSuccess(response);
        }
    }

    public static void a(PayGameDataRequest request, final com.join.android.app.common.http.b callback) {
        g1.b(f72441a, "method getOrderId() called.");
        new c(callback).execute(request);
    }

    public static void b(PayGameDataRequest request, final com.join.android.app.common.http.b callback) {
        g1.b(f72441a, "method getOrderId() called.");
        new d(callback).execute(request);
    }

    public static void c(RequestAppDetialArgs request, final com.join.android.app.common.http.b callback) {
        g1.b(f72441a, "method getOrderId() called.");
        new e(callback).execute(request);
    }

    public static String d(PayCenterOrderRequest payArgs) {
        Map<String, String> argsURLEncoder = payArgs.getArgsURLEncoder();
        Map<String, String> args = payArgs.getArgs();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(h.f72376q + "?action=");
        stringBuffer.append(payArgs.getAction());
        stringBuffer.append(x.a.f97576d);
        for (Map.Entry<String, String> entry : argsURLEncoder.entrySet()) {
            stringBuffer.append(entry.getKey());
            stringBuffer.append(SimpleComparison.EQUAL_TO_OPERATION);
            stringBuffer.append(entry.getValue());
            stringBuffer.append(x.a.f97576d);
        }
        if (stringBuffer.lastIndexOf(x.a.f97576d) == stringBuffer.length() - 1) {
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        stringBuffer.append(x.a.f97576d);
        stringBuffer.append("sign=");
        stringBuffer.append(h(e(args)));
        return stringBuffer.toString().trim();
    }

    public static String e(Map<String, String> args) {
        StringBuffer stringBuffer = new StringBuffer("582df15de91b3f12d8e710073e43f4f8");
        if (args == null || args.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : args.entrySet()) {
            if (!entry.getKey().equals("resource_id") && !entry.getKey().equals("callback_url") && !entry.getKey().equals("app_name") && !entry.getKey().equals("app_user_name") && !entry.getKey().equals("product_name")) {
                arrayList.add(entry.getValue());
            }
        }
        Collections.sort(arrayList);
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            stringBuffer.append((String) arrayList.get(i10));
        }
        return stringBuffer.toString();
    }

    public static void f(PayCenterOrderRequest request, final com.join.android.app.common.http.b callback) {
        g1.b(f72441a, "method getOrderId() called.");
        new a(callback).execute(request);
    }

    public static void g(PayGameDataRequest request, final com.join.android.app.common.http.b callback) {
        g1.b(f72441a, "method getOrderId() called.");
        new b(callback).execute(request);
    }

    public static String h(String s10) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            try {
                messageDigest.update(s10.getBytes(net.lingala.zip4j.util.e.A0));
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
            }
            return i(messageDigest.digest());
        } catch (NoSuchAlgorithmException e11) {
            e11.printStackTrace();
            return "";
        }
    }

    private static String i(byte[] b10) {
        StringBuilder sb2 = new StringBuilder(b10.length * 2);
        for (int i10 = 0; i10 < b10.length; i10++) {
            char[] cArr = f72442b;
            sb2.append(cArr[(b10[i10] & 240) >>> 4]);
            sb2.append(cArr[b10[i10] & 15]);
        }
        return sb2.toString();
    }
}
