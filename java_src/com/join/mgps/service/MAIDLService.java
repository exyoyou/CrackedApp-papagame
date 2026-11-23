package com.join.mgps.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.x1;
import com.join.mgps.db.tables.PlayGameTimeTable;
import com.join.mgps.dto.EmuErrorDto;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import java.util.List;
import java.util.UUID;
import q5.f;
import t6.d0;

/* JADX INFO: loaded from: classes3.dex */
public class MAIDLService extends Service {
    private static final String TAG = "MAIDLService";
    private final com.join.mgps.aidl.a.b mBinder = new a();

    class a extends com.join.mgps.aidl.a.b {

        /* JADX INFO: renamed from: com.join.mgps.service.MAIDLService$a$a, reason: collision with other inner class name */
        class C0741a implements x1.b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f72872a;

            C0741a(final String val$appKey) {
                this.f72872a = val$appKey;
            }

            @Override // com.join.mgps.Util.x1.b
            public void a(x1.c result) {
                Intent intent = new Intent("com.join.android.wufun.sdk.wfsg.broadcast." + this.f72872a);
                intent.putExtra("result", result.toString());
                g1.d("xxxxx", "send rs=" + result.toString());
                MAIDLService.this.sendBroadcast(intent);
            }
        }

        a() {
        }

        @Override // com.join.mgps.aidl.a
        public void emuConfigChanged() throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void emuConfigPost(String uid, int type, String file) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void emuLogCat(String gameId, String uid, String packageName, String version, String errorInfo) throws RemoteException {
            EmuErrorDto emuErrorDto = new EmuErrorDto();
            emuErrorDto.setGame_id(gameId);
            emuErrorDto.setUid(uid);
            emuErrorDto.setPlugin_package_name(packageName);
            emuErrorDto.setPlugin_version(version);
            emuErrorDto.setError(errorInfo);
            t.l(MAIDLService.this.getApplicationContext()).h0(JsonMapper.getInstance().toJson(emuErrorDto));
        }

        @Override // com.join.mgps.aidl.a
        public void gameOut(String gameId, int sec, String uid) throws RemoteException {
            t.l(MAIDLService.this.getApplicationContext()).W0(gameId, sec, uid, f.M().N(gameId, MAIDLService.this.getApplicationContext()));
        }

        @Override // com.join.mgps.aidl.a
        public void gameStart(String gameId) throws RemoteException {
            Ext ext = new Ext();
            DownloadTask downloadTaskG = f.M().G(gameId);
            if (downloadTaskG != null) {
                ext.setFrom(downloadTaskG.get_from() + "");
            }
            t.l(MAIDLService.this.getApplicationContext()).j(gameId, "0", f.M().N(gameId, MAIDLService.this.getApplicationContext()), ext);
        }

        @Override // com.join.mgps.aidl.a
        public void gameStart15(String gameId, String uid) throws RemoteException {
            if (t2.h(gameId)) {
                return;
            }
            Ext ext = new Ext();
            DownloadTask downloadTaskG = f.M().G(gameId);
            if (downloadTaskG != null) {
                ext.setFrom(downloadTaskG.get_from() + "");
            }
            t.l(MAIDLService.this.getApplicationContext()).j(gameId, uid, f.M().N(gameId, MAIDLService.this.getApplicationContext()), ext);
        }

        @Override // com.join.mgps.aidl.a
        public void gameStart160(String gameId, String uid, int startMode) throws RemoteException {
            t.l(MAIDLService.this.getApplicationContext()).i(gameId, uid, startMode, f.M().N(gameId, MAIDLService.this.getApplicationContext()));
        }

        @Override // com.join.mgps.aidl.a
        public void gameStartBattle(String gameId) throws RemoteException {
            Ext ext = new Ext();
            DownloadTask downloadTaskG = f.M().G(gameId);
            if (downloadTaskG != null) {
                ext.setFrom(downloadTaskG.get_from() + "");
            }
            t.l(MAIDLService.this.getApplicationContext()).j(gameId, null, f.M().N(gameId, MAIDLService.this.getApplicationContext()), ext);
        }

        @Override // com.join.mgps.aidl.a
        public void gameStartBattle15(String gameId, String uid) throws RemoteException {
            t.l(MAIDLService.this.getApplicationContext()).e2(gameId, uid);
        }

        @Override // com.join.mgps.aidl.a
        public void gameWorldData(String data) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void netBattleMatchEfficiency(String gameId, String jsonData, String uid) throws RemoteException {
            t.l(MAIDLService.this.getApplicationContext()).C1(gameId, jsonData, uid);
        }

        @Override // com.join.mgps.aidl.a
        public String oauth4StandaloneGame(final String appKey) throws RemoteException {
            x1.c().b(MAIDLService.this.getApplicationContext(), appKey, new C0741a(appKey));
            return null;
        }

        @Override // com.join.mgps.aidl.a
        public void playTime(String gameId, String uid, long sec) throws RemoteException {
            List<PlayGameTimeTable> listO = d0.n().o(uid, gameId);
            if (listO != null && listO.size() > 0) {
                PlayGameTimeTable playGameTimeTable = listO.get(0);
                long gamePlayTotalTime = playGameTimeTable.getGamePlayTotalTime();
                playGameTimeTable.setGamePlayRecentlyTime(System.currentTimeMillis() / 1000);
                playGameTimeTable.setGamePlayTotalTime(gamePlayTotalTime + sec);
                d0.n().m(playGameTimeTable);
            }
            t.l(MAIDLService.this.getApplicationContext()).P1(gameId, sec + "", uid, UUID.randomUUID().toString());
        }

        @Override // com.join.mgps.aidl.a
        public void plugEfficiency(String gameId, String jsonData, String uid) throws RemoteException {
            t.l(MAIDLService.this.getApplicationContext()).O1(gameId, jsonData, uid);
        }

        @Override // com.join.mgps.aidl.a
        @Deprecated
        public boolean unLockSP(String gameId) throws RemoteException {
            return true;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        super.onRebind(intent);
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return super.onUnbind(intent);
    }
}
