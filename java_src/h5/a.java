package h5;

import com.googlecode.mp4parser.authoring.tracks.s;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    private static long a(String str) {
        return (Long.parseLong(str.split(":")[0].trim()) * 60 * 60 * 1000) + (Long.parseLong(str.split(":")[1].trim()) * 60 * 1000) + (Long.parseLong(str.split(":")[2].split(",")[0].trim()) * 1000) + Long.parseLong(str.split(":")[2].split(",")[1].trim());
    }

    public static s b(InputStream inputStream) throws IOException {
        LineNumberReader lineNumberReader = new LineNumberReader(new InputStreamReader(inputStream, "UTF-8"));
        s sVar = new s();
        while (lineNumberReader.readLine() != null) {
            String line = lineNumberReader.readLine();
            String str = "";
            while (true) {
                String line2 = lineNumberReader.readLine();
                if (line2 == null || line2.trim().equals("")) {
                    break;
                }
                str = String.valueOf(str) + line2 + "\n";
            }
            sVar.b().add(new s.a(a(line.split("-->")[0]), a(line.split("-->")[1]), str));
        }
        return sVar;
    }
}
