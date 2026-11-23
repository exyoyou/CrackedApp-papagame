package com.join.mgps.dto;

import androidx.annotation.Nullable;
import com.join.kotlin.base.impl.BaseDownloadable;
import com.join.kotlin.base.impl.GInfo;
import com.join.mgps.Util.IntentDateBean;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class PaPaBean extends BaseDownloadable {
    public static final String KEY_IMAGE_HEADER_HEIGHT = "key_image_header_height";
    private int type;
    private Object typeValue;
    private HashMap<String, Object> mImageHeaderParams = new HashMap<>();
    private GInfo gInfo = null;

    public enum PaPaBeanTypes {
        TYPE_IMAGE_HEADER(0),
        TYPE_TITLE_COLLECTION(1),
        TYPE_CONTENT_COLLECTION(2),
        TYPE_CONTENT_GAMEINFO(3),
        TYPE_GAMEFACTORY_LIST(4),
        TYPE_STANDSALONE_LINE_20(5),
        TYPE_STANDSALONE_TITLE(6),
        TYPE_STANDSALONE_HORIZONTAL(7),
        TYPE_STANDSALONE_VERTICAL(8),
        TYPE_STANDSALONE_TAG(9),
        TYPE_STANDSALONE_COMPANY(10),
        TYPE_STANDSALONE_LINE_40(11);

        private int value;

        PaPaBeanTypes(int value) {
            this.value = value;
        }

        public int value() {
            return this.value;
        }
    }

    public static int getTypes() {
        return PaPaBeanTypes.values().length;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.Downloadable
    @Nullable
    public GInfo getGInfo() {
        Object obj = this.typeValue;
        if (obj instanceof GInfo) {
            this.gInfo = (GInfo) obj;
        }
        return this.gInfo;
    }

    public HashMap<String, Object> getImageHeaderParams() {
        return this.mImageHeaderParams;
    }

    @Override // com.join.kotlin.base.impl.IIntent, com.join.kotlin.base.impl.GInfo
    public IntentDateBean getIntentDataBean() {
        if (hasGInfo()) {
            return this.gInfo.getIntentDataBean();
        }
        return null;
    }

    public int getType() {
        return this.type;
    }

    public Object getTypeValue() {
        return this.typeValue;
    }

    public void setImageHeaderParams(HashMap params) {
        this.mImageHeaderParams = params;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setTypeValue(Object typeValue) {
        this.typeValue = typeValue;
    }
}
