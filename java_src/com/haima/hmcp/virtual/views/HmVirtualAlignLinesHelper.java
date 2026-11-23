package com.haima.hmcp.virtual.views;

import android.content.Context;
import android.graphics.Canvas;
import com.haima.hmcp.Constants;
import com.haima.hmcp.virtual.HmVirtualDeviceManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirtualAlignLinesHelper {
    public int mCenterLandY;
    public int mCenterPortraitX;
    private HmVirtualAlignLineView mLandBottomBaseline;
    private HmVirtualAlignLineView mLandCenterBaseline;
    private HmVirtualAlignLineView mLandTopBaseline;
    private HmBaseVirtualView mMoveView;
    private HmVirtualAlignLineView mPortraitCenterBaseline;
    private HmVirtualAlignLineView mPortraitLeftBaseline;
    private HmVirtualAlignLineView mPortraitRightBaseline;
    public int maxLandY;
    public int maxPortraitX;
    public int minLandY;
    public int minPortraitX;
    public boolean isMovingState = false;
    private List<HmBaseVirtualView> mHmBaseVirtualViewList = new ArrayList();

    public HmVirtualAlignLinesHelper(int i10, int i11, int i12, int i13, int i14, int i15, Context context, HmBaseVirtualView hmBaseVirtualView) {
        this.mMoveView = hmBaseVirtualView;
        this.minPortraitX = i10;
        this.mCenterPortraitX = (int) ((i12 * 0.5f) + i10);
        this.maxPortraitX = i10 + i12;
        this.minLandY = i11;
        this.mCenterLandY = (int) ((i13 * 0.5f) + i11);
        this.maxLandY = i11 + i13;
        HmVirtualAlignLineView hmVirtualAlignLineView = new HmVirtualAlignLineView(context, i14, i15);
        this.mPortraitLeftBaseline = hmVirtualAlignLineView;
        hmVirtualAlignLineView.setDirection(1);
        this.mPortraitLeftBaseline.setPortraitX(this.minPortraitX);
        HmVirtualAlignLineView hmVirtualAlignLineView2 = new HmVirtualAlignLineView(context, i14, i15);
        this.mPortraitCenterBaseline = hmVirtualAlignLineView2;
        hmVirtualAlignLineView2.setDirection(1);
        this.mPortraitCenterBaseline.setPortraitX(this.mCenterPortraitX);
        HmVirtualAlignLineView hmVirtualAlignLineView3 = new HmVirtualAlignLineView(context, i14, i15);
        this.mPortraitRightBaseline = hmVirtualAlignLineView3;
        hmVirtualAlignLineView3.setDirection(1);
        this.mPortraitRightBaseline.setPortraitX(this.maxPortraitX);
        HmVirtualAlignLineView hmVirtualAlignLineView4 = new HmVirtualAlignLineView(context, i14, i15);
        this.mLandTopBaseline = hmVirtualAlignLineView4;
        hmVirtualAlignLineView4.setDirection(0);
        this.mLandTopBaseline.setLandY(this.minLandY);
        HmVirtualAlignLineView hmVirtualAlignLineView5 = new HmVirtualAlignLineView(context, i14, i15);
        this.mLandCenterBaseline = hmVirtualAlignLineView5;
        hmVirtualAlignLineView5.setDirection(0);
        this.mLandCenterBaseline.setPortraitX(this.mCenterLandY);
        HmVirtualAlignLineView hmVirtualAlignLineView6 = new HmVirtualAlignLineView(context, i14, i15);
        this.mLandBottomBaseline = hmVirtualAlignLineView6;
        hmVirtualAlignLineView6.setDirection(0);
        this.mLandBottomBaseline.setPortraitX(this.maxLandY);
    }

    private boolean isNeedAlign(int i10, int i11) {
        return Math.abs(i10 - i11) <= 1;
    }

    public void drawAlignLines(Canvas canvas) {
        List<HmBaseVirtualView> list;
        if (Constants.CONFIG_IS_CLOUD_COMPUTER_KEYBOARD_EDIT_MODE || (list = this.mHmBaseVirtualViewList) == null || list.size() == 0 || !HmVirtualDeviceManager.editMode || !this.isMovingState) {
            return;
        }
        drawBaseAlineLines(canvas);
    }

    public void drawBaseAlineLines(Canvas canvas) {
        for (HmBaseVirtualView hmBaseVirtualView : this.mHmBaseVirtualViewList) {
            if (hmBaseVirtualView != this.mMoveView) {
                if (isNeedAlign(this.minPortraitX, hmBaseVirtualView.mHmVirtualAlignLinesHelper.minPortraitX) || isNeedAlign(this.minPortraitX, hmBaseVirtualView.mHmVirtualAlignLinesHelper.maxPortraitX)) {
                    this.mPortraitLeftBaseline.draw(canvas);
                }
                if (isNeedAlign(this.mCenterPortraitX, hmBaseVirtualView.mHmVirtualAlignLinesHelper.mCenterPortraitX)) {
                    this.mPortraitCenterBaseline.draw(canvas);
                }
                if (isNeedAlign(this.maxPortraitX, hmBaseVirtualView.mHmVirtualAlignLinesHelper.maxPortraitX) || isNeedAlign(this.maxPortraitX, hmBaseVirtualView.mHmVirtualAlignLinesHelper.minPortraitX)) {
                    this.mPortraitRightBaseline.draw(canvas);
                }
                if (isNeedAlign(this.minLandY, hmBaseVirtualView.mHmVirtualAlignLinesHelper.minLandY) || isNeedAlign(this.minLandY, hmBaseVirtualView.mHmVirtualAlignLinesHelper.maxLandY)) {
                    this.mLandTopBaseline.draw(canvas);
                }
                if (isNeedAlign(this.mCenterLandY, hmBaseVirtualView.mHmVirtualAlignLinesHelper.mCenterLandY)) {
                    this.mLandCenterBaseline.draw(canvas);
                }
                if (isNeedAlign(this.maxLandY, hmBaseVirtualView.mHmVirtualAlignLinesHelper.maxLandY) || isNeedAlign(this.minLandY, hmBaseVirtualView.mHmVirtualAlignLinesHelper.minLandY)) {
                    this.mLandBottomBaseline.draw(canvas);
                }
            }
        }
    }

    public void updateAlignLinesView(int i10, int i11, int i12, int i13) {
        this.minPortraitX = i10;
        this.mCenterPortraitX = (int) ((i12 * 0.5f) + i10);
        this.maxPortraitX = i12 + i10;
        this.minLandY = i11;
        this.mCenterLandY = (int) ((i13 * 0.5f) + i11);
        this.maxLandY = i11 + i13;
        this.mPortraitLeftBaseline.setPortraitX(i10);
        this.mPortraitCenterBaseline.setPortraitX(this.mCenterPortraitX);
        this.mPortraitRightBaseline.setPortraitX(this.maxPortraitX);
        this.mLandTopBaseline.setLandY(this.minLandY);
        this.mLandCenterBaseline.setLandY(this.mCenterLandY);
        this.mLandBottomBaseline.setLandY(this.maxLandY);
    }

    public void updateVirtualViewList(List<HmBaseVirtualView> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.mHmBaseVirtualViewList = list;
    }
}
