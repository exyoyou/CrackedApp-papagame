package com.haima.hmcp.virtual.views;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.ViewGroup;
import com.haima.hmcp.Constants;
import com.haima.hmcp.business.PluginContext;
import com.haima.hmcp.enums.EditStatus;
import com.haima.hmcp.proto.GSSDK;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.ScaleUtil;
import com.haima.hmcp.virtual.HmVirtualDeviceManager;
import com.haima.hmcp.virtual.HmVirtualDeviceUtils;
import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import com.haima.hmcp.virtual.listeners.HmVirtualViewListener;
import com.haima.hmcp.virtual.listeners.OperateListener;
import com.haima.hmcp.virtual.listeners.VirtualViewObserver;
import com.sdk.base.module.manager.SDKManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public abstract class HmBaseVirtualTextureView extends TextureView {
    protected static final int DIRECTION_DOWN = 2;
    protected static final int DIRECTION_LEFT = 4;
    protected static final int DIRECTION_LEFT_DOWN = 6;
    protected static final int DIRECTION_LEFT_UP = 5;
    protected static final int DIRECTION_RIGHT = 8;
    protected static final int DIRECTION_RIGHT_DOWN = 10;
    protected static final int DIRECTION_RIGHT_UP = 9;
    protected static final int DIRECTION_UP = 1;
    protected final String TAG;
    private Canvas canvas;
    private List<HmVirtualViewBean> defaultVirBeanList;
    private Thread drawThread;
    private boolean isAbleDraw;
    private List<HmVirtualViewBean.KeysDTO> keyDirectionList;
    private List<HmVirtualViewBean.KeysDTO> keyWasdList;
    private final Object lock;
    private boolean mHasLoadedFromJson;
    public boolean mIsUserConfig;
    private List<HmBaseVirtualView> mViews;
    private HashMap<String, VirtualViewObserver> observers;
    private final OperateListener operateListener;
    protected HmVirtualOperatorViewBase operatorView;
    private TextureView.SurfaceTextureListener surfaceTextureListener;
    public HmVirtualViewListener viewListener;
    protected int virtualType;

    public HmBaseVirtualTextureView(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.lock = new Object();
        this.mHasLoadedFromJson = false;
        this.surfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: com.haima.hmcp.virtual.views.HmBaseVirtualTextureView.1
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
                LogUtils.i(HmBaseVirtualTextureView.this.TAG, "drawSurface createDrawThread");
                HmBaseVirtualTextureView.this.isAbleDraw = true;
                if (HmBaseVirtualTextureView.this.drawThread == null) {
                    HmBaseVirtualTextureView.this.createDrawThread();
                    HmBaseVirtualTextureView.this.drawThread.start();
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                synchronized (HmBaseVirtualTextureView.this.lock) {
                    LogUtils.i(HmBaseVirtualTextureView.this.TAG, "drawSurface surfaceDestroyed");
                    HmBaseVirtualTextureView.this.isAbleDraw = false;
                    if (HmBaseVirtualTextureView.this.drawThread != null) {
                        HmBaseVirtualTextureView.this.drawThread = null;
                    }
                }
                return true;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        };
        this.viewListener = new HmVirtualViewListener() { // from class: com.haima.hmcp.virtual.views.HmBaseVirtualTextureView.2
            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onBtnMoveEvent(HmBaseVirtualView hmBaseVirtualView) {
                if (!HmVirtualDeviceManager.editMode) {
                    LogUtils.e(HmBaseVirtualTextureView.this.TAG, "now is not editMode");
                    return;
                }
                HmVirtualOperatorViewBase hmVirtualOperatorViewBase = HmBaseVirtualTextureView.this.operatorView;
                if (hmVirtualOperatorViewBase != null) {
                    hmVirtualOperatorViewBase.performGuide(3);
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onBtnTouchEvent(int i10, List<HmVirtualViewBean.KeysDTO> list, int i11, int i12) {
                LogUtils.d(HmBaseVirtualTextureView.this.TAG, "onBtnTouchEvent state =" + i10 + ";size=" + list.size() + ";sourceType=" + i11);
                if (HmBaseVirtualTextureView.this.touchInterceptCondition(i12)) {
                    LogUtils.d(HmBaseVirtualTextureView.this.TAG, "onBtnTouchEvent is ignored");
                    return;
                }
                for (HmVirtualViewBean.KeysDTO keysDTO : list) {
                    if (i11 == 1) {
                        HmBaseVirtualTextureView.this.receiveKeyBoardData(i10, keysDTO, i12);
                    } else {
                        HmBaseVirtualTextureView.this.receiveStickData(i10, keysDTO);
                    }
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onCheckBoxStateChanged(boolean z10, float f10) {
                LogUtils.d(HmBaseVirtualTextureView.this.TAG, "onCheckBoxStateChanged " + z10 + " " + f10);
                HmBaseVirtualTextureView.this.useSpecificSensitivity(z10, f10);
            }

            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onClickListener(HmBaseVirtualView hmBaseVirtualView) {
                if (!HmVirtualDeviceManager.editMode) {
                    LogUtils.e(HmBaseVirtualTextureView.this.TAG, "now is not editMode");
                    return;
                }
                HmVirtualOperatorViewBase hmVirtualOperatorViewBase = HmBaseVirtualTextureView.this.operatorView;
                if (hmVirtualOperatorViewBase != null) {
                    hmVirtualOperatorViewBase.selectVirtualView(hmBaseVirtualView);
                    HmBaseVirtualTextureView.this.operatorView.performGuide(2);
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onMouseTouchEvent(int i10, int i11, int i12, int i13, int i14) {
                GSSDK.OneInputOPData.InputOP inputOP;
                switch (i11) {
                    case 8:
                        inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_LEFT;
                        break;
                    case 9:
                        inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_RIGHT;
                        break;
                    case 10:
                        inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_MIDDLE;
                        break;
                    default:
                        inputOP = null;
                        break;
                }
                if (inputOP != null) {
                    if (i10 == 2) {
                        inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_MOV;
                    }
                    HmBaseVirtualTextureView.this.receiveMouseData(i10, i12, i13, inputOP);
                } else {
                    LogUtils.e(HmBaseVirtualTextureView.this.TAG, "onMouseTouchEvent error = " + i11);
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onRockerTouchEvent(int i10, List<HmVirtualViewBean.KeysDTO> list, int i11, int i12, int i13, int i14, float f10, float f11) {
                LogUtils.d(HmBaseVirtualTextureView.this.TAG, "onRockerTouchEvent :" + list.size() + ";" + i12 + ";" + f10 + ";" + f11);
                if (i12 == 3) {
                    HmBaseVirtualTextureView.this.parseDirectionData(i10, list, i13);
                    return;
                }
                if (i12 == 4 || i12 == 5) {
                    HmBaseVirtualTextureView.this.receiveStickRocker(i10, i12, f10, f11);
                } else if (i12 == 6 || i12 == 7) {
                    HmBaseVirtualTextureView.this.parseKeyBoardRocker(i10, list, i13, i14, i12);
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onViewEdit() {
                if (!HmVirtualDeviceManager.editMode) {
                    LogUtils.e(HmBaseVirtualTextureView.this.TAG, "now is not editMode");
                    return;
                }
                HmVirtualOperatorViewBase hmVirtualOperatorViewBase = HmBaseVirtualTextureView.this.operatorView;
                if (hmVirtualOperatorViewBase != null) {
                    hmVirtualOperatorViewBase.setResetEnabled(true);
                }
            }
        };
        this.operateListener = new OperateListener() { // from class: com.haima.hmcp.virtual.views.HmBaseVirtualTextureView.3
            @Override // com.haima.hmcp.virtual.listeners.OperateListener
            public void onAdd(HmVirtualViewBean hmVirtualViewBean) {
                synchronized (HmBaseVirtualTextureView.this.lock) {
                    int i10 = HmBaseVirtualTextureView.this.virtualType;
                    if (i10 == 1) {
                        HmVirtualDeviceUtils.picsSupplement(hmVirtualViewBean, HmVirtualDeviceUtils.PicsSupplementType.KEYBOARD);
                    } else if (i10 == 0) {
                        HmVirtualDeviceUtils.picsSupplement(hmVirtualViewBean, HmVirtualDeviceUtils.PicsSupplementType.XBOX);
                    }
                    HmVirtualDeviceManager hmVirtualDeviceManager = HmVirtualDeviceManager.get();
                    Context context2 = HmBaseVirtualTextureView.this.getContext();
                    HmBaseVirtualTextureView hmBaseVirtualTextureView = HmBaseVirtualTextureView.this;
                    HmBaseVirtualView hmBaseVirtualViewConvertOneBean2View = hmVirtualDeviceManager.convertOneBean2View(hmVirtualViewBean, context2, hmBaseVirtualTextureView.viewListener, hmBaseVirtualTextureView.virtualType);
                    if (hmBaseVirtualViewConvertOneBean2View != null) {
                        HmBaseVirtualTextureView.this.mViews.add(hmBaseVirtualViewConvertOneBean2View);
                        HmBaseVirtualTextureView.this.addObserver(hmBaseVirtualViewConvertOneBean2View);
                        HmBaseVirtualTextureView.this.defaultVirBeanList.add(hmBaseVirtualViewConvertOneBean2View.getViewBean());
                    }
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.OperateListener
            public void onDelete(HmBaseVirtualView hmBaseVirtualView) {
                synchronized (HmBaseVirtualTextureView.this.lock) {
                    HmBaseVirtualTextureView.this.mViews.remove(hmBaseVirtualView);
                    HmBaseVirtualTextureView.this.removeObserver(hmBaseVirtualView);
                    HmBaseVirtualTextureView.this.defaultVirBeanList.remove(hmBaseVirtualView.getViewBean());
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.OperateListener
            public void onExit() {
                HmVirtualDeviceManager.editMode = false;
                HmBaseVirtualTextureView.this.stopAnim();
                HmBaseVirtualTextureView.this.editKeyboardConfigNotify(HmVirtualDeviceManager.get().getCurrentConfigJson(), EditStatus.EDIT_STATE_EXIT);
                HmBaseVirtualTextureView hmBaseVirtualTextureView = HmBaseVirtualTextureView.this;
                if (hmBaseVirtualTextureView.virtualType == 1) {
                    hmBaseVirtualTextureView.loadVirtualData(HmVirtualDeviceManager.get().getKeyboardLayout(), 1);
                } else {
                    hmBaseVirtualTextureView.loadVirtualData(HmVirtualDeviceManager.get().getXboxLayout(), 0);
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.OperateListener
            public void onReset() {
                HmVirtualDeviceManager.editMode = false;
                HmBaseVirtualTextureView.this.stopAnim();
                HmBaseVirtualTextureView.this.editKeyboardConfigNotify(HmVirtualDeviceManager.get().getCurrentConfigJson(), EditStatus.EDIT_STATE_RESTORE);
                if (HmBaseVirtualTextureView.this.virtualType == 1) {
                    HmVirtualDeviceManager.get().deleteLocalKeyboardLayout(HmBaseVirtualTextureView.this.getContext());
                    HmBaseVirtualTextureView.this.loadVirtualData(HmVirtualDeviceManager.get().getKeyboardLayout(), 1);
                } else {
                    HmVirtualDeviceManager.get().deleteLocalXboxLayout(HmBaseVirtualTextureView.this.getContext());
                    HmBaseVirtualTextureView.this.loadVirtualData(HmVirtualDeviceManager.get().getXboxLayout(), 0);
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.OperateListener
            public void onSave(boolean z10) {
                synchronized (HmBaseVirtualTextureView.this.lock) {
                    HmBaseVirtualTextureView.this.notifySave();
                    HmVirtualDeviceManager hmVirtualDeviceManager = HmVirtualDeviceManager.get();
                    List<HmVirtualViewBean> list = HmBaseVirtualTextureView.this.defaultVirBeanList;
                    HmBaseVirtualTextureView hmBaseVirtualTextureView = HmBaseVirtualTextureView.this;
                    hmVirtualDeviceManager.saveLayout(list, hmBaseVirtualTextureView.virtualType, hmBaseVirtualTextureView.getContext(), HmBaseVirtualTextureView.this.mHasLoadedFromJson);
                    HmVirtualDeviceManager.editMode = false;
                    HmBaseVirtualTextureView hmBaseVirtualTextureView2 = HmBaseVirtualTextureView.this;
                    hmBaseVirtualTextureView2.mIsUserConfig = true;
                    hmBaseVirtualTextureView2.stopAnim();
                    String currentConfigJson = HmVirtualDeviceManager.get().getCurrentConfigJson();
                    if (z10) {
                        HmBaseVirtualTextureView.this.editKeyboardConfigNotify(currentConfigJson, EditStatus.EDIT_STATE_MODIFIED_SAVE);
                    } else {
                        HmBaseVirtualTextureView.this.editKeyboardConfigNotify(currentConfigJson, EditStatus.EDIT_STATE_NO_MODIFY_SAVE);
                    }
                    HmBaseVirtualTextureView hmBaseVirtualTextureView3 = HmBaseVirtualTextureView.this;
                    if (hmBaseVirtualTextureView3.virtualType == 1) {
                        hmBaseVirtualTextureView3.loadVirtualData(HmVirtualDeviceManager.get().getKeyboardLayout(), 1);
                    } else {
                        hmBaseVirtualTextureView3.loadVirtualData(HmVirtualDeviceManager.get().getXboxLayout(), 0);
                    }
                }
            }
        };
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addObserver(VirtualViewObserver virtualViewObserver) {
        if (virtualViewObserver == null) {
            return;
        }
        this.observers.put(virtualViewObserver.toString(), virtualViewObserver);
    }

    private boolean checkAdjacent(HmBaseVirtualView hmBaseVirtualView, HmBaseVirtualView hmBaseVirtualView2) {
        return Math.abs(((float) hmBaseVirtualView.getX()) - ((float) hmBaseVirtualView2.getX())) <= 20.0f || Math.abs(((float) hmBaseVirtualView.getY()) - ((float) hmBaseVirtualView2.getY())) <= 20.0f;
    }

    private void cleanObserver() {
        this.observers.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createDrawThread() {
        this.drawThread = new Thread(new Runnable() { // from class: com.haima.hmcp.virtual.views.HmBaseVirtualTextureView.4
            @Override // java.lang.Runnable
            public void run() {
                String str;
                String str2;
                Thread.currentThread().setName("HmDrawVirtualThread");
                LogUtils.i(HmBaseVirtualTextureView.this.TAG, "HmDrawVirtualThread start");
                while (HmBaseVirtualTextureView.this.isAbleDraw) {
                    try {
                        Thread.sleep(33L);
                    } catch (InterruptedException e10) {
                        e10.printStackTrace();
                    }
                    synchronized (HmBaseVirtualTextureView.this.lock) {
                        try {
                            if (!HmBaseVirtualTextureView.this.isAbleDraw || !HmBaseVirtualTextureView.this.isAvailable()) {
                                try {
                                    if (HmBaseVirtualTextureView.this.canvas != null) {
                                        HmBaseVirtualTextureView hmBaseVirtualTextureView = HmBaseVirtualTextureView.this;
                                        hmBaseVirtualTextureView.unlockCanvasAndPost(hmBaseVirtualTextureView.canvas);
                                    }
                                } catch (Exception unused) {
                                    LogUtils.e(HmBaseVirtualTextureView.this.TAG, "HmDrawVirtualThread unlock canvas error");
                                }
                                return;
                            }
                            HmBaseVirtualTextureView hmBaseVirtualTextureView2 = HmBaseVirtualTextureView.this;
                            hmBaseVirtualTextureView2.canvas = hmBaseVirtualTextureView2.lockCanvas();
                            HmBaseVirtualTextureView.this.canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                            for (HmBaseVirtualView hmBaseVirtualView : HmBaseVirtualTextureView.this.mViews) {
                                if (!HmBaseVirtualTextureView.this.isAbleDraw) {
                                    try {
                                        if (HmBaseVirtualTextureView.this.canvas != null) {
                                            HmBaseVirtualTextureView hmBaseVirtualTextureView3 = HmBaseVirtualTextureView.this;
                                            hmBaseVirtualTextureView3.unlockCanvasAndPost(hmBaseVirtualTextureView3.canvas);
                                        }
                                    } catch (Exception unused2) {
                                        LogUtils.e(HmBaseVirtualTextureView.this.TAG, "HmDrawVirtualThread unlock canvas error");
                                    }
                                    return;
                                }
                                hmBaseVirtualView.updateVirtualViewList(HmBaseVirtualTextureView.this.mViews);
                                hmBaseVirtualView.draw(HmBaseVirtualTextureView.this.canvas);
                            }
                            try {
                                try {
                                    if (HmBaseVirtualTextureView.this.canvas != null) {
                                        HmBaseVirtualTextureView hmBaseVirtualTextureView4 = HmBaseVirtualTextureView.this;
                                        hmBaseVirtualTextureView4.unlockCanvasAndPost(hmBaseVirtualTextureView4.canvas);
                                    }
                                } catch (Exception unused3) {
                                    str = HmBaseVirtualTextureView.this.TAG;
                                    str2 = "HmDrawVirtualThread unlock canvas error";
                                    LogUtils.e(str, str2);
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        } catch (Throwable th2) {
                            try {
                                LogUtils.e(HmBaseVirtualTextureView.this.TAG, "HmDrawVirtualThread draw error :" + th2.getMessage());
                                try {
                                    if (HmBaseVirtualTextureView.this.canvas != null) {
                                        HmBaseVirtualTextureView hmBaseVirtualTextureView5 = HmBaseVirtualTextureView.this;
                                        hmBaseVirtualTextureView5.unlockCanvasAndPost(hmBaseVirtualTextureView5.canvas);
                                    }
                                } catch (Exception unused4) {
                                    str = HmBaseVirtualTextureView.this.TAG;
                                    str2 = "HmDrawVirtualThread unlock canvas error";
                                    LogUtils.e(str, str2);
                                }
                            } catch (Throwable th3) {
                                try {
                                    if (HmBaseVirtualTextureView.this.canvas != null) {
                                        HmBaseVirtualTextureView hmBaseVirtualTextureView6 = HmBaseVirtualTextureView.this;
                                        hmBaseVirtualTextureView6.unlockCanvasAndPost(hmBaseVirtualTextureView6.canvas);
                                    }
                                } catch (Exception unused5) {
                                    LogUtils.e(HmBaseVirtualTextureView.this.TAG, "HmDrawVirtualThread unlock canvas error");
                                }
                                throw th3;
                            }
                        }
                        throw th;
                    }
                }
                LogUtils.i(HmBaseVirtualTextureView.this.TAG, "HmDrawVirtualThread end");
            }
        });
    }

    private int[] getKeysIndexByDirection(int i10) {
        if (i10 == 100) {
            return new int[]{3};
        }
        if (i10 == 200) {
            return new int[]{3, 0};
        }
        if (i10 == 300) {
            return new int[]{0};
        }
        if (i10 == 400) {
            return new int[]{2, 0};
        }
        if (i10 == 500) {
            return new int[]{2};
        }
        if (i10 == 600) {
            return new int[]{2, 1};
        }
        if (i10 != 700) {
            return i10 != 800 ? new int[0] : new int[]{3, 1};
        }
        return new int[]{1};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseDirectionData(int i10, List<HmVirtualViewBean.KeysDTO> list, int i11) {
        if (list == null) {
            LogUtils.e(this.TAG, "send stick direction error  keys size < 4");
            return;
        }
        if (i11 == 100) {
            receiveStickData(i10, new HmVirtualViewBean.KeysDTO("RIGHT", 8));
            return;
        }
        if (i11 == 200) {
            receiveStickData(i10, new HmVirtualViewBean.KeysDTO("RIGHT_TOP", 9));
            return;
        }
        if (i11 == 300) {
            receiveStickData(i10, new HmVirtualViewBean.KeysDTO("UP", 1));
            return;
        }
        if (i11 == 400) {
            receiveStickData(i10, new HmVirtualViewBean.KeysDTO("LEFT_TOP", 5));
            return;
        }
        if (i11 == 500) {
            receiveStickData(i10, new HmVirtualViewBean.KeysDTO("LEFT", 4));
            return;
        }
        if (i11 == 600) {
            receiveStickData(i10, new HmVirtualViewBean.KeysDTO("LEFT_BOTTOM", 6));
            return;
        }
        if (i11 == 700) {
            receiveStickData(i10, new HmVirtualViewBean.KeysDTO("DOWN", 2));
        } else if (i11 != 800) {
            receiveStickData(i10, new HmVirtualViewBean.KeysDTO("UP", 1));
        } else {
            receiveStickData(i10, new HmVirtualViewBean.KeysDTO("RIGHT_BOTTOM", 10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseKeyBoardRocker(int i10, List<HmVirtualViewBean.KeysDTO> list, int i11, int i12, int i13) {
        boolean z10;
        boolean z11;
        List<HmVirtualViewBean.KeysDTO> list2 = i13 == 7 ? this.keyDirectionList : this.keyWasdList;
        if (i10 != 0) {
            for (int i14 : getKeysIndexByDirection(i11)) {
                receiveKeyBoardData(1, list2.get(i14), i13);
            }
            return;
        }
        int[] keysIndexByDirection = getKeysIndexByDirection(i12);
        int[] keysIndexByDirection2 = getKeysIndexByDirection(i11);
        for (int i15 : keysIndexByDirection) {
            int length = keysIndexByDirection2.length;
            int i16 = 0;
            while (true) {
                if (i16 >= length) {
                    z11 = false;
                    break;
                } else {
                    if (i15 == keysIndexByDirection2[i16]) {
                        z11 = true;
                        break;
                    }
                    i16++;
                }
            }
            if (!z11) {
                receiveKeyBoardData(1, list2.get(i15), i13);
            }
        }
        for (int i17 : keysIndexByDirection2) {
            int length2 = keysIndexByDirection.length;
            int i18 = 0;
            while (true) {
                if (i18 >= length2) {
                    z10 = false;
                    break;
                } else {
                    if (i17 == keysIndexByDirection[i18]) {
                        z10 = true;
                        break;
                    }
                    i18++;
                }
            }
            if (!z10) {
                receiveKeyBoardData(0, list2.get(i17), i13);
            }
        }
    }

    private void preCheckScale(int i10) {
        boolean z10;
        boolean z11 = true;
        if (!this.mHasLoadedFromJson || this.mIsUserConfig) {
            z10 = false;
        } else {
            LogUtils.i(this.TAG, "preCheckScale: app call loadKeyboardConfigFromJson & not user config");
            z10 = true;
        }
        if (this.mHasLoadedFromJson || HmVirtualDeviceManager.get().hasLocalConfig(i10)) {
            z11 = z10;
        } else {
            LogUtils.i(this.TAG, "preCheckScale: app don't call loadKeyboardConfigFromJson & localConfig is null");
        }
        if (!z11) {
            LogUtils.i(this.TAG, "preCheckScale don't execute.");
            HmVirtualDeviceManager.get().setBaseScale(HmVirtualDeviceManager.get().getScaleByApp());
            notifyBaseScale();
            return;
        }
        HmVirtualDeviceManager.get().setBaseScale(1.0f);
        notifyBaseScale();
        ArrayList arrayList = new ArrayList();
        Iterator<HmBaseVirtualView> it2 = this.mViews.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getRect());
        }
        float fCalculateScaleFactor = ScaleUtil.calculateScaleFactor(arrayList);
        LogUtils.i(this.TAG, "preCheckScale scaleFactor=" + fCalculateScaleFactor);
        if (fCalculateScaleFactor < 1.0f) {
            HmVirtualDeviceManager.get().setBaseScale(fCalculateScaleFactor);
            notifyBaseScale();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeObserver(VirtualViewObserver virtualViewObserver) {
        if (virtualViewObserver == null) {
            return;
        }
        this.observers.remove(virtualViewObserver.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean touchInterceptCondition(int i10) {
        return i10 == -2 || i10 == -1;
    }

    protected abstract void editKeyboardConfigNotify(String str, EditStatus editStatus);

    public void enterEditModel(PluginContext pluginContext, boolean z10, boolean z11) {
        HmVirtualOperatorViewBase hmVirtualOperatorViewBase = this.operatorView;
        if (hmVirtualOperatorViewBase != null && HmVirtualDeviceManager.editMode) {
            LogUtils.e(this.TAG, "now it's editing model already");
            return;
        }
        HmVirtualDeviceManager.editMode = true;
        if (hmVirtualOperatorViewBase == null) {
            if (Constants.CONFIG_IS_CLOUD_COMPUTER_KEYBOARD_EDIT_MODE) {
                this.operatorView = new HmVirtualOperatorViewCloudComputer(pluginContext);
            } else {
                this.operatorView = new HmVirtualOperatorView(pluginContext);
            }
            this.operatorView.setOperateListener(this.operateListener);
            if (getParent() instanceof ViewGroup) {
                ((ViewGroup) getParent()).addView(this.operatorView);
            }
        }
        this.operatorView.setResetEnabled(z10);
        this.operatorView.setVirType(this.virtualType);
        this.operatorView.setShowGuide(z11);
        this.operatorView.setVisibility(0);
        if (Constants.CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION) {
            startAnim();
        }
    }

    public void exit() {
        HmVirtualOperatorViewBase hmVirtualOperatorViewBase = this.operatorView;
        if (hmVirtualOperatorViewBase != null) {
            hmVirtualOperatorViewBase.exit();
        }
    }

    protected void init() {
        this.mViews = new ArrayList();
        this.defaultVirBeanList = new ArrayList();
        this.observers = new HashMap<>();
        LogUtils.i(this.TAG, "HmBaseVirtualSurface init()");
        this.isAbleDraw = false;
        setSurfaceTextureListener(this.surfaceTextureListener);
        ArrayList arrayList = new ArrayList();
        this.keyWasdList = arrayList;
        arrayList.add(new HmVirtualViewBean.KeysDTO("W", 87));
        this.keyWasdList.add(new HmVirtualViewBean.KeysDTO("S", 83));
        this.keyWasdList.add(new HmVirtualViewBean.KeysDTO("A", 65));
        this.keyWasdList.add(new HmVirtualViewBean.KeysDTO(SDKManager.ALGO_D_RFU, 68));
        ArrayList arrayList2 = new ArrayList();
        this.keyDirectionList = arrayList2;
        arrayList2.add(new HmVirtualViewBean.KeysDTO("↑", 38));
        this.keyDirectionList.add(new HmVirtualViewBean.KeysDTO("↓", 40));
        this.keyDirectionList.add(new HmVirtualViewBean.KeysDTO("←", 37));
        this.keyDirectionList.add(new HmVirtualViewBean.KeysDTO("→", 39));
    }

    public boolean isEditModeShow() {
        HmVirtualOperatorViewBase hmVirtualOperatorViewBase = this.operatorView;
        return hmVirtualOperatorViewBase != null && hmVirtualOperatorViewBase.getVisibility() == 0;
    }

    public void loadVirtualData(List<HmVirtualViewBean> list, int i10) {
        synchronized (this.lock) {
            this.defaultVirBeanList.clear();
            if (list != null) {
                Iterator<HmVirtualViewBean> it2 = list.iterator();
                while (it2.hasNext()) {
                    HmVirtualViewBean hmVirtualViewBeanCopy = it2.next().copy();
                    if (hmVirtualViewBeanCopy != null) {
                        this.defaultVirBeanList.add(hmVirtualViewBeanCopy);
                    }
                }
            }
            setVirtualType(i10);
            this.mViews.clear();
            List<HmBaseVirtualView> listConvertVirBean2View = HmVirtualDeviceManager.get().convertVirBean2View(this.defaultVirBeanList, getContext(), this.viewListener, i10);
            this.mViews.addAll(listConvertVirBean2View);
            cleanObserver();
            Iterator<HmBaseVirtualView> it3 = listConvertVirBean2View.iterator();
            while (it3.hasNext()) {
                addObserver(it3.next());
            }
            if (!Constants.CONFIG_VIRTUAL_KEYBOARD_OVERLAP_SWITCH && !HmVirtualDeviceManager.isScaleSetByApp) {
                preCheckScale(i10);
            }
        }
    }

    public void notifyBaseScale() {
        LogUtils.i(this.TAG, "notifyScale");
        List<HmBaseVirtualView> list = this.mViews;
        if (list != null) {
            for (HmBaseVirtualView hmBaseVirtualView : list) {
                if (hmBaseVirtualView != null) {
                    hmBaseVirtualView.notifyBaseScale();
                }
            }
        }
    }

    protected void notifySave() {
        for (VirtualViewObserver virtualViewObserver : this.observers.values()) {
            if (virtualViewObserver != null) {
                virtualViewObserver.onSave();
            }
        }
    }

    protected abstract void receiveKeyBoardData(int i10, HmVirtualViewBean.KeysDTO keysDTO, int i11);

    protected abstract void receiveMouseData(int i10, int i11, int i12, GSSDK.OneInputOPData.InputOP inputOP);

    protected abstract void receiveStickData(int i10, HmVirtualViewBean.KeysDTO keysDTO);

    protected abstract void receiveStickRocker(int i10, int i11, float f10, float f11);

    public void resetOperator() {
        HmVirtualOperatorViewBase hmVirtualOperatorViewBase = this.operatorView;
        if (hmVirtualOperatorViewBase == null) {
            return;
        }
        HmVirtualDeviceManager.editMode = false;
        hmVirtualOperatorViewBase.setVisibility(8);
        this.operatorView.reSet();
    }

    public void setLoadedFromJson(boolean z10) {
        this.mHasLoadedFromJson = z10;
    }

    public void setTransparency(float f10) {
        HmVirtualDeviceManager.get().setTransparency(f10);
        List<HmBaseVirtualView> list = this.mViews;
        if (list != null) {
            Iterator<HmBaseVirtualView> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().setTransparency(f10);
            }
        }
    }

    public void setUserConfig(boolean z10) {
        this.mIsUserConfig = z10;
    }

    public void setVirtualType(int i10) {
        this.virtualType = i10;
        HmVirtualOperatorViewBase hmVirtualOperatorViewBase = this.operatorView;
        if (hmVirtualOperatorViewBase != null) {
            hmVirtualOperatorViewBase.setVirType(i10);
        }
    }

    @SuppressLint({"NewApi"})
    public void startAnim() {
        Random random = new Random();
        List<HmBaseVirtualView> list = this.mViews;
        if (list == null || list.isEmpty()) {
            return;
        }
        HashMap map = new HashMap();
        for (HmBaseVirtualView hmBaseVirtualView : this.mViews) {
            if (hmBaseVirtualView != null) {
                hmBaseVirtualView.prepareShake();
                float fNextFloat = random.nextFloat();
                float fNextFloat2 = random.nextFloat();
                for (HmBaseVirtualView hmBaseVirtualView2 : this.mViews) {
                    if (hmBaseVirtualView2 != hmBaseVirtualView && hmBaseVirtualView2 != null && checkAdjacent(hmBaseVirtualView, hmBaseVirtualView2)) {
                        float[] fArr = (float[]) map.get(hmBaseVirtualView2);
                        if (fArr == null) {
                            fArr = new float[]{0.0f, 0.0f};
                        }
                        float f10 = fArr[1];
                        while (Math.abs(fNextFloat2 - f10) < 0.4f) {
                            fNextFloat2 = random.nextFloat();
                        }
                    }
                }
                map.put(hmBaseVirtualView, new float[]{fNextFloat, fNextFloat2});
            }
        }
        for (HmBaseVirtualView hmBaseVirtualView3 : this.mViews) {
            if (hmBaseVirtualView3 != null) {
                float[] fArr2 = (float[]) map.get(hmBaseVirtualView3);
                hmBaseVirtualView3.startShake(fArr2[0], fArr2[1]);
            }
        }
    }

    public void stopAnim() {
        List<HmBaseVirtualView> list = this.mViews;
        if (list != null) {
            for (HmBaseVirtualView hmBaseVirtualView : list) {
                if (hmBaseVirtualView != null) {
                    hmBaseVirtualView.stopShake();
                }
            }
        }
    }

    public void touchEvent(MotionEvent motionEvent) {
        if (getVisibility() == 8) {
            return;
        }
        HmVirtualOperatorViewBase hmVirtualOperatorViewBase = this.operatorView;
        if (hmVirtualOperatorViewBase != null && HmVirtualDeviceManager.editMode && hmVirtualOperatorViewBase.consumeThisEvent(motionEvent)) {
            return;
        }
        Iterator<HmBaseVirtualView> it2 = this.mViews.iterator();
        boolean z10 = false;
        while (it2.hasNext()) {
            boolean zOnTouchEvent = it2.next().onTouchEvent(motionEvent);
            if (zOnTouchEvent && motionEvent.getAction() == 0) {
                z10 = true;
            }
            if (zOnTouchEvent && HmVirtualDeviceManager.editMode) {
                break;
            } else if (z10) {
                break;
            }
        }
        if (this.operatorView == null || !HmVirtualDeviceManager.editMode || motionEvent.getAction() != 0 || z10) {
            return;
        }
        this.operatorView.selectVirtualView(null);
    }

    protected abstract void useSpecificSensitivity(boolean z10, float f10);

    public HmBaseVirtualTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = getClass().getSimpleName();
        this.lock = new Object();
        this.mHasLoadedFromJson = false;
        this.surfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: com.haima.hmcp.virtual.views.HmBaseVirtualTextureView.1
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
                LogUtils.i(HmBaseVirtualTextureView.this.TAG, "drawSurface createDrawThread");
                HmBaseVirtualTextureView.this.isAbleDraw = true;
                if (HmBaseVirtualTextureView.this.drawThread == null) {
                    HmBaseVirtualTextureView.this.createDrawThread();
                    HmBaseVirtualTextureView.this.drawThread.start();
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                synchronized (HmBaseVirtualTextureView.this.lock) {
                    LogUtils.i(HmBaseVirtualTextureView.this.TAG, "drawSurface surfaceDestroyed");
                    HmBaseVirtualTextureView.this.isAbleDraw = false;
                    if (HmBaseVirtualTextureView.this.drawThread != null) {
                        HmBaseVirtualTextureView.this.drawThread = null;
                    }
                }
                return true;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        };
        this.viewListener = new HmVirtualViewListener() { // from class: com.haima.hmcp.virtual.views.HmBaseVirtualTextureView.2
            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onBtnMoveEvent(HmBaseVirtualView hmBaseVirtualView) {
                if (!HmVirtualDeviceManager.editMode) {
                    LogUtils.e(HmBaseVirtualTextureView.this.TAG, "now is not editMode");
                    return;
                }
                HmVirtualOperatorViewBase hmVirtualOperatorViewBase = HmBaseVirtualTextureView.this.operatorView;
                if (hmVirtualOperatorViewBase != null) {
                    hmVirtualOperatorViewBase.performGuide(3);
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onBtnTouchEvent(int i10, List<HmVirtualViewBean.KeysDTO> list, int i11, int i12) {
                LogUtils.d(HmBaseVirtualTextureView.this.TAG, "onBtnTouchEvent state =" + i10 + ";size=" + list.size() + ";sourceType=" + i11);
                if (HmBaseVirtualTextureView.this.touchInterceptCondition(i12)) {
                    LogUtils.d(HmBaseVirtualTextureView.this.TAG, "onBtnTouchEvent is ignored");
                    return;
                }
                for (HmVirtualViewBean.KeysDTO keysDTO : list) {
                    if (i11 == 1) {
                        HmBaseVirtualTextureView.this.receiveKeyBoardData(i10, keysDTO, i12);
                    } else {
                        HmBaseVirtualTextureView.this.receiveStickData(i10, keysDTO);
                    }
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onCheckBoxStateChanged(boolean z10, float f10) {
                LogUtils.d(HmBaseVirtualTextureView.this.TAG, "onCheckBoxStateChanged " + z10 + " " + f10);
                HmBaseVirtualTextureView.this.useSpecificSensitivity(z10, f10);
            }

            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onClickListener(HmBaseVirtualView hmBaseVirtualView) {
                if (!HmVirtualDeviceManager.editMode) {
                    LogUtils.e(HmBaseVirtualTextureView.this.TAG, "now is not editMode");
                    return;
                }
                HmVirtualOperatorViewBase hmVirtualOperatorViewBase = HmBaseVirtualTextureView.this.operatorView;
                if (hmVirtualOperatorViewBase != null) {
                    hmVirtualOperatorViewBase.selectVirtualView(hmBaseVirtualView);
                    HmBaseVirtualTextureView.this.operatorView.performGuide(2);
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onMouseTouchEvent(int i10, int i11, int i12, int i13, int i14) {
                GSSDK.OneInputOPData.InputOP inputOP;
                switch (i11) {
                    case 8:
                        inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_LEFT;
                        break;
                    case 9:
                        inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_RIGHT;
                        break;
                    case 10:
                        inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_MIDDLE;
                        break;
                    default:
                        inputOP = null;
                        break;
                }
                if (inputOP != null) {
                    if (i10 == 2) {
                        inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_MOV;
                    }
                    HmBaseVirtualTextureView.this.receiveMouseData(i10, i12, i13, inputOP);
                } else {
                    LogUtils.e(HmBaseVirtualTextureView.this.TAG, "onMouseTouchEvent error = " + i11);
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onRockerTouchEvent(int i10, List<HmVirtualViewBean.KeysDTO> list, int i11, int i12, int i13, int i14, float f10, float f11) {
                LogUtils.d(HmBaseVirtualTextureView.this.TAG, "onRockerTouchEvent :" + list.size() + ";" + i12 + ";" + f10 + ";" + f11);
                if (i12 == 3) {
                    HmBaseVirtualTextureView.this.parseDirectionData(i10, list, i13);
                    return;
                }
                if (i12 == 4 || i12 == 5) {
                    HmBaseVirtualTextureView.this.receiveStickRocker(i10, i12, f10, f11);
                } else if (i12 == 6 || i12 == 7) {
                    HmBaseVirtualTextureView.this.parseKeyBoardRocker(i10, list, i13, i14, i12);
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onViewEdit() {
                if (!HmVirtualDeviceManager.editMode) {
                    LogUtils.e(HmBaseVirtualTextureView.this.TAG, "now is not editMode");
                    return;
                }
                HmVirtualOperatorViewBase hmVirtualOperatorViewBase = HmBaseVirtualTextureView.this.operatorView;
                if (hmVirtualOperatorViewBase != null) {
                    hmVirtualOperatorViewBase.setResetEnabled(true);
                }
            }
        };
        this.operateListener = new OperateListener() { // from class: com.haima.hmcp.virtual.views.HmBaseVirtualTextureView.3
            @Override // com.haima.hmcp.virtual.listeners.OperateListener
            public void onAdd(HmVirtualViewBean hmVirtualViewBean) {
                synchronized (HmBaseVirtualTextureView.this.lock) {
                    int i10 = HmBaseVirtualTextureView.this.virtualType;
                    if (i10 == 1) {
                        HmVirtualDeviceUtils.picsSupplement(hmVirtualViewBean, HmVirtualDeviceUtils.PicsSupplementType.KEYBOARD);
                    } else if (i10 == 0) {
                        HmVirtualDeviceUtils.picsSupplement(hmVirtualViewBean, HmVirtualDeviceUtils.PicsSupplementType.XBOX);
                    }
                    HmVirtualDeviceManager hmVirtualDeviceManager = HmVirtualDeviceManager.get();
                    Context context2 = HmBaseVirtualTextureView.this.getContext();
                    HmBaseVirtualTextureView hmBaseVirtualTextureView = HmBaseVirtualTextureView.this;
                    HmBaseVirtualView hmBaseVirtualViewConvertOneBean2View = hmVirtualDeviceManager.convertOneBean2View(hmVirtualViewBean, context2, hmBaseVirtualTextureView.viewListener, hmBaseVirtualTextureView.virtualType);
                    if (hmBaseVirtualViewConvertOneBean2View != null) {
                        HmBaseVirtualTextureView.this.mViews.add(hmBaseVirtualViewConvertOneBean2View);
                        HmBaseVirtualTextureView.this.addObserver(hmBaseVirtualViewConvertOneBean2View);
                        HmBaseVirtualTextureView.this.defaultVirBeanList.add(hmBaseVirtualViewConvertOneBean2View.getViewBean());
                    }
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.OperateListener
            public void onDelete(HmBaseVirtualView hmBaseVirtualView) {
                synchronized (HmBaseVirtualTextureView.this.lock) {
                    HmBaseVirtualTextureView.this.mViews.remove(hmBaseVirtualView);
                    HmBaseVirtualTextureView.this.removeObserver(hmBaseVirtualView);
                    HmBaseVirtualTextureView.this.defaultVirBeanList.remove(hmBaseVirtualView.getViewBean());
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.OperateListener
            public void onExit() {
                HmVirtualDeviceManager.editMode = false;
                HmBaseVirtualTextureView.this.stopAnim();
                HmBaseVirtualTextureView.this.editKeyboardConfigNotify(HmVirtualDeviceManager.get().getCurrentConfigJson(), EditStatus.EDIT_STATE_EXIT);
                HmBaseVirtualTextureView hmBaseVirtualTextureView = HmBaseVirtualTextureView.this;
                if (hmBaseVirtualTextureView.virtualType == 1) {
                    hmBaseVirtualTextureView.loadVirtualData(HmVirtualDeviceManager.get().getKeyboardLayout(), 1);
                } else {
                    hmBaseVirtualTextureView.loadVirtualData(HmVirtualDeviceManager.get().getXboxLayout(), 0);
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.OperateListener
            public void onReset() {
                HmVirtualDeviceManager.editMode = false;
                HmBaseVirtualTextureView.this.stopAnim();
                HmBaseVirtualTextureView.this.editKeyboardConfigNotify(HmVirtualDeviceManager.get().getCurrentConfigJson(), EditStatus.EDIT_STATE_RESTORE);
                if (HmBaseVirtualTextureView.this.virtualType == 1) {
                    HmVirtualDeviceManager.get().deleteLocalKeyboardLayout(HmBaseVirtualTextureView.this.getContext());
                    HmBaseVirtualTextureView.this.loadVirtualData(HmVirtualDeviceManager.get().getKeyboardLayout(), 1);
                } else {
                    HmVirtualDeviceManager.get().deleteLocalXboxLayout(HmBaseVirtualTextureView.this.getContext());
                    HmBaseVirtualTextureView.this.loadVirtualData(HmVirtualDeviceManager.get().getXboxLayout(), 0);
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.OperateListener
            public void onSave(boolean z10) {
                synchronized (HmBaseVirtualTextureView.this.lock) {
                    HmBaseVirtualTextureView.this.notifySave();
                    HmVirtualDeviceManager hmVirtualDeviceManager = HmVirtualDeviceManager.get();
                    List<HmVirtualViewBean> list = HmBaseVirtualTextureView.this.defaultVirBeanList;
                    HmBaseVirtualTextureView hmBaseVirtualTextureView = HmBaseVirtualTextureView.this;
                    hmVirtualDeviceManager.saveLayout(list, hmBaseVirtualTextureView.virtualType, hmBaseVirtualTextureView.getContext(), HmBaseVirtualTextureView.this.mHasLoadedFromJson);
                    HmVirtualDeviceManager.editMode = false;
                    HmBaseVirtualTextureView hmBaseVirtualTextureView2 = HmBaseVirtualTextureView.this;
                    hmBaseVirtualTextureView2.mIsUserConfig = true;
                    hmBaseVirtualTextureView2.stopAnim();
                    String currentConfigJson = HmVirtualDeviceManager.get().getCurrentConfigJson();
                    if (z10) {
                        HmBaseVirtualTextureView.this.editKeyboardConfigNotify(currentConfigJson, EditStatus.EDIT_STATE_MODIFIED_SAVE);
                    } else {
                        HmBaseVirtualTextureView.this.editKeyboardConfigNotify(currentConfigJson, EditStatus.EDIT_STATE_NO_MODIFY_SAVE);
                    }
                    HmBaseVirtualTextureView hmBaseVirtualTextureView3 = HmBaseVirtualTextureView.this;
                    if (hmBaseVirtualTextureView3.virtualType == 1) {
                        hmBaseVirtualTextureView3.loadVirtualData(HmVirtualDeviceManager.get().getKeyboardLayout(), 1);
                    } else {
                        hmBaseVirtualTextureView3.loadVirtualData(HmVirtualDeviceManager.get().getXboxLayout(), 0);
                    }
                }
            }
        };
        init();
    }

    public HmBaseVirtualTextureView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.TAG = getClass().getSimpleName();
        this.lock = new Object();
        this.mHasLoadedFromJson = false;
        this.surfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: com.haima.hmcp.virtual.views.HmBaseVirtualTextureView.1
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i11, int i12) {
                LogUtils.i(HmBaseVirtualTextureView.this.TAG, "drawSurface createDrawThread");
                HmBaseVirtualTextureView.this.isAbleDraw = true;
                if (HmBaseVirtualTextureView.this.drawThread == null) {
                    HmBaseVirtualTextureView.this.createDrawThread();
                    HmBaseVirtualTextureView.this.drawThread.start();
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                synchronized (HmBaseVirtualTextureView.this.lock) {
                    LogUtils.i(HmBaseVirtualTextureView.this.TAG, "drawSurface surfaceDestroyed");
                    HmBaseVirtualTextureView.this.isAbleDraw = false;
                    if (HmBaseVirtualTextureView.this.drawThread != null) {
                        HmBaseVirtualTextureView.this.drawThread = null;
                    }
                }
                return true;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i11, int i12) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        };
        this.viewListener = new HmVirtualViewListener() { // from class: com.haima.hmcp.virtual.views.HmBaseVirtualTextureView.2
            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onBtnMoveEvent(HmBaseVirtualView hmBaseVirtualView) {
                if (!HmVirtualDeviceManager.editMode) {
                    LogUtils.e(HmBaseVirtualTextureView.this.TAG, "now is not editMode");
                    return;
                }
                HmVirtualOperatorViewBase hmVirtualOperatorViewBase = HmBaseVirtualTextureView.this.operatorView;
                if (hmVirtualOperatorViewBase != null) {
                    hmVirtualOperatorViewBase.performGuide(3);
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onBtnTouchEvent(int i11, List<HmVirtualViewBean.KeysDTO> list, int i12, int i13) {
                LogUtils.d(HmBaseVirtualTextureView.this.TAG, "onBtnTouchEvent state =" + i11 + ";size=" + list.size() + ";sourceType=" + i12);
                if (HmBaseVirtualTextureView.this.touchInterceptCondition(i13)) {
                    LogUtils.d(HmBaseVirtualTextureView.this.TAG, "onBtnTouchEvent is ignored");
                    return;
                }
                for (HmVirtualViewBean.KeysDTO keysDTO : list) {
                    if (i12 == 1) {
                        HmBaseVirtualTextureView.this.receiveKeyBoardData(i11, keysDTO, i13);
                    } else {
                        HmBaseVirtualTextureView.this.receiveStickData(i11, keysDTO);
                    }
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onCheckBoxStateChanged(boolean z10, float f10) {
                LogUtils.d(HmBaseVirtualTextureView.this.TAG, "onCheckBoxStateChanged " + z10 + " " + f10);
                HmBaseVirtualTextureView.this.useSpecificSensitivity(z10, f10);
            }

            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onClickListener(HmBaseVirtualView hmBaseVirtualView) {
                if (!HmVirtualDeviceManager.editMode) {
                    LogUtils.e(HmBaseVirtualTextureView.this.TAG, "now is not editMode");
                    return;
                }
                HmVirtualOperatorViewBase hmVirtualOperatorViewBase = HmBaseVirtualTextureView.this.operatorView;
                if (hmVirtualOperatorViewBase != null) {
                    hmVirtualOperatorViewBase.selectVirtualView(hmBaseVirtualView);
                    HmBaseVirtualTextureView.this.operatorView.performGuide(2);
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onMouseTouchEvent(int i11, int i12, int i13, int i14, int i15) {
                GSSDK.OneInputOPData.InputOP inputOP;
                switch (i12) {
                    case 8:
                        inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_LEFT;
                        break;
                    case 9:
                        inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_RIGHT;
                        break;
                    case 10:
                        inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_MIDDLE;
                        break;
                    default:
                        inputOP = null;
                        break;
                }
                if (inputOP != null) {
                    if (i11 == 2) {
                        inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_MOV;
                    }
                    HmBaseVirtualTextureView.this.receiveMouseData(i11, i13, i14, inputOP);
                } else {
                    LogUtils.e(HmBaseVirtualTextureView.this.TAG, "onMouseTouchEvent error = " + i12);
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onRockerTouchEvent(int i11, List<HmVirtualViewBean.KeysDTO> list, int i12, int i13, int i14, int i15, float f10, float f11) {
                LogUtils.d(HmBaseVirtualTextureView.this.TAG, "onRockerTouchEvent :" + list.size() + ";" + i13 + ";" + f10 + ";" + f11);
                if (i13 == 3) {
                    HmBaseVirtualTextureView.this.parseDirectionData(i11, list, i14);
                    return;
                }
                if (i13 == 4 || i13 == 5) {
                    HmBaseVirtualTextureView.this.receiveStickRocker(i11, i13, f10, f11);
                } else if (i13 == 6 || i13 == 7) {
                    HmBaseVirtualTextureView.this.parseKeyBoardRocker(i11, list, i14, i15, i13);
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.HmVirtualViewListener
            public void onViewEdit() {
                if (!HmVirtualDeviceManager.editMode) {
                    LogUtils.e(HmBaseVirtualTextureView.this.TAG, "now is not editMode");
                    return;
                }
                HmVirtualOperatorViewBase hmVirtualOperatorViewBase = HmBaseVirtualTextureView.this.operatorView;
                if (hmVirtualOperatorViewBase != null) {
                    hmVirtualOperatorViewBase.setResetEnabled(true);
                }
            }
        };
        this.operateListener = new OperateListener() { // from class: com.haima.hmcp.virtual.views.HmBaseVirtualTextureView.3
            @Override // com.haima.hmcp.virtual.listeners.OperateListener
            public void onAdd(HmVirtualViewBean hmVirtualViewBean) {
                synchronized (HmBaseVirtualTextureView.this.lock) {
                    int i11 = HmBaseVirtualTextureView.this.virtualType;
                    if (i11 == 1) {
                        HmVirtualDeviceUtils.picsSupplement(hmVirtualViewBean, HmVirtualDeviceUtils.PicsSupplementType.KEYBOARD);
                    } else if (i11 == 0) {
                        HmVirtualDeviceUtils.picsSupplement(hmVirtualViewBean, HmVirtualDeviceUtils.PicsSupplementType.XBOX);
                    }
                    HmVirtualDeviceManager hmVirtualDeviceManager = HmVirtualDeviceManager.get();
                    Context context2 = HmBaseVirtualTextureView.this.getContext();
                    HmBaseVirtualTextureView hmBaseVirtualTextureView = HmBaseVirtualTextureView.this;
                    HmBaseVirtualView hmBaseVirtualViewConvertOneBean2View = hmVirtualDeviceManager.convertOneBean2View(hmVirtualViewBean, context2, hmBaseVirtualTextureView.viewListener, hmBaseVirtualTextureView.virtualType);
                    if (hmBaseVirtualViewConvertOneBean2View != null) {
                        HmBaseVirtualTextureView.this.mViews.add(hmBaseVirtualViewConvertOneBean2View);
                        HmBaseVirtualTextureView.this.addObserver(hmBaseVirtualViewConvertOneBean2View);
                        HmBaseVirtualTextureView.this.defaultVirBeanList.add(hmBaseVirtualViewConvertOneBean2View.getViewBean());
                    }
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.OperateListener
            public void onDelete(HmBaseVirtualView hmBaseVirtualView) {
                synchronized (HmBaseVirtualTextureView.this.lock) {
                    HmBaseVirtualTextureView.this.mViews.remove(hmBaseVirtualView);
                    HmBaseVirtualTextureView.this.removeObserver(hmBaseVirtualView);
                    HmBaseVirtualTextureView.this.defaultVirBeanList.remove(hmBaseVirtualView.getViewBean());
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.OperateListener
            public void onExit() {
                HmVirtualDeviceManager.editMode = false;
                HmBaseVirtualTextureView.this.stopAnim();
                HmBaseVirtualTextureView.this.editKeyboardConfigNotify(HmVirtualDeviceManager.get().getCurrentConfigJson(), EditStatus.EDIT_STATE_EXIT);
                HmBaseVirtualTextureView hmBaseVirtualTextureView = HmBaseVirtualTextureView.this;
                if (hmBaseVirtualTextureView.virtualType == 1) {
                    hmBaseVirtualTextureView.loadVirtualData(HmVirtualDeviceManager.get().getKeyboardLayout(), 1);
                } else {
                    hmBaseVirtualTextureView.loadVirtualData(HmVirtualDeviceManager.get().getXboxLayout(), 0);
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.OperateListener
            public void onReset() {
                HmVirtualDeviceManager.editMode = false;
                HmBaseVirtualTextureView.this.stopAnim();
                HmBaseVirtualTextureView.this.editKeyboardConfigNotify(HmVirtualDeviceManager.get().getCurrentConfigJson(), EditStatus.EDIT_STATE_RESTORE);
                if (HmBaseVirtualTextureView.this.virtualType == 1) {
                    HmVirtualDeviceManager.get().deleteLocalKeyboardLayout(HmBaseVirtualTextureView.this.getContext());
                    HmBaseVirtualTextureView.this.loadVirtualData(HmVirtualDeviceManager.get().getKeyboardLayout(), 1);
                } else {
                    HmVirtualDeviceManager.get().deleteLocalXboxLayout(HmBaseVirtualTextureView.this.getContext());
                    HmBaseVirtualTextureView.this.loadVirtualData(HmVirtualDeviceManager.get().getXboxLayout(), 0);
                }
            }

            @Override // com.haima.hmcp.virtual.listeners.OperateListener
            public void onSave(boolean z10) {
                synchronized (HmBaseVirtualTextureView.this.lock) {
                    HmBaseVirtualTextureView.this.notifySave();
                    HmVirtualDeviceManager hmVirtualDeviceManager = HmVirtualDeviceManager.get();
                    List<HmVirtualViewBean> list = HmBaseVirtualTextureView.this.defaultVirBeanList;
                    HmBaseVirtualTextureView hmBaseVirtualTextureView = HmBaseVirtualTextureView.this;
                    hmVirtualDeviceManager.saveLayout(list, hmBaseVirtualTextureView.virtualType, hmBaseVirtualTextureView.getContext(), HmBaseVirtualTextureView.this.mHasLoadedFromJson);
                    HmVirtualDeviceManager.editMode = false;
                    HmBaseVirtualTextureView hmBaseVirtualTextureView2 = HmBaseVirtualTextureView.this;
                    hmBaseVirtualTextureView2.mIsUserConfig = true;
                    hmBaseVirtualTextureView2.stopAnim();
                    String currentConfigJson = HmVirtualDeviceManager.get().getCurrentConfigJson();
                    if (z10) {
                        HmBaseVirtualTextureView.this.editKeyboardConfigNotify(currentConfigJson, EditStatus.EDIT_STATE_MODIFIED_SAVE);
                    } else {
                        HmBaseVirtualTextureView.this.editKeyboardConfigNotify(currentConfigJson, EditStatus.EDIT_STATE_NO_MODIFY_SAVE);
                    }
                    HmBaseVirtualTextureView hmBaseVirtualTextureView3 = HmBaseVirtualTextureView.this;
                    if (hmBaseVirtualTextureView3.virtualType == 1) {
                        hmBaseVirtualTextureView3.loadVirtualData(HmVirtualDeviceManager.get().getKeyboardLayout(), 1);
                    } else {
                        hmBaseVirtualTextureView3.loadVirtualData(HmVirtualDeviceManager.get().getXboxLayout(), 0);
                    }
                }
            }
        };
        init();
    }
}
