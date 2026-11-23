package com.haima.hmcp.beans;

import com.haima.hmcp.Constants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ClipBoardData {
    public static final String CLIPBOARD_DATA_CODE = "paste";
    public static final int CLIPBOARD_DATA_SIZE = Constants.CONFIG_CLIPBOARD_DATA_SIZE;
    public static final int CLIPBOARD_DATA_TYPE_BASE64 = 1;
    public static final int CLIPBOARD_DATA_TYPE_PLAIN = 0;
    public String code;
    public List<ClipBoardItemData> data;
    public int dataType;

    public static boolean checkDataSize(List<ClipBoardItemData> list) {
        String str;
        if (list == null) {
            return false;
        }
        for (ClipBoardItemData clipBoardItemData : list) {
            if (clipBoardItemData != null && (str = clipBoardItemData.itemData) != null && str.length() > CLIPBOARD_DATA_SIZE) {
                return false;
            }
        }
        return true;
    }

    public static boolean isDataValid(ClipBoardData clipBoardData) {
        return clipBoardData != null && checkDataSize(clipBoardData.data);
    }
}
