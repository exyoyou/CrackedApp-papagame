package com.join.kotlin.ui.modleregin.modle;

import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.fragment.j1;
import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\nHÆ\u0003J\\\u0010\u001f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010 J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\u0003HÖ\u0001J\t\u0010%\u001a\u00020\u0006HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0011\u0010\u000fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0019\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006&"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/BTDynamicModle;", "", j1.f69849n, "", "sort", "collectionId", "", "collectionTplId", "gameEntityList", "", "Lcom/join/mgps/dto/CollectionBeanSub;", "gameEntity", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/join/mgps/dto/CollectionBeanSub;)V", "getModelType", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getSort", "getCollectionId", "()Ljava/lang/String;", "getCollectionTplId", "getGameEntityList", "()Ljava/util/List;", "getGameEntity", "()Lcom/join/mgps/dto/CollectionBeanSub;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/join/mgps/dto/CollectionBeanSub;)Lcom/join/kotlin/ui/modleregin/modle/BTDynamicModle;", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class BTDynamicModle {

    @Nullable
    private final String collectionId;

    @Nullable
    private final String collectionTplId;

    @Nullable
    private final CollectionBeanSub gameEntity;

    @Nullable
    private final List<CollectionBeanSub> gameEntityList;

    @Nullable
    private final Integer modelType;

    @Nullable
    private final Integer sort;

    /* JADX WARN: Multi-variable type inference failed */
    public BTDynamicModle(@Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable String str2, @Nullable List<? extends CollectionBeanSub> list, @Nullable CollectionBeanSub collectionBeanSub) {
        this.modelType = num;
        this.sort = num2;
        this.collectionId = str;
        this.collectionTplId = str2;
        this.gameEntityList = list;
        this.gameEntity = collectionBeanSub;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BTDynamicModle copy$default(BTDynamicModle bTDynamicModle, Integer num, Integer num2, String str, String str2, List list, CollectionBeanSub collectionBeanSub, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = bTDynamicModle.modelType;
        }
        if ((i10 & 2) != 0) {
            num2 = bTDynamicModle.sort;
        }
        Integer num3 = num2;
        if ((i10 & 4) != 0) {
            str = bTDynamicModle.collectionId;
        }
        String str3 = str;
        if ((i10 & 8) != 0) {
            str2 = bTDynamicModle.collectionTplId;
        }
        String str4 = str2;
        if ((i10 & 16) != 0) {
            list = bTDynamicModle.gameEntityList;
        }
        List list2 = list;
        if ((i10 & 32) != 0) {
            collectionBeanSub = bTDynamicModle.gameEntity;
        }
        return bTDynamicModle.copy(num, num3, str3, str4, list2, collectionBeanSub);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getModelType() {
        return this.modelType;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getSort() {
        return this.sort;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCollectionId() {
        return this.collectionId;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCollectionTplId() {
        return this.collectionTplId;
    }

    @Nullable
    public final List<CollectionBeanSub> component5() {
        return this.gameEntityList;
    }

    @Nullable
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final CollectionBeanSub getGameEntity() {
        return this.gameEntity;
    }

    @NotNull
    public final BTDynamicModle copy(@Nullable Integer modelType, @Nullable Integer sort, @Nullable String collectionId, @Nullable String collectionTplId, @Nullable List<? extends CollectionBeanSub> gameEntityList, @Nullable CollectionBeanSub gameEntity) {
        return new BTDynamicModle(modelType, sort, collectionId, collectionTplId, gameEntityList, gameEntity);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BTDynamicModle)) {
            return false;
        }
        BTDynamicModle bTDynamicModle = (BTDynamicModle) other;
        return Intrinsics.areEqual(this.modelType, bTDynamicModle.modelType) && Intrinsics.areEqual(this.sort, bTDynamicModle.sort) && Intrinsics.areEqual(this.collectionId, bTDynamicModle.collectionId) && Intrinsics.areEqual(this.collectionTplId, bTDynamicModle.collectionTplId) && Intrinsics.areEqual(this.gameEntityList, bTDynamicModle.gameEntityList) && Intrinsics.areEqual(this.gameEntity, bTDynamicModle.gameEntity);
    }

    @Nullable
    public final String getCollectionId() {
        return this.collectionId;
    }

    @Nullable
    public final String getCollectionTplId() {
        return this.collectionTplId;
    }

    @Nullable
    public final CollectionBeanSub getGameEntity() {
        return this.gameEntity;
    }

    @Nullable
    public final List<CollectionBeanSub> getGameEntityList() {
        return this.gameEntityList;
    }

    @Nullable
    public final Integer getModelType() {
        return this.modelType;
    }

    @Nullable
    public final Integer getSort() {
        return this.sort;
    }

    public int hashCode() {
        Integer num = this.modelType;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.sort;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str = this.collectionId;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.collectionTplId;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<CollectionBeanSub> list = this.gameEntityList;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        CollectionBeanSub collectionBeanSub = this.gameEntity;
        return iHashCode5 + (collectionBeanSub != null ? collectionBeanSub.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "BTDynamicModle(modelType=" + this.modelType + ", sort=" + this.sort + ", collectionId=" + this.collectionId + ", collectionTplId=" + this.collectionTplId + ", gameEntityList=" + this.gameEntityList + ", gameEntity=" + this.gameEntity + ')';
    }
}
