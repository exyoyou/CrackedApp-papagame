package cn.fly.commons.c;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import cn.fly.commons.x;
import com.haima.hmcp.cloud.BaseCloudFileManager;

/* JADX INFO: loaded from: classes7.dex */
public class j extends h {
    public j(Context context) {
        super(context);
    }

    @Override // cn.fly.commons.c.h
    protected Intent a() {
        Intent intent = new Intent();
        intent.setClassName(x.b("023b'cjceckfccfchckcbEe3ccch_beRchcbehAe,ciccchVbe"), x.b("039b]cjceckfccfchckcb e.ccchLbeKchcbeh6e^ciccch$be%ckekXe*ccch=be:chcbdkPeTciccch5be"));
        return intent;
    }

    @Override // cn.fly.commons.c.h
    protected long c() {
        return BaseCloudFileManager.ACK_TIMEOUT;
    }

    @Override // cn.fly.commons.c.h
    public h.b a(IBinder iBinder) {
        String strB = x.b("042bRcjceckfccfchckcb7eGccch,beMchcbeh+eHciccchTbe0ckddekRe0ccch2beCchcbddNdhe9cide2cbe");
        h.b bVar = new h.b();
        bVar.f1176a = a(x.b("0042cj c]chcb"), iBinder, strB, 1, new String[0]);
        return bVar;
    }
}
