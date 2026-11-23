package w6;

import android.content.Context;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.Util.AccountUtil_;
import com.papa.sim.statistic.j;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class d implements j {
    @Override // com.papa.sim.statistic.j
    public String a(Context context) {
        return AccountUtil_.getInstance_(context).getUid();
    }

    @Override // com.papa.sim.statistic.j
    public String b(Context context) {
        return AccountUtil_.getInstance_(context).getToken();
    }

    @Override // com.papa.sim.statistic.j
    public String c() {
        StringBuilder sb2 = new StringBuilder("");
        List<DownloadTask> listP = q5.f.M().p();
        if (listP != null && listP.size() > 0) {
            Iterator<DownloadTask> it2 = listP.iterator();
            while (it2.hasNext()) {
                sb2.append(it2.next().getCrc_link_type_val() + ",");
            }
        }
        return sb2.toString();
    }
}
