package com.join.mgps.activity.screenshot;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.widget.MsgView;
import com.join.android.app.mgsim.wufun.R;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;
import java.util.Collections;
import s4.b;

/* JADX INFO: loaded from: classes9.dex */
public class SlidingTabLayoutScreenShort extends HorizontalScrollView implements ViewPager.OnPageChangeListener {
    private static final int STYLE_BLOCK = 2;
    private static final int STYLE_NORMAL = 0;
    private static final int STYLE_TRIANGLE = 1;
    private static final int TEXT_BOLD_BOTH = 2;
    private static final int TEXT_BOLD_NONE = 0;
    private static final int TEXT_BOLD_WHEN_SELECT = 1;
    private Context mContext;
    private float mCurrentPositionOffset;
    private int mCurrentTab;
    private int mDividerColor;
    private float mDividerPadding;
    private Paint mDividerPaint;
    private float mDividerWidth;
    private int mHeight;
    private int mIndicatorColor;
    private float mIndicatorCornerRadius;
    private GradientDrawable mIndicatorDrawable;
    private int mIndicatorGravity;
    private float mIndicatorHeight;
    private float mIndicatorMarginBottom;
    private float mIndicatorMarginLeft;
    private float mIndicatorMarginRight;
    private float mIndicatorMarginTop;
    private Rect mIndicatorRect;
    private int mIndicatorStyle;
    private float mIndicatorWidth;
    private boolean mIndicatorWidthEqualTitle;
    private SparseArray<Boolean> mInitSetMap;
    private int mLastScrollX;
    private b mListener;
    private Paint mRectPaint;
    private boolean mSnapOnTabClick;
    private int mTabCount;
    private float mTabPadding;
    private Rect mTabRect;
    private boolean mTabSpaceEqual;
    private float mTabWidth;
    private LinearLayout mTabsContainer;
    private boolean mTextAllCaps;
    private int mTextBold;
    private Paint mTextPaint;
    private int mTextSelectColor;
    private int mTextUnselectColor;
    private float mTextsize;
    private ArrayList<String> mTitles;
    private Paint mTrianglePaint;
    private Path mTrianglePath;
    private int mUnderlineColor;
    private int mUnderlineGravity;
    private float mUnderlineHeight;
    private ViewPager mViewPager;
    private float margin;

    class InnerPagerAdapter extends FragmentPagerAdapter {
        private ArrayList<Fragment> fragments;
        private String[] titles;

        public InnerPagerAdapter(FragmentManager fm2, ArrayList<Fragment> fragments, String[] titles) {
            super(fm2);
            new ArrayList();
            this.fragments = fragments;
            this.titles = titles;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.fragments.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int position) {
            return this.fragments.get(position);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getItemPosition(Object object) {
            return -2;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int position) {
            return this.titles[position];
        }
    }

    public SlidingTabLayoutScreenShort(Context context) {
        this(context, null, 0);
    }

    private void addTab(final int position, String title, View tabView) {
        TextView textView = (TextView) tabView.findViewById(R.id.tv_tab_title);
        if (textView != null && title != null) {
            textView.setText(title);
        }
        textView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -1));
        tabView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.SlidingTabLayoutScreenShort.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                int iIndexOfChild = SlidingTabLayoutScreenShort.this.mTabsContainer.indexOfChild(v10);
                if (iIndexOfChild != -1) {
                    if (SlidingTabLayoutScreenShort.this.mViewPager.getCurrentItem() == iIndexOfChild) {
                        if (SlidingTabLayoutScreenShort.this.mListener != null) {
                            SlidingTabLayoutScreenShort.this.mListener.onTabReselect(iIndexOfChild);
                        }
                    } else {
                        if (SlidingTabLayoutScreenShort.this.mSnapOnTabClick) {
                            SlidingTabLayoutScreenShort.this.mViewPager.setCurrentItem(iIndexOfChild, false);
                        } else {
                            SlidingTabLayoutScreenShort.this.mViewPager.setCurrentItem(iIndexOfChild);
                        }
                        if (SlidingTabLayoutScreenShort.this.mListener != null) {
                            SlidingTabLayoutScreenShort.this.mListener.onTabSelect(iIndexOfChild);
                        }
                    }
                }
            }
        });
        LinearLayout.LayoutParams layoutParams = this.mTabSpaceEqual ? new LinearLayout.LayoutParams(0, -1, 1.0f) : new LinearLayout.LayoutParams(-2, -1);
        if (this.mTabWidth > 0.0f) {
            layoutParams = new LinearLayout.LayoutParams((int) this.mTabWidth, -1);
        }
        layoutParams.setMargins(0, 0, getResources().getDimensionPixelOffset(R.dimen.wdp15), 0);
        this.mTabsContainer.addView(tabView, position, layoutParams);
    }

    private void calcIndicatorRect() {
        View childAt = this.mTabsContainer.getChildAt(this.mCurrentTab);
        float left = childAt.getLeft();
        float right = childAt.getRight();
        if (this.mIndicatorStyle == 0 && this.mIndicatorWidthEqualTitle) {
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            this.mTextPaint.setTextSize(this.mTextsize);
            this.margin = ((right - left) - this.mTextPaint.measureText(textView.getText().toString())) / 2.0f;
        }
        int i10 = this.mCurrentTab;
        if (i10 < this.mTabCount - 1) {
            View childAt2 = this.mTabsContainer.getChildAt(i10 + 1);
            float left2 = childAt2.getLeft();
            float right2 = childAt2.getRight();
            float f10 = this.mCurrentPositionOffset;
            left += (left2 - left) * f10;
            right += f10 * (right2 - right);
            if (this.mIndicatorStyle == 0 && this.mIndicatorWidthEqualTitle) {
                TextView textView2 = (TextView) childAt2.findViewById(R.id.tv_tab_title);
                this.mTextPaint.setTextSize(this.mTextsize);
                float fMeasureText = ((right2 - left2) - this.mTextPaint.measureText(textView2.getText().toString())) / 2.0f;
                float f11 = this.margin;
                this.margin = f11 + (this.mCurrentPositionOffset * (fMeasureText - f11));
            }
        }
        Rect rect = this.mIndicatorRect;
        int i11 = (int) left;
        rect.left = i11;
        int i12 = (int) right;
        rect.right = i12;
        if (this.mIndicatorStyle == 0 && this.mIndicatorWidthEqualTitle) {
            float f12 = this.margin;
            rect.left = (int) ((left + f12) - 1.0f);
            rect.right = (int) ((right - f12) - 1.0f);
        }
        Rect rect2 = this.mTabRect;
        rect2.left = i11;
        rect2.right = i12;
        if (this.mIndicatorWidth < 0.0f) {
            return;
        }
        float left3 = childAt.getLeft() + ((childAt.getWidth() - this.mIndicatorWidth) / 2.0f);
        int i13 = this.mCurrentTab;
        if (i13 < this.mTabCount - 1) {
            left3 += this.mCurrentPositionOffset * ((childAt.getWidth() / 2) + (this.mTabsContainer.getChildAt(i13 + 1).getWidth() / 2));
        }
        Rect rect3 = this.mIndicatorRect;
        int i14 = (int) left3;
        rect3.left = i14;
        rect3.right = (int) (i14 + this.mIndicatorWidth);
    }

    private void obtainAttributes(Context context, AttributeSet attrs) {
        float f10;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, com.flyco.tablayout.R.styleable.SlidingTabLayout);
        int i10 = typedArrayObtainStyledAttributes.getInt(11, 0);
        this.mIndicatorStyle = i10;
        this.mIndicatorColor = typedArrayObtainStyledAttributes.getColor(3, Color.parseColor(i10 == 2 ? "#4B6A87" : "#ffffff"));
        int i11 = this.mIndicatorStyle;
        if (i11 == 1) {
            f10 = 4.0f;
        } else {
            f10 = i11 == 2 ? -1 : 2;
        }
        this.mIndicatorHeight = typedArrayObtainStyledAttributes.getDimension(6, dp2px(f10));
        this.mIndicatorWidth = typedArrayObtainStyledAttributes.getDimension(12, dp2px(this.mIndicatorStyle == 1 ? 10.0f : -1.0f));
        this.mIndicatorCornerRadius = typedArrayObtainStyledAttributes.getDimension(4, dp2px(this.mIndicatorStyle == 2 ? -1.0f : 0.0f));
        this.mIndicatorMarginLeft = typedArrayObtainStyledAttributes.getDimension(8, dp2px(0.0f));
        this.mIndicatorMarginTop = typedArrayObtainStyledAttributes.getDimension(10, dp2px(this.mIndicatorStyle == 2 ? 7.0f : 0.0f));
        this.mIndicatorMarginRight = typedArrayObtainStyledAttributes.getDimension(9, dp2px(0.0f));
        this.mIndicatorMarginBottom = typedArrayObtainStyledAttributes.getDimension(7, dp2px(this.mIndicatorStyle != 2 ? 0.0f : 7.0f));
        this.mIndicatorGravity = typedArrayObtainStyledAttributes.getInt(5, 80);
        this.mIndicatorWidthEqualTitle = typedArrayObtainStyledAttributes.getBoolean(13, false);
        this.mUnderlineColor = typedArrayObtainStyledAttributes.getColor(22, Color.parseColor("#ffffff"));
        this.mUnderlineHeight = typedArrayObtainStyledAttributes.getDimension(24, dp2px(0.0f));
        this.mUnderlineGravity = typedArrayObtainStyledAttributes.getInt(23, 80);
        this.mDividerColor = typedArrayObtainStyledAttributes.getColor(0, Color.parseColor("#ffffff"));
        this.mDividerWidth = typedArrayObtainStyledAttributes.getDimension(2, dp2px(0.0f));
        this.mDividerPadding = typedArrayObtainStyledAttributes.getDimension(1, dp2px(12.0f));
        this.mTextsize = typedArrayObtainStyledAttributes.getDimension(21, sp2px(14.0f));
        this.mTextSelectColor = typedArrayObtainStyledAttributes.getColor(19, Color.parseColor("#ffffff"));
        this.mTextUnselectColor = typedArrayObtainStyledAttributes.getColor(20, Color.parseColor("#848484"));
        this.mTextBold = typedArrayObtainStyledAttributes.getInt(18, 0);
        this.mTextAllCaps = typedArrayObtainStyledAttributes.getBoolean(17, false);
        this.mTabSpaceEqual = typedArrayObtainStyledAttributes.getBoolean(15, false);
        float dimension = typedArrayObtainStyledAttributes.getDimension(16, dp2px(-1.0f));
        this.mTabWidth = dimension;
        this.mTabPadding = typedArrayObtainStyledAttributes.getDimension(14, (this.mTabSpaceEqual || dimension > 0.0f) ? dp2px(0.0f) : dp2px(20.0f));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void scrollToCurrentTab() {
        if (this.mTabCount <= 0) {
            return;
        }
        int width = (int) (this.mCurrentPositionOffset * this.mTabsContainer.getChildAt(this.mCurrentTab).getWidth());
        int left = this.mTabsContainer.getChildAt(this.mCurrentTab).getLeft() + width;
        if (this.mCurrentTab > 0 || width > 0) {
            int width2 = left - ((getWidth() / 2) - getPaddingLeft());
            calcIndicatorRect();
            Rect rect = this.mTabRect;
            left = width2 + ((rect.right - rect.left) / 2);
        }
        if (left != this.mLastScrollX) {
            this.mLastScrollX = left;
            scrollTo(left, 0);
        }
    }

    private void updateTabSelection(int position) {
        int i10 = 0;
        while (i10 < this.mTabCount) {
            View childAt = this.mTabsContainer.getChildAt(i10);
            boolean z10 = i10 == position;
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(z10 ? this.mTextSelectColor : this.mTextUnselectColor);
                if (this.mTextBold == 1) {
                    textView.getPaint().setFakeBoldText(z10);
                }
                if (z10) {
                    textView.setBackgroundResource(R.drawable.stroke_mainyellow_butn);
                } else {
                    textView.setBackgroundResource(R.drawable.stroke_grey_butn);
                }
            }
            i10++;
        }
    }

    private void updateTabStyles() {
        int i10 = 0;
        while (i10 < this.mTabCount) {
            TextView textView = (TextView) this.mTabsContainer.getChildAt(i10).findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(i10 == this.mCurrentTab ? this.mTextSelectColor : this.mTextUnselectColor);
                textView.setTextSize(0, this.mTextsize);
                float f10 = this.mTabPadding;
                textView.setPadding((int) f10, 0, (int) f10, 0);
                if (this.mTextAllCaps) {
                    textView.setText(textView.getText().toString().toUpperCase());
                }
                int i11 = this.mTextBold;
                if (i11 == 2) {
                    textView.getPaint().setFakeBoldText(true);
                } else if (i11 == 0) {
                    textView.getPaint().setFakeBoldText(false);
                }
                if (this.mCurrentTab == i10) {
                    textView.setBackgroundResource(R.drawable.stroke_mainyellow_butn);
                } else {
                    textView.setBackgroundResource(R.drawable.stroke_grey_butn);
                }
            }
            i10++;
        }
    }

    public void addNewTab(String title) {
        View viewInflate = View.inflate(this.mContext, R.layout.layout_tab, null);
        ArrayList<String> arrayList = this.mTitles;
        if (arrayList != null) {
            arrayList.add(title);
        }
        ArrayList<String> arrayList2 = this.mTitles;
        addTab(this.mTabCount, (arrayList2 == null ? this.mViewPager.getAdapter().getPageTitle(this.mTabCount) : arrayList2.get(this.mTabCount)).toString(), viewInflate);
        ArrayList<String> arrayList3 = this.mTitles;
        this.mTabCount = arrayList3 == null ? this.mViewPager.getAdapter().getCount() : arrayList3.size();
        updateTabStyles();
    }

    protected int dp2px(float dp) {
        return (int) ((dp * this.mContext.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public int getCurrentTab() {
        return this.mCurrentTab;
    }

    public int getDividerColor() {
        return this.mDividerColor;
    }

    public float getDividerPadding() {
        return this.mDividerPadding;
    }

    public float getDividerWidth() {
        return this.mDividerWidth;
    }

    public int getIndicatorColor() {
        return this.mIndicatorColor;
    }

    public float getIndicatorCornerRadius() {
        return this.mIndicatorCornerRadius;
    }

    public float getIndicatorHeight() {
        return this.mIndicatorHeight;
    }

    public float getIndicatorMarginBottom() {
        return this.mIndicatorMarginBottom;
    }

    public float getIndicatorMarginLeft() {
        return this.mIndicatorMarginLeft;
    }

    public float getIndicatorMarginRight() {
        return this.mIndicatorMarginRight;
    }

    public float getIndicatorMarginTop() {
        return this.mIndicatorMarginTop;
    }

    public int getIndicatorStyle() {
        return this.mIndicatorStyle;
    }

    public float getIndicatorWidth() {
        return this.mIndicatorWidth;
    }

    public MsgView getMsgView(int position) {
        int i10 = this.mTabCount;
        if (position >= i10) {
            position = i10 - 1;
        }
        return (MsgView) this.mTabsContainer.getChildAt(position).findViewById(R.id.rtv_msg_tip);
    }

    public int getTabCount() {
        return this.mTabCount;
    }

    public float getTabPadding() {
        return this.mTabPadding;
    }

    public float getTabWidth() {
        return this.mTabWidth;
    }

    public int getTextBold() {
        return this.mTextBold;
    }

    public int getTextSelectColor() {
        return this.mTextSelectColor;
    }

    public int getTextUnselectColor() {
        return this.mTextUnselectColor;
    }

    public float getTextsize() {
        return this.mTextsize;
    }

    public TextView getTitleView(int tab) {
        return (TextView) this.mTabsContainer.getChildAt(tab).findViewById(R.id.tv_tab_title);
    }

    public int getUnderlineColor() {
        return this.mUnderlineColor;
    }

    public float getUnderlineHeight() {
        return this.mUnderlineHeight;
    }

    public void hideMsg(int position) {
        int i10 = this.mTabCount;
        if (position >= i10) {
            position = i10 - 1;
        }
        MsgView msgView = (MsgView) this.mTabsContainer.getChildAt(position).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            msgView.setVisibility(8);
        }
    }

    public boolean isTabSpaceEqual() {
        return this.mTabSpaceEqual;
    }

    public boolean isTextAllCaps() {
        return this.mTextAllCaps;
    }

    public void notifyDataSetChanged() {
        this.mTabsContainer.removeAllViews();
        ArrayList<String> arrayList = this.mTitles;
        this.mTabCount = arrayList == null ? this.mViewPager.getAdapter().getCount() : arrayList.size();
        for (int i10 = 0; i10 < this.mTabCount; i10++) {
            View viewInflate = View.inflate(this.mContext, R.layout.layout_tab, null);
            ArrayList<String> arrayList2 = this.mTitles;
            addTab(i10, (arrayList2 == null ? this.mViewPager.getAdapter().getPageTitle(i10) : arrayList2.get(i10)).toString(), viewInflate);
        }
        updateTabStyles();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isInEditMode() || this.mTabCount <= 0) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        float f10 = this.mDividerWidth;
        if (f10 > 0.0f) {
            this.mDividerPaint.setStrokeWidth(f10);
            this.mDividerPaint.setColor(this.mDividerColor);
            for (int i10 = 0; i10 < this.mTabCount - 1; i10++) {
                View childAt = this.mTabsContainer.getChildAt(i10);
                canvas.drawLine(childAt.getRight() + paddingLeft, this.mDividerPadding, childAt.getRight() + paddingLeft, height - this.mDividerPadding, this.mDividerPaint);
            }
        }
        if (this.mUnderlineHeight > 0.0f) {
            this.mRectPaint.setColor(this.mUnderlineColor);
            if (this.mUnderlineGravity == 80) {
                float f11 = height;
                canvas.drawRect(paddingLeft, f11 - this.mUnderlineHeight, this.mTabsContainer.getWidth() + paddingLeft, f11, this.mRectPaint);
            } else {
                canvas.drawRect(paddingLeft, 0.0f, this.mTabsContainer.getWidth() + paddingLeft, this.mUnderlineHeight, this.mRectPaint);
            }
        }
        calcIndicatorRect();
        int i11 = this.mIndicatorStyle;
        if (i11 == 1) {
            if (this.mIndicatorHeight > 0.0f) {
                this.mTrianglePaint.setColor(this.mIndicatorColor);
                this.mTrianglePath.reset();
                float f12 = height;
                this.mTrianglePath.moveTo(this.mIndicatorRect.left + paddingLeft, f12);
                Path path = this.mTrianglePath;
                Rect rect = this.mIndicatorRect;
                path.lineTo((rect.left / 2) + paddingLeft + (rect.right / 2), f12 - this.mIndicatorHeight);
                this.mTrianglePath.lineTo(paddingLeft + this.mIndicatorRect.right, f12);
                this.mTrianglePath.close();
                canvas.drawPath(this.mTrianglePath, this.mTrianglePaint);
                return;
            }
            return;
        }
        if (i11 == 2) {
            if (this.mIndicatorHeight < 0.0f) {
                this.mIndicatorHeight = (height - this.mIndicatorMarginTop) - this.mIndicatorMarginBottom;
            }
            float f13 = this.mIndicatorHeight;
            if (f13 > 0.0f) {
                float f14 = this.mIndicatorCornerRadius;
                if (f14 < 0.0f || f14 > f13 / 2.0f) {
                    this.mIndicatorCornerRadius = f13 / 2.0f;
                }
                this.mIndicatorDrawable.setColor(this.mIndicatorColor);
                GradientDrawable gradientDrawable = this.mIndicatorDrawable;
                int i12 = ((int) this.mIndicatorMarginLeft) + paddingLeft;
                Rect rect2 = this.mIndicatorRect;
                int i13 = i12 + rect2.left;
                float f15 = this.mIndicatorMarginTop;
                gradientDrawable.setBounds(i13, (int) f15, (int) ((paddingLeft + rect2.right) - this.mIndicatorMarginRight), (int) (f15 + this.mIndicatorHeight));
                this.mIndicatorDrawable.setCornerRadius(this.mIndicatorCornerRadius);
                this.mIndicatorDrawable.draw(canvas);
                return;
            }
            return;
        }
        if (this.mIndicatorHeight > 0.0f) {
            this.mIndicatorDrawable.setColor(this.mIndicatorColor);
            if (this.mIndicatorGravity == 80) {
                GradientDrawable gradientDrawable2 = this.mIndicatorDrawable;
                int i14 = ((int) this.mIndicatorMarginLeft) + paddingLeft;
                Rect rect3 = this.mIndicatorRect;
                int i15 = i14 + rect3.left;
                int i16 = height - ((int) this.mIndicatorHeight);
                float f16 = this.mIndicatorMarginBottom;
                gradientDrawable2.setBounds(i15, i16 - ((int) f16), (paddingLeft + rect3.right) - ((int) this.mIndicatorMarginRight), height - ((int) f16));
            } else {
                GradientDrawable gradientDrawable3 = this.mIndicatorDrawable;
                int i17 = ((int) this.mIndicatorMarginLeft) + paddingLeft;
                Rect rect4 = this.mIndicatorRect;
                int i18 = i17 + rect4.left;
                float f17 = this.mIndicatorMarginTop;
                gradientDrawable3.setBounds(i18, (int) f17, (paddingLeft + rect4.right) - ((int) this.mIndicatorMarginRight), ((int) this.mIndicatorHeight) + ((int) f17));
            }
            this.mIndicatorDrawable.setCornerRadius(this.mIndicatorCornerRadius);
            this.mIndicatorDrawable.draw(canvas);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int state) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        this.mCurrentTab = position;
        this.mCurrentPositionOffset = positionOffset;
        scrollToCurrentTab();
        invalidate();
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int position) {
        updateTabSelection(position);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onRestoreInstanceState(Parcelable state) {
        if (state instanceof Bundle) {
            Bundle bundle = (Bundle) state;
            this.mCurrentTab = bundle.getInt("mCurrentTab");
            state = bundle.getParcelable("instanceState");
            if (this.mCurrentTab != 0 && this.mTabsContainer.getChildCount() > 0) {
                updateTabSelection(this.mCurrentTab);
                scrollToCurrentTab();
            }
        }
        super.onRestoreInstanceState(state);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.mCurrentTab);
        return bundle;
    }

    public void setCurrentTab(int currentTab) {
        this.mCurrentTab = currentTab;
        this.mViewPager.setCurrentItem(currentTab);
    }

    public void setDividerColor(int dividerColor) {
        this.mDividerColor = dividerColor;
        invalidate();
    }

    public void setDividerPadding(float dividerPadding) {
        this.mDividerPadding = dp2px(dividerPadding);
        invalidate();
    }

    public void setDividerWidth(float dividerWidth) {
        this.mDividerWidth = dp2px(dividerWidth);
        invalidate();
    }

    public void setIndicatorColor(int indicatorColor) {
        this.mIndicatorColor = indicatorColor;
        invalidate();
    }

    public void setIndicatorCornerRadius(float indicatorCornerRadius) {
        this.mIndicatorCornerRadius = dp2px(indicatorCornerRadius);
        invalidate();
    }

    public void setIndicatorGravity(int indicatorGravity) {
        this.mIndicatorGravity = indicatorGravity;
        invalidate();
    }

    public void setIndicatorHeight(float indicatorHeight) {
        this.mIndicatorHeight = dp2px(indicatorHeight);
        invalidate();
    }

    public void setIndicatorMargin(float indicatorMarginLeft, float indicatorMarginTop, float indicatorMarginRight, float indicatorMarginBottom) {
        this.mIndicatorMarginLeft = dp2px(indicatorMarginLeft);
        this.mIndicatorMarginTop = dp2px(indicatorMarginTop);
        this.mIndicatorMarginRight = dp2px(indicatorMarginRight);
        this.mIndicatorMarginBottom = dp2px(indicatorMarginBottom);
        invalidate();
    }

    public void setIndicatorStyle(int indicatorStyle) {
        this.mIndicatorStyle = indicatorStyle;
        invalidate();
    }

    public void setIndicatorWidth(float indicatorWidth) {
        this.mIndicatorWidth = dp2px(indicatorWidth);
        invalidate();
    }

    public void setIndicatorWidthEqualTitle(boolean indicatorWidthEqualTitle) {
        this.mIndicatorWidthEqualTitle = indicatorWidthEqualTitle;
        invalidate();
    }

    public void setMsgMargin(int position, float leftPadding, float bottomPadding) {
        float f10;
        int i10 = this.mTabCount;
        if (position >= i10) {
            position = i10 - 1;
        }
        View childAt = this.mTabsContainer.getChildAt(position);
        MsgView msgView = (MsgView) childAt.findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            this.mTextPaint.setTextSize(this.mTextsize);
            float fMeasureText = this.mTextPaint.measureText(textView.getText().toString());
            float fDescent = this.mTextPaint.descent() - this.mTextPaint.ascent();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) msgView.getLayoutParams();
            float f11 = this.mTabWidth;
            if (f11 >= 0.0f) {
                f10 = f11 / 2.0f;
                fMeasureText /= 2.0f;
            } else {
                f10 = this.mTabPadding;
            }
            marginLayoutParams.leftMargin = (int) (f10 + fMeasureText + dp2px(leftPadding));
            int i11 = this.mHeight;
            marginLayoutParams.topMargin = i11 > 0 ? (((int) (i11 - fDescent)) / 2) - dp2px(bottomPadding) : 0;
            msgView.setLayoutParams(marginLayoutParams);
        }
    }

    public void setOnTabSelectListener(b listener) {
        this.mListener = listener;
    }

    public void setSnapOnTabClick(boolean snapOnTabClick) {
        this.mSnapOnTabClick = snapOnTabClick;
    }

    public void setTabPadding(float tabPadding) {
        this.mTabPadding = dp2px(tabPadding);
        updateTabStyles();
    }

    public void setTabSpaceEqual(boolean tabSpaceEqual) {
        this.mTabSpaceEqual = tabSpaceEqual;
        updateTabStyles();
    }

    public void setTabWidth(float tabWidth) {
        this.mTabWidth = dp2px(tabWidth);
        updateTabStyles();
    }

    public void setTextAllCaps(boolean textAllCaps) {
        this.mTextAllCaps = textAllCaps;
        updateTabStyles();
    }

    public void setTextBold(int textBold) {
        this.mTextBold = textBold;
        updateTabStyles();
    }

    public void setTextSelectColor(int textSelectColor) {
        this.mTextSelectColor = textSelectColor;
        updateTabStyles();
    }

    public void setTextUnselectColor(int textUnselectColor) {
        this.mTextUnselectColor = textUnselectColor;
        updateTabStyles();
    }

    public void setTextsize(float textsize) {
        this.mTextsize = sp2px(textsize);
        updateTabStyles();
    }

    public void setUnderlineColor(int underlineColor) {
        this.mUnderlineColor = underlineColor;
        invalidate();
    }

    public void setUnderlineGravity(int underlineGravity) {
        this.mUnderlineGravity = underlineGravity;
        invalidate();
    }

    public void setUnderlineHeight(float underlineHeight) {
        this.mUnderlineHeight = dp2px(underlineHeight);
        invalidate();
    }

    public void setViewPager(ViewPager vp) {
        if (vp == null || vp.getAdapter() == null) {
            throw new IllegalStateException("ViewPager or ViewPager adapter can not be NULL !");
        }
        this.mViewPager = vp;
        vp.removeOnPageChangeListener(this);
        this.mViewPager.addOnPageChangeListener(this);
        notifyDataSetChanged();
    }

    public void showDot(int position) {
        int i10 = this.mTabCount;
        if (position >= i10) {
            position = i10 - 1;
        }
        showMsg(position, 0);
    }

    public void showMsg(int position, int num) {
        int i10 = this.mTabCount;
        if (position >= i10) {
            position = i10 - 1;
        }
        MsgView msgView = (MsgView) this.mTabsContainer.getChildAt(position).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            t4.b.b(msgView, num);
            if (this.mInitSetMap.get(position) == null || !this.mInitSetMap.get(position).booleanValue()) {
                setMsgMargin(position, 4.0f, 2.0f);
                this.mInitSetMap.put(position, Boolean.TRUE);
            }
        }
    }

    protected int sp2px(float sp) {
        return (int) ((sp * this.mContext.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public SlidingTabLayoutScreenShort(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SlidingTabLayoutScreenShort(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mIndicatorRect = new Rect();
        this.mTabRect = new Rect();
        this.mIndicatorDrawable = new GradientDrawable();
        this.mRectPaint = new Paint(1);
        this.mDividerPaint = new Paint(1);
        this.mTrianglePaint = new Paint(1);
        this.mTrianglePath = new Path();
        this.mIndicatorStyle = 0;
        this.mTextPaint = new Paint(1);
        this.mInitSetMap = new SparseArray<>();
        setFillViewport(true);
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        this.mContext = context;
        LinearLayout linearLayout = new LinearLayout(context);
        this.mTabsContainer = linearLayout;
        addView(linearLayout);
        obtainAttributes(context, attrs);
        String attributeValue = attrs.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        if (attributeValue.equals(WMConstants.TIMER_STAGE_NONE) || attributeValue.equals("-2")) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, new int[]{android.R.attr.layout_height});
        this.mHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -2);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setCurrentTab(int currentTab, boolean smoothScroll) {
        this.mCurrentTab = currentTab;
        this.mViewPager.setCurrentItem(currentTab, smoothScroll);
    }

    public void setViewPager(ViewPager vp, String[] titles) {
        if (vp != null && vp.getAdapter() != null) {
            if (titles != null && titles.length != 0) {
                if (titles.length == vp.getAdapter().getCount()) {
                    this.mViewPager = vp;
                    ArrayList<String> arrayList = new ArrayList<>();
                    this.mTitles = arrayList;
                    Collections.addAll(arrayList, titles);
                    this.mViewPager.removeOnPageChangeListener(this);
                    this.mViewPager.addOnPageChangeListener(this);
                    notifyDataSetChanged();
                    return;
                }
                throw new IllegalStateException("Titles length must be the same as the page count !");
            }
            throw new IllegalStateException("Titles can not be EMPTY !");
        }
        throw new IllegalStateException("ViewPager or ViewPager adapter can not be NULL !");
    }

    public void setViewPager(ViewPager vp, String[] titles, FragmentActivity fa2, ArrayList<Fragment> fragments) {
        if (vp != null) {
            if (titles != null && titles.length != 0) {
                this.mViewPager = vp;
                vp.setAdapter(new InnerPagerAdapter(fa2.getSupportFragmentManager(), fragments, titles));
                this.mViewPager.removeOnPageChangeListener(this);
                this.mViewPager.addOnPageChangeListener(this);
                notifyDataSetChanged();
                return;
            }
            throw new IllegalStateException("Titles can not be EMPTY !");
        }
        throw new IllegalStateException("ViewPager can not be NULL !");
    }
}
