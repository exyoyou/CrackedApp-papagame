package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.SharedValues;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
public class ViewTransitionController {
    ArrayList<ViewTransition.Animate> animations;
    private final MotionLayout mMotionLayout;
    private HashSet<View> mRelatedViews;
    private ArrayList<ViewTransition> viewTransitions = new ArrayList<>();
    private String TAG = "ViewTransitionController";
    ArrayList<ViewTransition.Animate> removeList = new ArrayList<>();

    public ViewTransitionController(MotionLayout layout) {
        this.mMotionLayout = layout;
    }

    private void listenForSharedVariable(final ViewTransition viewTransition, final boolean isSet) {
        final int sharedValueID = viewTransition.getSharedValueID();
        final int sharedValue = viewTransition.getSharedValue();
        ConstraintLayout.getSharedValues().addListener(viewTransition.getSharedValueID(), new SharedValues.SharedValuesListener() { // from class: androidx.constraintlayout.motion.widget.ViewTransitionController.1
            @Override // androidx.constraintlayout.widget.SharedValues.SharedValuesListener
            public void onNewValue(int id2, int value, int oldValue) {
                int sharedValueCurrent = viewTransition.getSharedValueCurrent();
                viewTransition.setSharedValueCurrent(value);
                if (sharedValueID != id2 || sharedValueCurrent == value) {
                    return;
                }
                if (isSet) {
                    if (sharedValue == value) {
                        int childCount = ViewTransitionController.this.mMotionLayout.getChildCount();
                        for (int i10 = 0; i10 < childCount; i10++) {
                            View childAt = ViewTransitionController.this.mMotionLayout.getChildAt(i10);
                            if (viewTransition.matchesView(childAt)) {
                                int currentState = ViewTransitionController.this.mMotionLayout.getCurrentState();
                                ConstraintSet constraintSet = ViewTransitionController.this.mMotionLayout.getConstraintSet(currentState);
                                ViewTransition viewTransition2 = viewTransition;
                                ViewTransitionController viewTransitionController = ViewTransitionController.this;
                                viewTransition2.applyTransition(viewTransitionController, viewTransitionController.mMotionLayout, currentState, constraintSet, childAt);
                            }
                        }
                        return;
                    }
                    return;
                }
                if (sharedValue != value) {
                    int childCount2 = ViewTransitionController.this.mMotionLayout.getChildCount();
                    for (int i11 = 0; i11 < childCount2; i11++) {
                        View childAt2 = ViewTransitionController.this.mMotionLayout.getChildAt(i11);
                        if (viewTransition.matchesView(childAt2)) {
                            int currentState2 = ViewTransitionController.this.mMotionLayout.getCurrentState();
                            ConstraintSet constraintSet2 = ViewTransitionController.this.mMotionLayout.getConstraintSet(currentState2);
                            ViewTransition viewTransition3 = viewTransition;
                            ViewTransitionController viewTransitionController2 = ViewTransitionController.this;
                            viewTransition3.applyTransition(viewTransitionController2, viewTransitionController2.mMotionLayout, currentState2, constraintSet2, childAt2);
                        }
                    }
                }
            }
        });
    }

    private void viewTransition(ViewTransition vt, View... view) {
        int currentState = this.mMotionLayout.getCurrentState();
        if (vt.mViewTransitionMode == 2) {
            vt.applyTransition(this, this.mMotionLayout, currentState, null, view);
            return;
        }
        if (currentState == -1) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("No support for ViewTransition within transition yet. Currently: ");
            sb2.append(this.mMotionLayout.toString());
        } else {
            ConstraintSet constraintSet = this.mMotionLayout.getConstraintSet(currentState);
            if (constraintSet == null) {
                return;
            }
            vt.applyTransition(this, this.mMotionLayout, currentState, constraintSet, view);
        }
    }

    public void add(ViewTransition viewTransition) {
        this.viewTransitions.add(viewTransition);
        this.mRelatedViews = null;
        if (viewTransition.getStateTransition() == 4) {
            listenForSharedVariable(viewTransition, true);
        } else if (viewTransition.getStateTransition() == 5) {
            listenForSharedVariable(viewTransition, false);
        }
    }

    void addAnimation(ViewTransition.Animate animation) {
        if (this.animations == null) {
            this.animations = new ArrayList<>();
        }
        this.animations.add(animation);
    }

    void animate() {
        ArrayList<ViewTransition.Animate> arrayList = this.animations;
        if (arrayList == null) {
            return;
        }
        Iterator<ViewTransition.Animate> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().mutate();
        }
        this.animations.removeAll(this.removeList);
        this.removeList.clear();
        if (this.animations.isEmpty()) {
            this.animations = null;
        }
    }

    boolean applyViewTransition(int viewTransitionId, MotionController motionController) {
        for (ViewTransition viewTransition : this.viewTransitions) {
            if (viewTransition.getId() == viewTransitionId) {
                viewTransition.mKeyFrames.addAllFrames(motionController);
                return true;
            }
        }
        return false;
    }

    void enableViewTransition(int id2, boolean enable) {
        for (ViewTransition viewTransition : this.viewTransitions) {
            if (viewTransition.getId() == id2) {
                viewTransition.setEnabled(enable);
                return;
            }
        }
    }

    void invalidate() {
        this.mMotionLayout.invalidate();
    }

    boolean isViewTransitionEnabled(int id2) {
        for (ViewTransition viewTransition : this.viewTransitions) {
            if (viewTransition.getId() == id2) {
                return viewTransition.isEnabled();
            }
        }
        return false;
    }

    void remove(int id2) {
        ViewTransition next;
        Iterator<ViewTransition> it2 = this.viewTransitions.iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (next.getId() != id2);
        if (next != null) {
            this.mRelatedViews = null;
            this.viewTransitions.remove(next);
        }
    }

    void removeAnimation(ViewTransition.Animate animation) {
        this.removeList.add(animation);
    }

    void touchEvent(MotionEvent event) {
        int currentState = this.mMotionLayout.getCurrentState();
        if (currentState == -1) {
            return;
        }
        if (this.mRelatedViews == null) {
            this.mRelatedViews = new HashSet<>();
            for (ViewTransition viewTransition : this.viewTransitions) {
                int childCount = this.mMotionLayout.getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    View childAt = this.mMotionLayout.getChildAt(i10);
                    if (viewTransition.matchesView(childAt)) {
                        childAt.getId();
                        this.mRelatedViews.add(childAt);
                    }
                }
            }
        }
        float x10 = event.getX();
        float y10 = event.getY();
        Rect rect = new Rect();
        int action = event.getAction();
        ArrayList<ViewTransition.Animate> arrayList = this.animations;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<ViewTransition.Animate> it2 = this.animations.iterator();
            while (it2.hasNext()) {
                it2.next().reactTo(action, x10, y10);
            }
        }
        if (action == 0 || action == 1) {
            ConstraintSet constraintSet = this.mMotionLayout.getConstraintSet(currentState);
            Iterator<ViewTransition> it3 = this.viewTransitions.iterator();
            while (it3.hasNext()) {
                ViewTransition next = it3.next();
                if (next.supports(action)) {
                    for (View view : this.mRelatedViews) {
                        if (next.matchesView(view)) {
                            view.getHitRect(rect);
                            if (rect.contains((int) x10, (int) y10)) {
                                next.applyTransition(this, this.mMotionLayout, currentState, constraintSet, view);
                            }
                            next = next;
                        }
                    }
                }
            }
        }
    }

    void viewTransition(int id2, View... views) {
        ArrayList arrayList = new ArrayList();
        for (ViewTransition viewTransition : this.viewTransitions) {
            if (viewTransition.getId() == id2) {
                for (View view : views) {
                    if (viewTransition.checkTags(view)) {
                        arrayList.add(view);
                    }
                }
                if (!arrayList.isEmpty()) {
                    viewTransition(viewTransition, (View[]) arrayList.toArray(new View[0]));
                    arrayList.clear();
                }
            }
        }
    }
}
