package com.czhj.sdk.common.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.logger.SigmobLog;
import java.util.Calendar;

/* JADX INFO: loaded from: classes9.dex */
public class IdentifierManager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f25619b = "com.Sigmob.settings.identifier";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f25620c = "privacy.identifier.ifa";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f25621d = "privacy.identifier.ifa_aes_gcm";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f25622e = "privacy.identifier.Sigmob";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f25623f = "privacy.identifier.time";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f25624g = "privacy.limit.ad.tracking";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f25625h = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f25626a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AdvertisingId f25627i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Context f25628j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private AdvertisingIdChangeListener f25629k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f25630l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f25631m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private SdkInitializationListener f25632n;

    public interface AdvertisingIdChangeListener {
        void onIdChanged(AdvertisingId advertisingId, AdvertisingId advertisingId2);
    }

    private class RefreshAdvertisingInfoAsyncTask extends AsyncTask<Void, Void, Void> {
        private RefreshAdvertisingInfoAsyncTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            IdentifierManager.this.b();
            IdentifierManager.this.f25630l = false;
            return null;
        }
    }

    interface SdkInitializationListener {
        void onInitializationFinished();
    }

    public IdentifierManager(Context context, AdvertisingIdChangeListener advertisingIdChangeListener) {
    }

    private static synchronized AdvertisingId a(Context context) {
        Preconditions.NoThrow.checkNotNull(context);
        Calendar calendar = Calendar.getInstance();
        try {
            SharedPreferences sharedPreferences = SharedPreferencesUtil.getSharedPreferences(context, f25619b);
            String string = sharedPreferences.getString(f25621d, "");
            String strDecryptString = !TextUtils.isEmpty(string) ? AESUtil.DecryptString(string, Constants.AESKEY) : sharedPreferences.getString(f25620c, "");
            String string2 = sharedPreferences.getString(f25622e, "");
            long j10 = sharedPreferences.getLong(f25623f, calendar.getTimeInMillis());
            boolean z10 = sharedPreferences.getBoolean(f25624g, false);
            if (!TextUtils.isEmpty(strDecryptString) && !TextUtils.isEmpty(string2)) {
                return new AdvertisingId(strDecryptString, string2, z10, j10);
            }
        } catch (Throwable unused) {
            SigmobLog.e("Cannot read identifier from shared preferences");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        PlayServicesUtil.AdvertisingInfo advertisingIdInfo;
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        if (d()) {
            try {
                advertisingIdInfo = PlayServicesUtil.getAdvertisingIdInfo(this.f25628j);
            } catch (Throwable unused) {
                advertisingIdInfo = null;
            }
            if (advertisingIdInfo != null) {
                AdvertisingId advertisingId = this.f25627i;
                if (advertisingIdInfo.limitAdTracking && advertisingId.b()) {
                    a(advertisingIdInfo.advertisingId, AdvertisingId.a(), advertisingIdInfo.limitAdTracking, timeInMillis);
                } else {
                    a(advertisingIdInfo.advertisingId, advertisingId.f25585b, advertisingIdInfo.limitAdTracking, advertisingId.f25584a.getTimeInMillis());
                }
            }
        }
    }

    private void c() {
        SdkInitializationListener sdkInitializationListener = this.f25632n;
        if (sdkInitializationListener != null) {
            sdkInitializationListener.onInitializationFinished();
            this.f25632n = null;
        }
        this.f25631m = true;
    }

    private boolean d() {
        return true;
    }

    public AdvertisingId getAdvertisingInfo() {
        AdvertisingId advertisingId = this.f25627i;
        this.f25626a = System.currentTimeMillis();
        return advertisingId;
    }

    private void a() {
        if (this.f25630l) {
            return;
        }
        this.f25630l = true;
        new RefreshAdvertisingInfoAsyncTask().execute(new Void[0]);
    }

    private static synchronized void a(Context context, AdvertisingId advertisingId) {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(advertisingId);
        SharedPreferences.Editor editorEdit = SharedPreferencesUtil.getSharedPreferences(context, f25619b).edit();
        editorEdit.putBoolean(f25624g, advertisingId.mDoNotTrack);
        editorEdit.remove(f25620c);
        editorEdit.putString(f25621d, AESUtil.EncryptString(advertisingId.mAdvertisingId, Constants.AESKEY));
        editorEdit.putString(f25622e, advertisingId.f25585b);
        editorEdit.putLong(f25623f, advertisingId.f25584a.getTimeInMillis());
        editorEdit.apply();
    }

    private void a(AdvertisingId advertisingId) {
        AdvertisingId advertisingId2 = this.f25627i;
        this.f25627i = advertisingId;
        a(this.f25628j, advertisingId);
        if (!this.f25627i.equals(advertisingId2) || !this.f25631m) {
            a(advertisingId2, this.f25627i);
        }
        if (this.f25631m) {
            return;
        }
        c();
    }

    private void a(AdvertisingId advertisingId, AdvertisingId advertisingId2) {
        Preconditions.NoThrow.checkNotNull(advertisingId2);
        AdvertisingIdChangeListener advertisingIdChangeListener = this.f25629k;
        if (advertisingIdChangeListener != null) {
            advertisingIdChangeListener.onIdChanged(advertisingId, advertisingId2);
        }
    }

    private void a(String str, String str2, boolean z10, long j10) {
        Preconditions.NoThrow.checkNotNull(str);
        Preconditions.NoThrow.checkNotNull(str2);
        a(new AdvertisingId(str, str2, z10, j10));
    }
}
