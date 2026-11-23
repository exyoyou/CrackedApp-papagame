package io.socket.hasbinary;

import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class HasBinary {
    private static final Logger logger = Logger.getLogger(HasBinary.class.getName());

    private HasBinary() {
    }

    private static boolean _hasBinary(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof byte[]) {
            return true;
        }
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                try {
                    if (_hasBinary(jSONArray.isNull(i10) ? null : jSONArray.get(i10))) {
                        return true;
                    }
                } catch (JSONException e10) {
                    logger.log(Level.WARNING, "An error occured while retrieving data from JSONArray", (Throwable) e10);
                    return false;
                }
            }
        } else if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                try {
                    if (_hasBinary(jSONObject.get(itKeys.next()))) {
                        return true;
                    }
                } catch (JSONException e11) {
                    logger.log(Level.WARNING, "An error occured while retrieving data from JSONObject", (Throwable) e11);
                }
            }
        }
        return false;
    }

    public static boolean hasBinary(Object obj) {
        return _hasBinary(obj);
    }
}
