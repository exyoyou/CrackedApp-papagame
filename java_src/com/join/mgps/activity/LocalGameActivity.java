package com.join.mgps.activity;

import android.annotation.SuppressLint;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager.widget.ViewPager;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.customview.TabPageIndicator;
import com.join.mgps.dto.GameSortBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.papa91.arc.CContext;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_game_local)
public class LocalGameActivity extends FragmentActivity {
    public static final String ALL = "全部";
    public static final String FIGHT = "对战";
    public static final String ONLINE = "网游";
    public static final String SINGLE = "单机";

    @ViewById
    ImageView back_image;
    private List<DownloadTask> games;
    private com.join.mgps.customview.e0 mPagerAdapter;
    com.join.mgps.rpc.e mRpcClient;

    @ViewById
    ViewPager mViewpagerV4;

    @ViewById
    TabPageIndicator pageIndicator;

    @Pref
    PrefDef_ prefDef;

    @ViewById
    TextView title_textview;
    private boolean isAll = false;
    private boolean isFight = false;
    private ArrayList<Fragment> fragmentsList = new ArrayList<>();
    private List<String> stringList = new ArrayList();
    private Map<String, List<DownloadTask>> hashMapGame = new HashMap();
    List<String> sortString = null;

    private void addDataToType(DownloadTask task, List<DownloadTask> datas) {
        boolean z10;
        Iterator<DownloadTask> it2 = datas.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z10 = false;
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(task.getCrc_link_type_val())) {
                next.setStatus(task.getStatus());
                z10 = true;
                break;
            }
        }
        if (z10) {
            return;
        }
        datas.add(0, task);
    }

    private void addGameToFragment(DownloadTask downloadTask, int index, String type, List<DownloadTask> tasks) {
        try {
            ArrayList<Fragment> arrayList = this.fragmentsList;
            if (arrayList != null && arrayList.size() > index) {
                boolean z10 = false;
                int status = downloadTask != null ? downloadTask.getStatus() : 0;
                if (this.fragmentsList.get(index) instanceof com.join.mgps.fragment.l4) {
                    boolean z11 = true;
                    if (status == 5) {
                        if (this.isAll) {
                            addDataToType(downloadTask, this.hashMapGame.get(ALL));
                        }
                        if (downloadTask.isIs_fight() == 1 && this.isFight) {
                            if (this.stringList.indexOf("对战") == -1) {
                                int iIndexOf = this.sortString.indexOf("对战");
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(downloadTask);
                                com.join.mgps.fragment.m4 m4Var = new com.join.mgps.fragment.m4();
                                m4Var.O(arrayList2);
                                this.hashMapGame.put("对战", arrayList2);
                                int currentToAddIndex = getCurrentToAddIndex(iIndexOf);
                                this.stringList.add(currentToAddIndex, "对战");
                                this.fragmentsList.add(currentToAddIndex, m4Var);
                                refreshUi();
                                return;
                            }
                            List<DownloadTask> list = this.hashMapGame.get("对战");
                            addDataToType(downloadTask, list);
                            ((com.join.mgps.fragment.l4) this.fragmentsList.get(this.stringList.indexOf("对战"))).N(list);
                        }
                        ((com.join.mgps.fragment.l4) this.fragmentsList.get(index)).N(tasks);
                        if (this.isAll) {
                            ((com.join.mgps.fragment.l4) this.fragmentsList.get(0)).N(this.hashMapGame.get(ALL));
                            return;
                        }
                        return;
                    }
                    if (status == 7 || status == 2) {
                        if (this.isAll) {
                            removeDataToType(downloadTask, this.hashMapGame.get(ALL));
                            if (this.hashMapGame.get(ALL).size() == 0) {
                                int iIndexOf2 = this.stringList.indexOf(ALL);
                                this.stringList.remove(iIndexOf2);
                                this.fragmentsList.remove(iIndexOf2);
                            } else if (this.isAll) {
                                ((com.join.mgps.fragment.l4) this.fragmentsList.get(0)).N(this.hashMapGame.get(ALL));
                            }
                        }
                        if (tasks.size() == 0) {
                            int iIndexOf3 = this.stringList.indexOf(type);
                            if (iIndexOf3 != -1) {
                                this.stringList.remove(iIndexOf3);
                                this.fragmentsList.remove(iIndexOf3);
                                this.hashMapGame.remove(type);
                            }
                            z10 = true;
                        } else {
                            ((com.join.mgps.fragment.l4) this.fragmentsList.get(index)).N(tasks);
                        }
                        if (downloadTask.isIs_fight() == 1 && this.isFight) {
                            List<DownloadTask> list2 = this.hashMapGame.get("对战");
                            removeDataToType(downloadTask, list2);
                            if (list2.size() == 0) {
                                this.fragmentsList.remove(this.stringList.indexOf("对战"));
                                this.stringList.remove("对战");
                                this.hashMapGame.remove("对战");
                            } else {
                                ((com.join.mgps.fragment.l4) this.fragmentsList.get(this.stringList.indexOf("对战"))).N(list2);
                                z11 = z10;
                            }
                        } else {
                            z11 = z10;
                        }
                        if (z11) {
                            refreshUi();
                        }
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void addNewFragment(DownloadTask downloadTask, int index, String type) {
        if (this.isAll) {
            if (this.stringList.indexOf(ALL) != -1) {
                List<DownloadTask> list = this.hashMapGame.get(ALL);
                list.add(0, downloadTask);
                ((com.join.mgps.fragment.l4) this.fragmentsList.get(0)).N(list);
            } else {
                int iIndexOf = this.sortString.indexOf(ALL);
                ArrayList arrayList = new ArrayList();
                arrayList.add(downloadTask);
                com.join.mgps.fragment.m4 m4Var = new com.join.mgps.fragment.m4();
                m4Var.O(arrayList);
                int currentToAddIndex = getCurrentToAddIndex(iIndexOf);
                this.stringList.add(currentToAddIndex, ALL);
                this.fragmentsList.add(currentToAddIndex, m4Var);
                this.hashMapGame.put(ALL, arrayList);
            }
        }
        if ((ConstantIntEnum.CHOICENESS.value() + "").equals(type)) {
            refreshUi();
            return;
        }
        if (downloadTask.isIs_fight() == 1 && this.isFight) {
            if (this.stringList.indexOf("对战") != -1) {
                List<DownloadTask> list2 = this.hashMapGame.get("对战");
                addDataToType(downloadTask, list2);
                ((com.join.mgps.fragment.l4) this.fragmentsList.get(this.stringList.indexOf("对战"))).N(list2);
            } else {
                int iIndexOf2 = this.sortString.indexOf("对战");
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(downloadTask);
                com.join.mgps.fragment.m4 m4Var2 = new com.join.mgps.fragment.m4();
                m4Var2.O(arrayList2);
                this.hashMapGame.put("对战", arrayList2);
                int currentToAddIndex2 = getCurrentToAddIndex(iIndexOf2);
                this.stringList.add(currentToAddIndex2, "对战");
                this.fragmentsList.add(currentToAddIndex2, m4Var2);
            }
        }
        int iIndexOf3 = this.sortString.indexOf(type);
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(downloadTask);
        com.join.mgps.fragment.m4 m4Var3 = new com.join.mgps.fragment.m4();
        m4Var3.O(arrayList3);
        int currentToAddIndex3 = getCurrentToAddIndex(iIndexOf3);
        this.stringList.add(currentToAddIndex3, type);
        this.fragmentsList.add(currentToAddIndex3, m4Var3);
        this.hashMapGame.put(type, arrayList3);
        refreshUi();
    }

    private String gameIsType(DownloadTask task) {
        if (task == null) {
            return null;
        }
        if (com.join.mgps.Util.t2.h(task.getRomType())) {
            task.setRomType(task.getPlugin_num());
        }
        String romType = task.getRomType();
        StringBuilder sb2 = new StringBuilder();
        ConstantIntEnum constantIntEnum = ConstantIntEnum.FBA;
        sb2.append(constantIntEnum.value());
        sb2.append("");
        if (sb2.toString().equals(romType)) {
            return constantIntEnum.nickName();
        }
        StringBuilder sb3 = new StringBuilder();
        ConstantIntEnum constantIntEnum2 = ConstantIntEnum.FC;
        sb3.append(constantIntEnum2.value());
        sb3.append("");
        if (sb3.toString().equals(romType)) {
            return constantIntEnum2.nickName();
        }
        StringBuilder sb4 = new StringBuilder();
        ConstantIntEnum constantIntEnum3 = ConstantIntEnum.GBA;
        sb4.append(constantIntEnum3.value());
        sb4.append("");
        if (sb4.toString().equals(romType)) {
            return constantIntEnum3.nickName();
        }
        StringBuilder sb5 = new StringBuilder();
        ConstantIntEnum constantIntEnum4 = ConstantIntEnum.PSP;
        sb5.append(constantIntEnum4.value());
        sb5.append("");
        if (sb5.toString().equals(romType)) {
            return constantIntEnum4.nickName();
        }
        StringBuilder sb6 = new StringBuilder();
        ConstantIntEnum constantIntEnum5 = ConstantIntEnum.NDS;
        sb6.append(constantIntEnum5.value());
        sb6.append("");
        if (sb6.toString().equals(romType)) {
            return constantIntEnum5.nickName();
        }
        StringBuilder sb7 = new StringBuilder();
        ConstantIntEnum constantIntEnum6 = ConstantIntEnum.PS2;
        sb7.append(constantIntEnum6.value());
        sb7.append("");
        if (sb7.toString().equals(romType)) {
            return constantIntEnum6.nickName();
        }
        StringBuilder sb8 = new StringBuilder();
        ConstantIntEnum constantIntEnum7 = ConstantIntEnum.GBC;
        sb8.append(constantIntEnum7.value());
        sb8.append("");
        if (sb8.toString().equals(romType)) {
            return constantIntEnum7.nickName();
        }
        StringBuilder sb9 = new StringBuilder();
        ConstantIntEnum constantIntEnum8 = ConstantIntEnum.MD;
        sb9.append(constantIntEnum8.value());
        sb9.append("");
        if (sb9.toString().equals(romType)) {
            return constantIntEnum8.nickName();
        }
        StringBuilder sb10 = new StringBuilder();
        ConstantIntEnum constantIntEnum9 = ConstantIntEnum.PS;
        sb10.append(constantIntEnum9.value());
        sb10.append("");
        if (sb10.toString().equals(romType)) {
            return constantIntEnum9.nickName();
        }
        StringBuilder sb11 = new StringBuilder();
        ConstantIntEnum constantIntEnum10 = ConstantIntEnum.SFC;
        sb11.append(constantIntEnum10.value());
        sb11.append("");
        if (sb11.toString().equals(romType)) {
            return constantIntEnum10.nickName();
        }
        StringBuilder sb12 = new StringBuilder();
        ConstantIntEnum constantIntEnum11 = ConstantIntEnum.WSC;
        sb12.append(constantIntEnum11.value());
        sb12.append("");
        if (sb12.toString().equals(romType)) {
            return constantIntEnum11.nickName();
        }
        StringBuilder sb13 = new StringBuilder();
        ConstantIntEnum constantIntEnum12 = ConstantIntEnum.N64;
        sb13.append(constantIntEnum12.value());
        sb13.append("");
        if (sb13.toString().equals(romType)) {
            return constantIntEnum12.nickName();
        }
        StringBuilder sb14 = new StringBuilder();
        ConstantIntEnum constantIntEnum13 = ConstantIntEnum.ONS;
        sb14.append(constantIntEnum13.value());
        sb14.append("");
        if (sb14.toString().equals(romType)) {
            return constantIntEnum13.nickName();
        }
        StringBuilder sb15 = new StringBuilder();
        ConstantIntEnum constantIntEnum14 = ConstantIntEnum.DC;
        sb15.append(constantIntEnum14.value());
        sb15.append("");
        if (sb15.toString().equals(romType)) {
            return constantIntEnum14.nickName();
        }
        List<TipBean> tipBeans = task.getTipBeans();
        if (tipBeans != null) {
            for (TipBean tipBean : tipBeans) {
                if (tipBean != null) {
                    String name = tipBean.getName();
                    if (name != null && name.indexOf("网游") != -1) {
                        return "网游";
                    }
                    if (name != null && name.indexOf("单机") != -1) {
                        return "单机";
                    }
                    StringBuilder sb16 = new StringBuilder();
                    ConstantIntEnum constantIntEnum15 = ConstantIntEnum.CHOICENESS;
                    sb16.append(constantIntEnum15.value());
                    sb16.append("");
                    if (sb16.toString().equals(tipBean.getId())) {
                        return constantIntEnum15.value() + "";
                    }
                }
            }
        }
        return null;
    }

    private int getCurrentToAddIndex(int current) {
        for (int i10 = current - 1; i10 >= 0; i10--) {
            if (this.stringList.contains(this.sortString.get(i10))) {
                return this.stringList.indexOf(this.sortString.get(i10)) + 1;
            }
        }
        return 0;
    }

    private void removeDataToType(DownloadTask downloadTask, List<DownloadTask> datas) {
        Iterator<DownloadTask> it2 = datas.iterator();
        while (it2.hasNext()) {
            if (it2.next().getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                it2.remove();
                return;
            }
        }
    }

    @AfterViews
    void afterViews() {
        this.mRpcClient = com.join.mgps.rpc.impl.d.O1();
        this.title_textview.setText("本地游戏");
        ArrayList arrayList = new ArrayList();
        this.sortString = arrayList;
        arrayList.addAll(Arrays.asList(getResources().getStringArray(R.array.my_game_list)));
        com.join.mgps.customview.e0 e0Var = new com.join.mgps.customview.e0(getSupportFragmentManager(), this.fragmentsList, this.stringList);
        this.mPagerAdapter = e0Var;
        this.mViewpagerV4.setAdapter(e0Var);
        this.pageIndicator.setViewPager(this.mViewpagerV4);
        this.isAll = this.sortString.contains(ALL);
        this.isFight = this.sortString.contains("对战");
        loadData();
        getGameSort();
    }

    @Click
    void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getGameSort() {
        List<GameSortBean> data;
        try {
            ResultMainBean<List<GameSortBean>> resultMainBeanD1 = this.mRpcClient.d1(RequestBeanUtil.getInstance(this).getGameSortRequestBean(com.join.android.app.common.utils.q.n(getApplicationContext()).A(), ""));
            if (resultMainBeanD1 != null && resultMainBeanD1.getFlag() == 1 && resultMainBeanD1.getMessages() != null && (data = resultMainBeanD1.getMessages().getData()) != null && data.size() > 0) {
                this.sortString.clear();
                for (GameSortBean gameSortBean : data) {
                    String name = gameSortBean.getName();
                    if (gameSortBean.getName().indexOf("单机") != -1) {
                        name = "单机";
                    }
                    this.sortString.add(name);
                }
                this.isAll = this.sortString.contains(ALL);
                this.isFight = this.sortString.contains("对战");
            }
            this.prefDef.myGameAllTabSort().g(JsonMapper.getInstance().toJson(this.sortString));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Background
    public void loadData() {
        List<String> list;
        String strD = this.prefDef.myGameAllTabSort().d();
        if (com.join.mgps.Util.t2.h(strD)) {
            getGameSort(this.sortString);
            return;
        }
        try {
            list = (List) JsonMapper.getInstance().fromJson(strD, List.class);
        } catch (Exception e10) {
            e10.printStackTrace();
            list = null;
        }
        if (list == null || list.size() == 0) {
            list = this.sortString;
        }
        getGameSort(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void refreshUi() {
        this.mPagerAdapter.d(this.fragmentsList, this.stringList);
        this.mPagerAdapter.notifyDataSetChanged();
        this.pageIndicator.notifyDataSetChanged();
        if (this.fragmentsList.size() > 0) {
            this.pageIndicator.setVisibility(0);
            this.mViewpagerV4.setVisibility(0);
            this.mViewpagerV4.setCurrentItem(0);
        } else {
            showNoData();
        }
        this.mViewpagerV4.setOffscreenPageLimit(this.fragmentsList.size());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showNoData() {
        this.pageIndicator.setVisibility(8);
        this.mViewpagerV4.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showUi() {
        this.pageIndicator.setVisibility(0);
        this.mViewpagerV4.setVisibility(0);
        this.mViewpagerV4.setOffscreenPageLimit(2);
        this.mPagerAdapter.d(this.fragmentsList, this.stringList);
        this.mPagerAdapter.notifyDataSetChanged();
        this.pageIndicator.notifyDataSetChanged();
    }

    @SuppressLint({"LongLogTag"})
    synchronized void updateUI(DownloadTask downloadTask, int from) {
        List<DownloadTask> list;
        int iIndexOf;
        boolean z10;
        boolean z11;
        boolean z12;
        if (from == 4) {
            return;
        }
        if (downloadTask.getFileType().indexOf(Dtype.chajian.toString()) != -1) {
            return;
        }
        int status = downloadTask.getStatus();
        String strGameIsType = gameIsType(downloadTask);
        if (strGameIsType != null) {
            list = this.hashMapGame.get(strGameIsType);
            iIndexOf = this.stringList.indexOf(strGameIsType);
            if ((ConstantIntEnum.CHOICENESS.value() + "").equals(strGameIsType) && this.stringList.indexOf(ALL) != -1) {
                strGameIsType = ALL;
                list = this.hashMapGame.get(ALL);
                iIndexOf = this.stringList.indexOf(ALL);
            }
        } else {
            list = null;
            iIndexOf = 0;
        }
        if (list != null && list.size() > 0) {
            if (status == 7 || status == 2) {
                Iterator<DownloadTask> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next().getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                        it2.remove();
                        break;
                    }
                }
                Iterator<DownloadTask> it3 = this.games.iterator();
                while (it3.hasNext()) {
                    if (it3.next().getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                        it3.remove();
                        break;
                    }
                }
            } else {
                Iterator<DownloadTask> it4 = this.games.iterator();
                while (true) {
                    z10 = true;
                    if (!it4.hasNext()) {
                        z11 = true;
                        break;
                    } else if (it4.next().getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                        z11 = false;
                        break;
                    }
                }
                if (z11) {
                    this.games.add(downloadTask);
                }
                if (status == 5) {
                    if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.chajian.name())) {
                        return;
                    }
                    if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.apk.name())) {
                        Iterator<DownloadTask> it5 = list.iterator();
                        while (true) {
                            if (!it5.hasNext()) {
                                z12 = false;
                                break;
                            }
                            DownloadTask next = it5.next();
                            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                                next.setStatus(downloadTask.getStatus());
                                next.setGameZipPath(downloadTask.getGameZipPath());
                                next.setVer(downloadTask.getVer());
                                next.setVer_name(downloadTask.getVer_name());
                                next.setCfg_ver(downloadTask.getCfg_ver());
                                next.setSource_ver(downloadTask.getSource_ver());
                                z12 = true;
                                break;
                            }
                        }
                        if (!z12) {
                            list.add(0, downloadTask);
                        }
                    }
                    if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.android.name())) {
                        Iterator<DownloadTask> it6 = list.iterator();
                        while (true) {
                            if (!it6.hasNext()) {
                                z10 = false;
                                break;
                            }
                            DownloadTask next2 = it6.next();
                            if (next2.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                                next2.setStatus(downloadTask.getStatus());
                                break;
                            }
                        }
                        if (!z10) {
                            list.add(0, downloadTask);
                        }
                    }
                }
            }
            addGameToFragment(downloadTask, iIndexOf, strGameIsType, list);
        } else if (status == 5) {
            this.games.add(downloadTask);
            addNewFragment(downloadTask, iIndexOf, strGameIsType);
        }
    }

    private void getGameSort(List<String> sorts) {
        ArrayList arrayList;
        ArrayList arrayList2;
        this = this;
        try {
            List<DownloadTask> listT = q5.f.M().T(null);
            this.games = listT;
            try {
                if (listT.size() > 0) {
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.addAll(this.games);
                    this.hashMapGame.put(ALL, arrayList3);
                    ArrayList arrayList4 = new ArrayList();
                    this.hashMapGame.put("网游", arrayList4);
                    ArrayList arrayList5 = new ArrayList();
                    this.hashMapGame.put("单机", arrayList5);
                    ArrayList arrayList6 = new ArrayList();
                    this.hashMapGame.put("对战", arrayList6);
                    ArrayList arrayList7 = new ArrayList();
                    this.hashMapGame.put(CContext.SCENE_FC, arrayList7);
                    ArrayList arrayList8 = new ArrayList();
                    this.hashMapGame.put("街机", arrayList8);
                    ArrayList arrayList9 = new ArrayList();
                    this.hashMapGame.put(CContext.SCENE_GBA, arrayList9);
                    ArrayList arrayList10 = new ArrayList();
                    this.hashMapGame.put(CContext.SCENE_PSP, arrayList10);
                    ArrayList arrayList11 = new ArrayList();
                    this.hashMapGame.put("NDS", arrayList11);
                    ArrayList arrayList12 = new ArrayList();
                    this.hashMapGame.put("GBC", arrayList12);
                    ArrayList arrayList13 = new ArrayList();
                    this.hashMapGame.put("MD", arrayList13);
                    ArrayList arrayList14 = new ArrayList();
                    ArrayList arrayList15 = arrayList5;
                    this.hashMapGame.put("PS", arrayList14);
                    ArrayList arrayList16 = new ArrayList();
                    String str = "单机";
                    this.hashMapGame.put("SFC", arrayList16);
                    ArrayList arrayList17 = new ArrayList();
                    ArrayList arrayList18 = arrayList4;
                    this.hashMapGame.put("WSC", arrayList17);
                    ArrayList arrayList19 = new ArrayList();
                    String str2 = "网游";
                    this.hashMapGame.put("N64", arrayList19);
                    ArrayList arrayList20 = new ArrayList();
                    ArrayList arrayList21 = arrayList19;
                    this.hashMapGame.put("ONS", arrayList20);
                    ArrayList arrayList22 = new ArrayList();
                    ArrayList arrayList23 = arrayList20;
                    this.hashMapGame.put("DC", arrayList22);
                    Iterator<DownloadTask> it2 = this.games.iterator();
                    while (it2.hasNext()) {
                        try {
                            DownloadTask next = it2.next();
                            it2 = it2;
                            if (next.isIs_fight() == 1) {
                                arrayList6.add(next);
                            }
                            if (com.join.mgps.Util.t2.h(next.getRomType())) {
                                next.setRomType(next.getPlugin_num());
                            }
                            String romType = next.getRomType();
                            StringBuilder sb2 = new StringBuilder();
                            arrayList6 = arrayList6;
                            sb2.append(ConstantIntEnum.FBA.value());
                            sb2.append("");
                            if (romType.equals(sb2.toString())) {
                                arrayList8.add(next);
                            } else {
                                if (next.getRomType().equals(ConstantIntEnum.FC.value() + "")) {
                                    arrayList7.add(next);
                                } else {
                                    if (next.getRomType().equals(ConstantIntEnum.GBA.value() + "")) {
                                        arrayList9.add(next);
                                    } else {
                                        if (next.getRomType().equals(ConstantIntEnum.PSP.value() + "")) {
                                            arrayList10.add(next);
                                        } else {
                                            if (next.getRomType().equals(ConstantIntEnum.NDS.value() + "")) {
                                                arrayList11.add(next);
                                            } else {
                                                if (next.getRomType().equals(ConstantIntEnum.PS2.value() + "")) {
                                                    arrayList11.add(next);
                                                } else {
                                                    if (next.getRomType().equals(ConstantIntEnum.GBC.value() + "")) {
                                                        arrayList12.add(next);
                                                    } else {
                                                        if (next.getRomType().equals(ConstantIntEnum.MD.value() + "")) {
                                                            arrayList13.add(next);
                                                        } else {
                                                            if (next.getRomType().equals(ConstantIntEnum.PS.value() + "")) {
                                                                arrayList14.add(next);
                                                            } else {
                                                                if (next.getRomType().equals(ConstantIntEnum.SFC.value() + "")) {
                                                                    arrayList16.add(next);
                                                                } else {
                                                                    if (next.getRomType().equals(ConstantIntEnum.WSC.value() + "")) {
                                                                        arrayList17.add(next);
                                                                    } else {
                                                                        if (next.getRomType().equals(ConstantIntEnum.N64.value() + "")) {
                                                                            ArrayList arrayList24 = arrayList21;
                                                                            arrayList24.add(next);
                                                                            arrayList21 = arrayList24;
                                                                        } else {
                                                                            arrayList21 = arrayList21;
                                                                            String romType2 = next.getRomType();
                                                                            StringBuilder sb3 = new StringBuilder();
                                                                            ArrayList arrayList25 = arrayList17;
                                                                            sb3.append(ConstantIntEnum.ONS.value());
                                                                            sb3.append("");
                                                                            if (romType2.equals(sb3.toString())) {
                                                                                ArrayList arrayList26 = arrayList23;
                                                                                arrayList26.add(next);
                                                                                arrayList23 = arrayList26;
                                                                            } else {
                                                                                String romType3 = next.getRomType();
                                                                                StringBuilder sb4 = new StringBuilder();
                                                                                arrayList23 = arrayList23;
                                                                                sb4.append(ConstantIntEnum.DC.value());
                                                                                sb4.append("");
                                                                                if (romType3.equals(sb4.toString())) {
                                                                                    arrayList22.add(next);
                                                                                } else {
                                                                                    Iterator<TipBean> it3 = next.getTipBeans().iterator();
                                                                                    while (true) {
                                                                                        if (!it3.hasNext()) {
                                                                                            arrayList = arrayList15;
                                                                                            arrayList2 = arrayList18;
                                                                                            break;
                                                                                        }
                                                                                        TipBean next2 = it3.next();
                                                                                        Iterator<TipBean> it4 = it3;
                                                                                        String str3 = str2;
                                                                                        str2 = str3;
                                                                                        if (next2.getName().indexOf(str3) != -1) {
                                                                                            arrayList2 = arrayList18;
                                                                                            arrayList2.add(next);
                                                                                            arrayList = arrayList15;
                                                                                            break;
                                                                                        }
                                                                                        arrayList2 = arrayList18;
                                                                                        String str4 = str;
                                                                                        str = str4;
                                                                                        if (next2.getName().indexOf(str4) != -1) {
                                                                                            arrayList = arrayList15;
                                                                                            arrayList.add(next);
                                                                                            break;
                                                                                        } else {
                                                                                            arrayList18 = arrayList2;
                                                                                            it3 = it4;
                                                                                        }
                                                                                    }
                                                                                    arrayList15 = arrayList;
                                                                                    arrayList18 = arrayList2;
                                                                                }
                                                                                arrayList17 = arrayList25;
                                                                            }
                                                                            arrayList17 = arrayList25;
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            it2 = it2;
                        } catch (Exception e10) {
                            e = e10;
                        }
                    }
                    for (String str5 : sorts) {
                        if (this.hashMapGame.containsKey(str5) && this.hashMapGame.get(str5).size() > 0) {
                            com.join.mgps.fragment.m4 m4Var = new com.join.mgps.fragment.m4();
                            m4Var.O(this.hashMapGame.get(str5));
                            this.fragmentsList.add(m4Var);
                            this.stringList.add(str5);
                        }
                    }
                    showUi();
                    return;
                }
                showNoData();
                return;
            } catch (Exception e11) {
                e = e11;
            }
        } catch (Exception e12) {
            e = e12;
        }
        e.printStackTrace();
        showNoData();
    }
}
