package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.CloudDownRecoderTable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class i extends q5.b<CloudDownRecoderTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static i f97086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<CloudDownRecoderTable, Integer> f97087c;

    private i() {
        super(f97087c);
    }

    public static i o() {
        if (f97086b == null) {
            f97087c = q5.e.d(null).c().s();
            f97086b = new i();
        }
        return f97086b;
    }

    public List<CloudDownRecoderTable> n(String gameId) {
        if (gameId == null || "".equals(gameId)) {
            return new ArrayList();
        }
        List<CloudDownRecoderTable> listQueryForEq = f97087c.queryForEq("gameId", gameId);
        return (listQueryForEq == null || listQueryForEq.size() == 0) ? new ArrayList() : listQueryForEq;
    }
}
