package u4;

import com.j256.ormlite.android.apptools.OrmLiteConfigUtil;
import java.io.IOException;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes9.dex */
public class a extends OrmLiteConfigUtil {
    public static void main(String[] args) throws SQLException, IOException {
        OrmLiteConfigUtil.writeConfigFile("ormlite_config.txt");
    }
}
