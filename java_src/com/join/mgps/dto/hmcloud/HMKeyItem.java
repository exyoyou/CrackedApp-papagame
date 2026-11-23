package com.join.mgps.dto.hmcloud;

import com.beizi.fusion.widget.ScrollClickView;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010 \n\u0002\b\u0010\n\u0002\u0010\u0007\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001TB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010S\u001a\u00020\u0000R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0007\"\u0004\b\u0019\u0010\tR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0007\"\u0004\b\u001c\u0010\tR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0007\"\u0004\b\u001f\u0010\tR\u001c\u0010 \u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0007\"\u0004\b\"\u0010\tR\"\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001a\u0010)\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001a\u0010.\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010+\"\u0004\b0\u0010-R\u001e\u00101\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b2\u0010\u0013\"\u0004\b3\u0010\u0015R\u001e\u00104\u001a\u0004\u0018\u000105X\u0086\u000e¢\u0006\u0010\n\u0002\u0010:\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u001a\u0010;\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010+\"\u0004\b=\u0010-R\u001a\u0010>\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010+\"\u0004\b@\u0010-R\u001e\u0010A\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\bB\u0010\u0013\"\u0004\bC\u0010\u0015R\u001e\u0010D\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\bE\u0010\u0013\"\u0004\bF\u0010\u0015R\u001e\u0010G\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\bH\u0010\u0013\"\u0004\bI\u0010\u0015R\u001e\u0010J\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\bK\u0010\u0013\"\u0004\bL\u0010\u0015R\u001c\u0010M\u001a\u0004\u0018\u00010NX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010R¨\u0006U"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HMKeyItem;", "", "<init>", "()V", "key", "", "getKey", "()Ljava/lang/String;", "setKey", "(Ljava/lang/String;)V", "name", "getName", "setName", "nickname", "getNickname", "setNickname", "code", "", "getCode", "()Ljava/lang/Integer;", "setCode", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "resBackground", "getResBackground", "setResBackground", "resDefault", "getResDefault", "setResDefault", "resPressed", "getResPressed", "setResPressed", "icon", "getIcon", "setIcon", "combine", "", "getCombine", "()Ljava/util/List;", "setCombine", "(Ljava/util/List;)V", "width", "getWidth", "()I", "setWidth", "(I)V", "height", "getHeight", "setHeight", "alpha", "getAlpha", "setAlpha", "scale", "", "getScale", "()Ljava/lang/Float;", "setScale", "(Ljava/lang/Float;)V", "Ljava/lang/Float;", "x", "getX", "setX", "y", "getY", "setY", "top", "getTop", "setTop", ScrollClickView.DIR_LEFT, "getLeft", "setLeft", ScrollClickView.DIR_RIGHT, "getRight", "setRight", "bottom", "getBottom", "setBottom", "guide", "Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;", "getGuide", "()Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;", "setGuide", "(Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;)V", "clone", "Guide", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HMKeyItem {

    @Nullable
    private Integer alpha;

    @Nullable
    private Integer bottom;

    @Nullable
    private Integer code;

    @Nullable
    private List<HMKeyItem> combine;

    @Nullable
    private Guide guide;
    private int height;

    @Nullable
    private String icon;

    @NotNull
    private String key = "";

    @Nullable
    private Integer left;

    @Nullable
    private String name;

    @Nullable
    private String nickname;

    @Nullable
    private String resBackground;

    @Nullable
    private String resDefault;

    @Nullable
    private String resPressed;

    @Nullable
    private Integer right;

    @Nullable
    private Float scale;

    @Nullable
    private Integer top;
    private int width;
    private int x;
    private int y;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001e\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;", "", "<init>", "()V", "text", "", "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "img", "getImg", "setImg", "index", "", "getIndex", "()Ljava/lang/Integer;", "setIndex", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Guide {

        @Nullable
        private String img;

        @Nullable
        private Integer index;

        @Nullable
        private String text;

        @Nullable
        public final String getImg() {
            return this.img;
        }

        @Nullable
        public final Integer getIndex() {
            return this.index;
        }

        @Nullable
        public final String getText() {
            return this.text;
        }

        public final void setImg(@Nullable String str) {
            this.img = str;
        }

        public final void setIndex(@Nullable Integer num) {
            this.index = num;
        }

        public final void setText(@Nullable String str) {
            this.text = str;
        }
    }

    @NotNull
    public final HMKeyItem clone() {
        HMKeyItem hMKeyItem = new HMKeyItem();
        hMKeyItem.key = this.key;
        hMKeyItem.name = this.name;
        hMKeyItem.code = this.code;
        hMKeyItem.resBackground = this.resBackground;
        hMKeyItem.resDefault = this.resDefault;
        hMKeyItem.resPressed = this.resPressed;
        hMKeyItem.icon = this.icon;
        hMKeyItem.combine = this.combine;
        hMKeyItem.width = this.width;
        hMKeyItem.height = this.height;
        hMKeyItem.alpha = this.alpha;
        hMKeyItem.scale = this.scale;
        hMKeyItem.x = this.x;
        hMKeyItem.y = this.y;
        hMKeyItem.top = this.top;
        hMKeyItem.left = this.left;
        hMKeyItem.right = this.right;
        hMKeyItem.bottom = this.bottom;
        hMKeyItem.guide = this.guide;
        return hMKeyItem;
    }

    @Nullable
    public final Integer getAlpha() {
        return this.alpha;
    }

    @Nullable
    public final Integer getBottom() {
        return this.bottom;
    }

    @Nullable
    public final Integer getCode() {
        return this.code;
    }

    @Nullable
    public final List<HMKeyItem> getCombine() {
        return this.combine;
    }

    @Nullable
    public final Guide getGuide() {
        return this.guide;
    }

    public final int getHeight() {
        return this.height;
    }

    @Nullable
    public final String getIcon() {
        return this.icon;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    @Nullable
    public final Integer getLeft() {
        return this.left;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getNickname() {
        return this.nickname;
    }

    @Nullable
    public final String getResBackground() {
        return this.resBackground;
    }

    @Nullable
    public final String getResDefault() {
        return this.resDefault;
    }

    @Nullable
    public final String getResPressed() {
        return this.resPressed;
    }

    @Nullable
    public final Integer getRight() {
        return this.right;
    }

    @Nullable
    public final Float getScale() {
        return this.scale;
    }

    @Nullable
    public final Integer getTop() {
        return this.top;
    }

    public final int getWidth() {
        return this.width;
    }

    public final int getX() {
        return this.x;
    }

    public final int getY() {
        return this.y;
    }

    public final void setAlpha(@Nullable Integer num) {
        this.alpha = num;
    }

    public final void setBottom(@Nullable Integer num) {
        this.bottom = num;
    }

    public final void setCode(@Nullable Integer num) {
        this.code = num;
    }

    public final void setCombine(@Nullable List<HMKeyItem> list) {
        this.combine = list;
    }

    public final void setGuide(@Nullable Guide guide) {
        this.guide = guide;
    }

    public final void setHeight(int i10) {
        this.height = i10;
    }

    public final void setIcon(@Nullable String str) {
        this.icon = str;
    }

    public final void setKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.key = str;
    }

    public final void setLeft(@Nullable Integer num) {
        this.left = num;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setNickname(@Nullable String str) {
        this.nickname = str;
    }

    public final void setResBackground(@Nullable String str) {
        this.resBackground = str;
    }

    public final void setResDefault(@Nullable String str) {
        this.resDefault = str;
    }

    public final void setResPressed(@Nullable String str) {
        this.resPressed = str;
    }

    public final void setRight(@Nullable Integer num) {
        this.right = num;
    }

    public final void setScale(@Nullable Float f10) {
        this.scale = f10;
    }

    public final void setTop(@Nullable Integer num) {
        this.top = num;
    }

    public final void setWidth(int i10) {
        this.width = i10;
    }

    public final void setX(int i10) {
        this.x = i10;
    }

    public final void setY(int i10) {
        this.y = i10;
    }
}
