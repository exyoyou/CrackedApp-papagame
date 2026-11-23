package com.join.kotlin.module.hmcloud.viewmodel;

import androidx.core.app.NotificationCompat;
import com.join.kotlin.module.hmcloud.pad.HMDpadDirection;
import com.join.kotlin.module.hmcloud.pad.HMKeyData;
import com.papa.controller.core.PadKeyEvent;
import com.papa.controller.core.PadMotionEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0001J\u000e\u0010\u0019\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u001cR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001d\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00130\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010R\u0017\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\r0\u0016¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001d"}, d2 = {"Lcom/join/kotlin/module/hmcloud/viewmodel/InputEventMapper;", "", "viewModel", "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "<init>", "(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)V", "getViewModel", "()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "performInputEvent", "", NotificationCompat.CATEGORY_EVENT, "keyMap", "", "", "Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;", "getKeyMap", "()Ljava/util/Map;", "dpadMap", "", "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;", "getDpadMap", "dpadSet", "", "getDpadSet", "()Ljava/util/Set;", "onHitKey", "Lcom/papa/controller/core/PadKeyEvent;", "onHitKeyStick", "Lcom/papa/controller/core/PadMotionEvent;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/InputEventMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1614:1\n1617#2,9:1615\n1869#2:1624\n1870#2:1626\n1626#2:1627\n1617#2,9:1628\n1869#2:1637\n1870#2:1639\n1626#2:1640\n1#3:1625\n1#3:1638\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/InputEventMapper\n*L\n1580#1:1615,9\n1580#1:1624\n1580#1:1626\n1580#1:1627\n1588#1:1628,9\n1588#1:1637\n1588#1:1639\n1588#1:1640\n1580#1:1625\n1588#1:1638\n*E\n"})
public final class InputEventMapper {

    @NotNull
    private final Map<Integer, HMDpadDirection> dpadMap;

    @NotNull
    private final Set<Integer> dpadSet;

    @NotNull
    private final Map<Integer, HMKeyData> keyMap;

    @NotNull
    private final HMCloudMainViewModel viewModel;

    public InputEventMapper(@NotNull HMCloudMainViewModel viewModel) {
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        this.viewModel = viewModel;
        HMKeyData hMKeyData = HMKeyData.KeyB;
        this.keyMap = MapsKt__MapsKt.mutableMapOf(TuplesKt.to(102, HMKeyData.BtnLB), TuplesKt.to(104, HMKeyData.BtnLT), TuplesKt.to(103, HMKeyData.BtnRB), TuplesKt.to(105, HMKeyData.BtnRT), TuplesKt.to(21, HMKeyData.VkLeft), TuplesKt.to(19, HMKeyData.VkUp), TuplesKt.to(22, HMKeyData.VkRight), TuplesKt.to(20, HMKeyData.VkDown), TuplesKt.to(99, HMKeyData.KeyX), TuplesKt.to(96, HMKeyData.KeyA), TuplesKt.to(100, HMKeyData.KeyY), TuplesKt.to(97, hMKeyData), TuplesKt.to(4, hMKeyData), TuplesKt.to(109, HMKeyData.BtnSelect), TuplesKt.to(108, HMKeyData.BtnStart), TuplesKt.to(106, HMKeyData.BtnLS), TuplesKt.to(107, HMKeyData.BtnRS));
        this.dpadMap = MapsKt__MapsKt.mapOf(TuplesKt.to(21, HMDpadDirection.Left), TuplesKt.to(19, HMDpadDirection.Up), TuplesKt.to(22, HMDpadDirection.Right), TuplesKt.to(20, HMDpadDirection.Down));
        this.dpadSet = new LinkedHashSet();
    }

    @NotNull
    public final Map<Integer, HMDpadDirection> getDpadMap() {
        return this.dpadMap;
    }

    @NotNull
    public final Set<Integer> getDpadSet() {
        return this.dpadSet;
    }

    @NotNull
    public final Map<Integer, HMKeyData> getKeyMap() {
        return this.keyMap;
    }

    @NotNull
    public final HMCloudMainViewModel getViewModel() {
        return this.viewModel;
    }

    public final void onHitKey(@NotNull PadKeyEvent event) {
        HMKeyData hMKeyData;
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.w() == 0) {
            HMKeyData hMKeyData2 = this.keyMap.get(Integer.valueOf(event.y()));
            if (hMKeyData2 != null) {
                if (!this.dpadMap.keySet().contains(Integer.valueOf(event.y()))) {
                    this.viewModel.performClick(hMKeyData2.getKey(), true);
                    return;
                }
                this.dpadSet.add(Integer.valueOf(event.y()));
                Set<Integer> set = this.dpadSet;
                ArrayList arrayList = new ArrayList();
                Iterator<T> it2 = set.iterator();
                while (it2.hasNext()) {
                    HMDpadDirection hMDpadDirection = this.dpadMap.get(Integer.valueOf(((Number) it2.next()).intValue()));
                    if (hMDpadDirection != null) {
                        arrayList.add(hMDpadDirection);
                    }
                }
                this.viewModel.performDirection(hMKeyData2.getKey(), arrayList);
                return;
            }
            return;
        }
        if (event.w() != 1) {
            if (event.w() == 2) {
                float fA = event.A();
                if ((event.y() == 104 || event.y() == 105) && (hMKeyData = this.keyMap.get(Integer.valueOf(event.y()))) != null) {
                    this.viewModel.performClick(hMKeyData.getKey(), fA > 0.0f);
                    return;
                }
                return;
            }
            return;
        }
        HMKeyData hMKeyData3 = this.keyMap.get(Integer.valueOf(event.y()));
        if (hMKeyData3 != null) {
            if (!this.dpadMap.keySet().contains(Integer.valueOf(event.y()))) {
                this.viewModel.performClick(hMKeyData3.getKey(), false);
                return;
            }
            this.dpadSet.remove(Integer.valueOf(event.y()));
            Set<Integer> set2 = this.dpadSet;
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it3 = set2.iterator();
            while (it3.hasNext()) {
                HMDpadDirection hMDpadDirection2 = this.dpadMap.get(Integer.valueOf(((Number) it3.next()).intValue()));
                if (hMDpadDirection2 != null) {
                    arrayList2.add(hMDpadDirection2);
                }
            }
            this.viewModel.performDirection(hMKeyData3.getKey(), arrayList2);
        }
    }

    public final void onHitKeyStick(@NotNull PadMotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        float fY = event.y();
        float fA = event.A();
        if (event.w() == 200) {
            this.viewModel.performTrackball(HMKeyData.JoyL.getKey(), fY, fA);
        } else if (event.w() == 201) {
            this.viewModel.performTrackball(HMKeyData.JoyR.getKey(), fY, fA);
        }
    }

    public final void performInputEvent(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event instanceof PadKeyEvent) {
            onHitKey((PadKeyEvent) event);
        } else if (event instanceof PadMotionEvent) {
            onHitKeyStick((PadMotionEvent) event);
        }
    }
}
