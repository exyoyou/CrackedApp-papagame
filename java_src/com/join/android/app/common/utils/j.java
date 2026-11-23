package com.join.android.app.common.utils;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.join.mgps.Util.o0;
import com.kuaishou.weapon.p0.t;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f34775b = 720;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static List<a> f34776c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f34777a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f34778a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f34779b;

        public a(int swDp, int wBaseDp) {
            this.f34778a = swDp;
            this.f34779b = wBaseDp;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int c() {
            return this.f34778a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int d() {
            return this.f34779b;
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        f34776c = arrayList;
        arrayList.add(new a(MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA, f34775b));
        f34776c.add(new a(320, f34775b));
        f34776c.add(new a(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL, f34775b));
        f34776c.add(new a(384, f34775b));
        f34776c.add(new a(MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_RETRANSMISSION_TIME_MS, f34775b));
        f34776c.add(new a(400, f34775b));
        f34776c.add(new a(TTAdConstant.IMAGE_LIST_SIZE_CODE, f34775b));
        f34776c.add(new a(TTAdConstant.IMAGE_CODE, f34775b));
        f34776c.add(new a(TypedValues.CycleType.TYPE_EASING, f34775b));
        f34776c.add(new a(430, f34775b));
        f34776c.add(new a(432, f34775b));
        f34776c.add(new a(440, f34775b));
        f34776c.add(new a(480, f34775b));
        f34776c.add(new a(MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_CHECK_ENHANCE, f34775b));
        f34776c.add(new a(592, f34775b));
        f34776c.add(new a(600, f34775b));
        f34776c.add(new a(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK, f34775b));
        f34776c.add(new a(662, f34775b));
        f34776c.add(new a(720, f34775b));
        f34776c.add(new a(768, f34775b));
        f34776c.add(new a(800, f34775b));
        f34776c.add(new a(MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_STREAM_SESSION_ID, f34775b));
    }

    public j() {
        StringBuilder sb2 = new StringBuilder();
        String str = File.separator;
        sb2.append(str);
        sb2.append("test");
        sb2.append(str);
        this.f34777a = sb2.toString();
    }

    public static void a(String[] args) throws Throwable {
        File file = new File(new File(o0.f49827a), "src/test/res/");
        j jVar = new j();
        jVar.c(file.getPath());
        jVar.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00fe -> B:36:0x0102). Please report as a decompilation issue!!! */
    private void e(File file, StringBuffer stringBuffer, a aVar) throws Throwable {
        Throwable th;
        BufferedWriter bufferedWriter;
        Object obj = null;
        BufferedWriter bufferedWriter2 = null;
        obj = null;
        try {
            try {
                try {
                    BufferedWriter bufferedWriter3 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), "UTF-8"));
                    try {
                        bufferedWriter3.write("<?xml version=\"1.0\" encoding=\"utf-8\"?>\n");
                        bufferedWriter3.write("<resources>\n");
                        StringBuffer stringBuffer2 = new StringBuffer();
                        for (int i10 = 1; i10 < 1281; i10++) {
                            stringBuffer.setLength(0);
                            stringBuffer.append("    <dimen name=\"wdp" + i10 + "\">");
                            double d10 = (double) i10;
                            stringBuffer.append(new BigDecimal((((double) aVar.c()) / ((double) aVar.d())) * d10).setScale(2, 4).doubleValue() + "dp</dimen>\n");
                            bufferedWriter3.write(stringBuffer.toString());
                            if (i10 >= 5 && i10 <= 50) {
                                stringBuffer2.append("    <dimen name=\"spx_" + i10 + "\">");
                                stringBuffer2.append(new BigDecimal((((double) aVar.c()) / ((double) aVar.d())) * d10).setScale(2, 4).doubleValue() + "sp</dimen>\n");
                            }
                        }
                        bufferedWriter3.write("\n");
                        bufferedWriter3.write("    /**********字体适配***************/\n");
                        bufferedWriter3.write("\n");
                        bufferedWriter3.write(stringBuffer2.toString());
                        bufferedWriter3.write("</resources>");
                        bufferedWriter3.close();
                        obj = stringBuffer2;
                    } catch (IOException e10) {
                        e = e10;
                        bufferedWriter2 = bufferedWriter3;
                        e.printStackTrace();
                        bufferedWriter2.close();
                        obj = bufferedWriter2;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedWriter = bufferedWriter3;
                        try {
                            bufferedWriter.close();
                            throw th;
                        } catch (IOException e11) {
                            e11.printStackTrace();
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    bufferedWriter = obj;
                }
            } catch (IOException e12) {
                e = e12;
            }
        } catch (IOException e13) {
            e13.printStackTrace();
            obj = obj;
        }
    }

    public void b() throws Throwable {
        if ("".equals(this.f34777a)) {
            System.out.print("path为空");
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < f34776c.size(); i10++) {
            a aVar = f34776c.get(i10);
            String str = this.f34777a + File.separator + "values-sw" + aVar.c() + t.f74892q;
            System.out.print("写入文件：" + str + "\n");
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, "dimen.xml");
            file2.delete();
            e(file2, stringBuffer, aVar);
        }
    }

    public void c(String path) {
        this.f34777a = path;
    }

    public void d(int wBaseDp) {
        f34775b = wBaseDp;
    }
}
