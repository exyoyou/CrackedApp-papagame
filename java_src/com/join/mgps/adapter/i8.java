package com.join.mgps.adapter;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.MApplication;
import com.join.mgps.fragment.GameOlFirstFragment_;
import com.join.mgps.fragment.GameOlNoOpenTestFragment_;
import com.join.mgps.fragment.GameOlOpenTestFragment_;
import com.join.mgps.fragment.PaPaBannerListFragment_;

/* JADX INFO: loaded from: classes3.dex */
public class i8 extends FragmentPagerAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String[] f62434b = {"最新", "大型", "破解", "中文", "厂商"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String[] f62435c = {"首发", "已开测", "未开测", "礼包"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String[] f62436d = {"推荐", "中文", "破解", "美国榜", "日本榜", "韩国榜"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f62437a;

    public i8(FragmentManager fm2, int viewType) {
        super(fm2);
        this.f62437a = viewType;
        if ("2308".equals(MApplication.B) || "750".equals(MApplication.B) || "753".equals(MApplication.B)) {
            f62434b = new String[]{"最新", "大型", "经典", "中文", "厂商"};
            f62436d = new String[]{"推荐", "中文", "经典", "美国榜", "日本榜", "韩国榜"};
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        int i10 = this.f62437a;
        if (i10 == 0) {
            return f62434b.length;
        }
        return i10 == 1 ? f62435c.length : f62436d.length;
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int position) {
        int i10 = this.f62437a;
        if (i10 == 0) {
            if (position != 0 && position != 1 && position != 2 && position != 3) {
                if (position != 4) {
                    return null;
                }
                return new com.join.mgps.fragment.t3();
            }
            GameOlOpenTestFragment_ gameOlOpenTestFragment_ = new GameOlOpenTestFragment_();
            Bundle bundle = new Bundle();
            bundle.putInt("intentTo", position);
            gameOlOpenTestFragment_.setArguments(bundle);
            return gameOlOpenTestFragment_;
        }
        if (i10 == 1) {
            if (position == 0) {
                return new GameOlFirstFragment_();
            }
            if (position != 1) {
                if (position == 2) {
                    return new GameOlNoOpenTestFragment_();
                }
                if (position != 3) {
                    return null;
                }
                return new com.join.mgps.fragment.p3();
            }
            GameOlOpenTestFragment_ gameOlOpenTestFragment_2 = new GameOlOpenTestFragment_();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("intentTo", -1);
            gameOlOpenTestFragment_2.setArguments(bundle2);
            return gameOlOpenTestFragment_2;
        }
        if (i10 != 2) {
            return null;
        }
        if (position == 0 || position == 1 || position == 2) {
            PaPaBannerListFragment_ paPaBannerListFragment_ = new PaPaBannerListFragment_();
            Bundle bundle3 = new Bundle();
            if (position == 0) {
                bundle3.putInt("type", 11);
            } else if (position == 1) {
                bundle3.putInt("type", 12);
            } else if (position == 2) {
                bundle3.putInt("type", 13);
            }
            paPaBannerListFragment_.setArguments(bundle3);
            return paPaBannerListFragment_;
        }
        com.join.mgps.fragment.o4 o4Var = new com.join.mgps.fragment.o4();
        Bundle bundle4 = new Bundle();
        if (position == 3) {
            bundle4.putInt("type", 1);
        } else if (position == 4) {
            bundle4.putInt("type", 2);
        } else if (position == 5) {
            bundle4.putInt("type", 3);
        }
        o4Var.setArguments(bundle4);
        return o4Var;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int position) {
        int i10 = this.f62437a;
        if (i10 == 0) {
            return f62434b[position];
        }
        return i10 == 1 ? f62435c[position] : f62436d[position];
    }
}
