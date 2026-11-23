package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
public class ChainRun extends WidgetRun {
    private int chainStyle;
    ArrayList<WidgetRun> widgets;

    public ChainRun(ConstraintWidget constraintWidget, int i10) {
        super(constraintWidget);
        this.widgets = new ArrayList<>();
        this.orientation = i10;
        build();
    }

    private void build() {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2 = this.widget;
        ConstraintWidget previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
        while (true) {
            ConstraintWidget constraintWidget3 = previousChainMember;
            constraintWidget = constraintWidget2;
            constraintWidget2 = constraintWidget3;
            if (constraintWidget2 == null) {
                break;
            } else {
                previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
            }
        }
        this.widget = constraintWidget;
        this.widgets.add(constraintWidget.getRun(this.orientation));
        ConstraintWidget nextChainMember = constraintWidget.getNextChainMember(this.orientation);
        while (nextChainMember != null) {
            this.widgets.add(nextChainMember.getRun(this.orientation));
            nextChainMember = nextChainMember.getNextChainMember(this.orientation);
        }
        for (WidgetRun widgetRun : this.widgets) {
            int i10 = this.orientation;
            if (i10 == 0) {
                widgetRun.widget.horizontalChainRun = this;
            } else if (i10 == 1) {
                widgetRun.widget.verticalChainRun = this;
            }
        }
        if ((this.orientation == 0 && ((ConstraintWidgetContainer) this.widget.getParent()).isRtl()) && this.widgets.size() > 1) {
            ArrayList<WidgetRun> arrayList = this.widgets;
            this.widget = arrayList.get(arrayList.size() - 1).widget;
        }
        this.chainStyle = this.orientation == 0 ? this.widget.getHorizontalChainStyle() : this.widget.getVerticalChainStyle();
    }

    private ConstraintWidget getFirstVisibleWidget() {
        for (int i10 = 0; i10 < this.widgets.size(); i10++) {
            WidgetRun widgetRun = this.widgets.get(i10);
            if (widgetRun.widget.getVisibility() != 8) {
                return widgetRun.widget;
            }
        }
        return null;
    }

    private ConstraintWidget getLastVisibleWidget() {
        for (int size = this.widgets.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.widgets.get(size);
            if (widgetRun.widget.getVisibility() != 8) {
                return widgetRun.widget;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void apply() {
        Iterator<WidgetRun> it2 = this.widgets.iterator();
        while (it2.hasNext()) {
            it2.next().apply();
        }
        int size = this.widgets.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = this.widgets.get(0).widget;
        ConstraintWidget constraintWidget2 = this.widgets.get(size - 1).widget;
        if (this.orientation == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
            DependencyNode target = getTarget(constraintAnchor, 0);
            int margin = constraintAnchor.getMargin();
            ConstraintWidget firstVisibleWidget = getFirstVisibleWidget();
            if (firstVisibleWidget != null) {
                margin = firstVisibleWidget.mLeft.getMargin();
            }
            if (target != null) {
                addTarget(this.start, target, margin);
            }
            DependencyNode target2 = getTarget(constraintAnchor2, 0);
            int margin2 = constraintAnchor2.getMargin();
            ConstraintWidget lastVisibleWidget = getLastVisibleWidget();
            if (lastVisibleWidget != null) {
                margin2 = lastVisibleWidget.mRight.getMargin();
            }
            if (target2 != null) {
                addTarget(this.end, target2, -margin2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
            DependencyNode target3 = getTarget(constraintAnchor3, 1);
            int margin3 = constraintAnchor3.getMargin();
            ConstraintWidget firstVisibleWidget2 = getFirstVisibleWidget();
            if (firstVisibleWidget2 != null) {
                margin3 = firstVisibleWidget2.mTop.getMargin();
            }
            if (target3 != null) {
                addTarget(this.start, target3, margin3);
            }
            DependencyNode target4 = getTarget(constraintAnchor4, 1);
            int margin4 = constraintAnchor4.getMargin();
            ConstraintWidget lastVisibleWidget2 = getLastVisibleWidget();
            if (lastVisibleWidget2 != null) {
                margin4 = lastVisibleWidget2.mBottom.getMargin();
            }
            if (target4 != null) {
                addTarget(this.end, target4, -margin4);
            }
        }
        this.start.updateDelegate = this;
        this.end.updateDelegate = this;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        for (int i10 = 0; i10 < this.widgets.size(); i10++) {
            this.widgets.get(i10).applyToWidget();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void clear() {
        this.runGroup = null;
        Iterator<WidgetRun> it2 = this.widgets.iterator();
        while (it2.hasNext()) {
            it2.next().clear();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public long getWrapDimension() {
        int size = this.widgets.size();
        long wrapDimension = 0;
        for (int i10 = 0; i10 < size; i10++) {
            WidgetRun widgetRun = this.widgets.get(i10);
            wrapDimension = wrapDimension + ((long) widgetRun.start.margin) + widgetRun.getWrapDimension() + ((long) widgetRun.end.margin);
        }
        return wrapDimension;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void reset() {
        this.start.resolved = false;
        this.end.resolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean supportsWrapComputation() {
        int size = this.widgets.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!this.widgets.get(i10).supportsWrapComputation()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("ChainRun ");
        sb2.append(this.orientation == 0 ? "horizontal : " : "vertical : ");
        for (WidgetRun widgetRun : this.widgets) {
            sb2.append(SimpleComparison.LESS_THAN_OPERATION);
            sb2.append(widgetRun);
            sb2.append("> ");
        }
        return sb2.toString();
    }

    /* JADX WARN: Code duplicated, block: B:113:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:294:0x00f4 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:65:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ec A[ADDED_TO_REGION] */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        float f10;
        boolean z10;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        float f11;
        if (this.start.resolved && this.end.resolved) {
            ConstraintWidget parent = this.widget.getParent();
            boolean zIsRtl = parent instanceof ConstraintWidgetContainer ? ((ConstraintWidgetContainer) parent).isRtl() : false;
            int i22 = this.end.value - this.start.value;
            int size = this.widgets.size();
            int i23 = 0;
            while (true) {
                i10 = -1;
                i11 = 8;
                if (i23 >= size) {
                    i23 = -1;
                    break;
                } else if (this.widgets.get(i23).widget.getVisibility() != 8) {
                    break;
                } else {
                    i23++;
                }
            }
            int i24 = size - 1;
            for (int i25 = i24; i25 >= 0; i25--) {
                if (this.widgets.get(i25).widget.getVisibility() != 8) {
                    i10 = i25;
                    break;
                }
            }
            int i26 = 0;
            while (true) {
                if (i26 >= 2) {
                    i12 = 0;
                    i13 = 0;
                    i14 = 0;
                    f10 = 0.0f;
                    break;
                }
                int i27 = 0;
                i13 = 0;
                i14 = 0;
                int i28 = 0;
                f10 = 0.0f;
                while (i27 < size) {
                    WidgetRun widgetRun = this.widgets.get(i27);
                    if (widgetRun.widget.getVisibility() != i11) {
                        i28++;
                        if (i27 > 0 && i27 >= i23) {
                            i13 += widgetRun.start.margin;
                        }
                        DimensionDependency dimensionDependency = widgetRun.dimension;
                        int i29 = dimensionDependency.value;
                        boolean z11 = widgetRun.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        if (z11) {
                            int i30 = this.orientation;
                            if (i30 == 0 && !widgetRun.widget.horizontalRun.dimension.resolved) {
                                return;
                            }
                            if (i30 == 1 && !widgetRun.widget.verticalRun.dimension.resolved) {
                                return;
                            } else {
                                i20 = i29;
                            }
                        } else {
                            i20 = i29;
                            if (widgetRun.matchConstraintsType == 1 && i26 == 0) {
                                i21 = dimensionDependency.wrapValue;
                                i14++;
                            } else {
                                if (dimensionDependency.resolved) {
                                    i21 = i20;
                                }
                                if (z11) {
                                    i13 += i21;
                                } else {
                                    i14++;
                                    f11 = widgetRun.widget.mWeight[this.orientation];
                                    if (f11 >= 0.0f) {
                                        f10 += f11;
                                    }
                                }
                                if (i27 >= i24 && i27 < i10) {
                                    i13 += -widgetRun.end.margin;
                                }
                            }
                            z11 = true;
                            if (z11) {
                                i14++;
                                f11 = widgetRun.widget.mWeight[this.orientation];
                                if (f11 >= 0.0f) {
                                    f10 += f11;
                                }
                            } else {
                                i13 += i21;
                            }
                            if (i27 >= i24) {
                            }
                        }
                        i21 = i20;
                        if (z11) {
                            i14++;
                            f11 = widgetRun.widget.mWeight[this.orientation];
                            if (f11 >= 0.0f) {
                                f10 += f11;
                            }
                        } else {
                            i13 += i21;
                        }
                        if (i27 >= i24) {
                        }
                    }
                    i27++;
                    i11 = 8;
                }
                if (i13 < i22 || i14 == 0) {
                    i12 = i28;
                    break;
                } else {
                    i26++;
                    i11 = 8;
                }
            }
            int i31 = this.start.value;
            if (zIsRtl) {
                i31 = this.end.value;
            }
            if (i13 > i22) {
                i31 = zIsRtl ? i31 + ((int) (((i13 - i22) / 2.0f) + 0.5f)) : i31 - ((int) (((i13 - i22) / 2.0f) + 0.5f));
            }
            if (i14 > 0) {
                float f12 = i22 - i13;
                int i32 = (int) ((f12 / i14) + 0.5f);
                int i33 = 0;
                int i34 = 0;
                while (i33 < size) {
                    WidgetRun widgetRun2 = this.widgets.get(i33);
                    int i35 = i32;
                    int i36 = i13;
                    if (widgetRun2.widget.getVisibility() != 8 && widgetRun2.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        DimensionDependency dimensionDependency2 = widgetRun2.dimension;
                        if (dimensionDependency2.resolved) {
                            zIsRtl = zIsRtl;
                            i31 = i31;
                            f12 = f12;
                        } else {
                            int i37 = f10 > 0.0f ? (int) (((widgetRun2.widget.mWeight[this.orientation] * f12) / f10) + 0.5f) : i35;
                            if (this.orientation == 0) {
                                ConstraintWidget constraintWidget = widgetRun2.widget;
                                i19 = constraintWidget.mMatchConstraintMaxWidth;
                                i18 = constraintWidget.mMatchConstraintMinWidth;
                            } else {
                                ConstraintWidget constraintWidget2 = widgetRun2.widget;
                                int i38 = constraintWidget2.mMatchConstraintMaxHeight;
                                i18 = constraintWidget2.mMatchConstraintMinHeight;
                                i19 = i38;
                            }
                            int iMax = Math.max(i18, widgetRun2.matchConstraintsType == 1 ? Math.min(i37, dimensionDependency2.wrapValue) : i37);
                            if (i19 > 0) {
                                iMax = Math.min(i19, iMax);
                            }
                            if (iMax != i37) {
                                i34++;
                                i37 = iMax;
                            }
                            widgetRun2.dimension.resolve(i37);
                        }
                    } else {
                        zIsRtl = zIsRtl;
                        i31 = i31;
                        f12 = f12;
                    }
                    i33++;
                    i32 = i35;
                    i13 = i36;
                    i31 = i31;
                    f12 = f12;
                    zIsRtl = zIsRtl;
                    i12 = i12;
                }
                z10 = zIsRtl;
                i15 = i12;
                i16 = i31;
                int i39 = i13;
                if (i34 > 0) {
                    i14 -= i34;
                    int i40 = 0;
                    for (int i41 = 0; i41 < size; i41++) {
                        WidgetRun widgetRun3 = this.widgets.get(i41);
                        if (widgetRun3.widget.getVisibility() != 8) {
                            if (i41 > 0 && i41 >= i23) {
                                i40 += widgetRun3.start.margin;
                            }
                            i40 += widgetRun3.dimension.value;
                            if (i41 < i24 && i41 < i10) {
                                i40 += -widgetRun3.end.margin;
                            }
                        }
                    }
                    i13 = i40;
                } else {
                    i13 = i39;
                }
                i17 = 2;
                if (this.chainStyle == 2 && i34 == 0) {
                    this.chainStyle = 0;
                }
            } else {
                z10 = zIsRtl;
                i15 = i12;
                i16 = i31;
                i17 = 2;
            }
            if (i13 > i22) {
                this.chainStyle = i17;
            }
            if (i15 > 0 && i14 == 0 && i23 == i10) {
                this.chainStyle = i17;
            }
            int i42 = this.chainStyle;
            if (i42 == 1) {
                int i43 = i15;
                int i44 = i43 > 1 ? (i22 - i13) / (i43 - 1) : i43 == 1 ? (i22 - i13) / 2 : 0;
                if (i14 > 0) {
                    i44 = 0;
                }
                int i45 = i16;
                for (int i46 = 0; i46 < size; i46++) {
                    WidgetRun widgetRun4 = this.widgets.get(z10 ? size - (i46 + 1) : i46);
                    if (widgetRun4.widget.getVisibility() == 8) {
                        widgetRun4.start.resolve(i45);
                        widgetRun4.end.resolve(i45);
                    } else {
                        if (i46 > 0) {
                            i45 = z10 ? i45 - i44 : i45 + i44;
                        }
                        if (i46 > 0 && i46 >= i23) {
                            i45 = z10 ? i45 - widgetRun4.start.margin : i45 + widgetRun4.start.margin;
                        }
                        if (z10) {
                            widgetRun4.end.resolve(i45);
                        } else {
                            widgetRun4.start.resolve(i45);
                        }
                        DimensionDependency dimensionDependency3 = widgetRun4.dimension;
                        int i47 = dimensionDependency3.value;
                        if (widgetRun4.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.matchConstraintsType == 1) {
                            i47 = dimensionDependency3.wrapValue;
                        }
                        i45 = z10 ? i45 - i47 : i45 + i47;
                        if (z10) {
                            widgetRun4.start.resolve(i45);
                        } else {
                            widgetRun4.end.resolve(i45);
                        }
                        widgetRun4.resolved = true;
                        if (i46 < i24 && i46 < i10) {
                            i45 = z10 ? i45 - (-widgetRun4.end.margin) : i45 + (-widgetRun4.end.margin);
                        }
                    }
                }
                return;
            }
            int i48 = i15;
            if (i42 == 0) {
                int i49 = (i22 - i13) / (i48 + 1);
                if (i14 > 0) {
                    i49 = 0;
                }
                int i50 = i16;
                for (int i51 = 0; i51 < size; i51++) {
                    WidgetRun widgetRun5 = this.widgets.get(z10 ? size - (i51 + 1) : i51);
                    if (widgetRun5.widget.getVisibility() == 8) {
                        widgetRun5.start.resolve(i50);
                        widgetRun5.end.resolve(i50);
                    } else {
                        int i52 = z10 ? i50 - i49 : i50 + i49;
                        if (i51 > 0 && i51 >= i23) {
                            i52 = z10 ? i52 - widgetRun5.start.margin : i52 + widgetRun5.start.margin;
                        }
                        if (z10) {
                            widgetRun5.end.resolve(i52);
                        } else {
                            widgetRun5.start.resolve(i52);
                        }
                        DimensionDependency dimensionDependency4 = widgetRun5.dimension;
                        int iMin = dimensionDependency4.value;
                        if (widgetRun5.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.matchConstraintsType == 1) {
                            iMin = Math.min(iMin, dimensionDependency4.wrapValue);
                        }
                        i50 = z10 ? i52 - iMin : i52 + iMin;
                        if (z10) {
                            widgetRun5.start.resolve(i50);
                        } else {
                            widgetRun5.end.resolve(i50);
                        }
                        if (i51 < i24 && i51 < i10) {
                            i50 = z10 ? i50 - (-widgetRun5.end.margin) : i50 + (-widgetRun5.end.margin);
                        }
                    }
                }
                return;
            }
            if (i42 == 2) {
                float horizontalBiasPercent = this.orientation == 0 ? this.widget.getHorizontalBiasPercent() : this.widget.getVerticalBiasPercent();
                if (z10) {
                    horizontalBiasPercent = 1.0f - horizontalBiasPercent;
                }
                int i53 = (int) (((i22 - i13) * horizontalBiasPercent) + 0.5f);
                if (i53 < 0 || i14 > 0) {
                    i53 = 0;
                }
                int i54 = z10 ? i16 - i53 : i16 + i53;
                for (int i55 = 0; i55 < size; i55++) {
                    WidgetRun widgetRun6 = this.widgets.get(z10 ? size - (i55 + 1) : i55);
                    if (widgetRun6.widget.getVisibility() == 8) {
                        widgetRun6.start.resolve(i54);
                        widgetRun6.end.resolve(i54);
                    } else {
                        if (i55 > 0 && i55 >= i23) {
                            i54 = z10 ? i54 - widgetRun6.start.margin : i54 + widgetRun6.start.margin;
                        }
                        if (z10) {
                            widgetRun6.end.resolve(i54);
                        } else {
                            widgetRun6.start.resolve(i54);
                        }
                        DimensionDependency dimensionDependency5 = widgetRun6.dimension;
                        int i56 = dimensionDependency5.value;
                        if (widgetRun6.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.matchConstraintsType == 1) {
                            i56 = dimensionDependency5.wrapValue;
                        }
                        i54 = z10 ? i54 - i56 : i54 + i56;
                        if (z10) {
                            widgetRun6.start.resolve(i54);
                        } else {
                            widgetRun6.end.resolve(i54);
                        }
                        if (i55 < i24 && i55 < i10) {
                            i54 = z10 ? i54 - (-widgetRun6.end.margin) : i54 + (-widgetRun6.end.margin);
                        }
                    }
                }
            }
        }
    }
}
