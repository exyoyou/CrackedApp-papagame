package org.webrtc.haima.camerarecorder.egl.filter;

import android.graphics.Point;
import android.graphics.PointF;
import android.opengl.GLES20;
import com.sigmob.sdk.archives.tar.d;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes10.dex */
public class GlToneCurveFilter extends GlFilter {
    private static final String FRAGMENT_SHADER = "precision mediump float;\n varying highp vec2 vTextureCoord;\n uniform lowp sampler2D sTexture;\n uniform mediump sampler2D toneCurveTexture;\n\n void main()\n {\n     lowp vec4 textureColor = texture2D(sTexture, vTextureCoord);\n     lowp float redCurveValue = texture2D(toneCurveTexture, vec2(textureColor.r, 0.0)).r;\n     lowp float greenCurveValue = texture2D(toneCurveTexture, vec2(textureColor.g, 0.0)).g;\n     lowp float blueCurveValue = texture2D(toneCurveTexture, vec2(textureColor.b, 0.0)).b;\n\n     gl_FragColor = vec4(redCurveValue, greenCurveValue, blueCurveValue, textureColor.a);\n }";
    private PointF[] blueControlPoints;
    private ArrayList<Float> blueCurve;
    private PointF[] greenControlPoints;
    private ArrayList<Float> greenCurve;
    private PointF[] redControlPoints;
    private ArrayList<Float> redCurve;
    private PointF[] rgbCompositeControlPoints;
    private ArrayList<Float> rgbCompositeCurve;
    private final LinkedList<Runnable> runOnDraw;
    private int[] textures;
    private byte[] toneCurveByteArray;

    public GlToneCurveFilter(InputStream inputStream) {
        super("attribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\ngl_Position = aPosition;\nvTextureCoord = aTextureCoord.xy;\n}\n", FRAGMENT_SHADER);
        this.textures = new int[1];
        PointF[] pointFArr = {new PointF(0.0f, 0.0f), new PointF(0.5f, 0.5f), new PointF(1.0f, 1.0f)};
        this.rgbCompositeControlPoints = pointFArr;
        this.redControlPoints = pointFArr;
        this.greenControlPoints = pointFArr;
        this.blueControlPoints = pointFArr;
        this.runOnDraw = new LinkedList<>();
        setFromCurveFileInputStream(inputStream);
        setRgbCompositeControlPoints(this.rgbCompositeControlPoints);
        setRedControlPoints(this.redControlPoints);
        setGreenControlPoints(this.greenControlPoints);
        setBlueControlPoints(this.blueControlPoints);
    }

    private ArrayList<Double> createSecondDerivative(Point[] pointArr) {
        int i10;
        int length = pointArr.length;
        char c10 = 1;
        if (length <= 1) {
            return null;
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, 3);
        double[] dArr2 = new double[length];
        char c11 = 0;
        double[] dArr3 = dArr[0];
        dArr3[1] = 1.0d;
        double d10 = 0.0d;
        dArr3[0] = 0.0d;
        char c12 = 2;
        dArr3[2] = 0.0d;
        int i11 = 1;
        while (true) {
            i10 = length - 1;
            if (i11 >= i10) {
                break;
            }
            Point point = pointArr[i11 - 1];
            Point point2 = pointArr[i11];
            int i12 = i11 + 1;
            Point point3 = pointArr[i12];
            double[] dArr4 = dArr[i11];
            int i13 = point2.x;
            int i14 = point.x;
            dArr4[c11] = ((double) (i13 - i14)) / 6.0d;
            int i15 = point3.x;
            int i16 = i11;
            dArr4[c10] = ((double) (i15 - i14)) / 3.0d;
            dArr4[c12] = ((double) (i15 - i13)) / 6.0d;
            int i17 = point3.y;
            int i18 = point2.y;
            dArr2[i16] = (((double) (i17 - i18)) / ((double) (i15 - i13))) - (((double) (i18 - point.y)) / ((double) (i13 - i14)));
            dArr = dArr;
            i11 = i12;
            c10 = 1;
            c11 = 0;
            d10 = 0.0d;
            c12 = 2;
        }
        double[][] dArr5 = dArr;
        double d11 = d10;
        char c13 = 0;
        dArr2[0] = d11;
        dArr2[i10] = d11;
        double[] dArr6 = dArr5[i10];
        char c14 = 1;
        dArr6[1] = 1.0d;
        dArr6[0] = d11;
        char c15 = 2;
        dArr6[2] = d11;
        int i19 = 1;
        while (i19 < length) {
            double[] dArr7 = dArr5[i19];
            double d12 = dArr7[c13];
            int i20 = i19 - 1;
            double[] dArr8 = dArr5[i20];
            double d13 = d12 / dArr8[c14];
            dArr7[c14] = dArr7[c14] - (dArr8[c15] * d13);
            dArr7[c13] = 0.0d;
            dArr2[i19] = dArr2[i19] - (d13 * dArr2[i20]);
            i19++;
            c15 = 2;
            c13 = 0;
            c14 = 1;
        }
        for (int i21 = length - 2; i21 >= 0; i21--) {
            double[] dArr9 = dArr5[i21];
            double d14 = dArr9[2];
            int i22 = i21 + 1;
            double[] dArr10 = dArr5[i22];
            double d15 = d14 / dArr10[1];
            dArr9[1] = dArr9[1] - (dArr10[0] * d15);
            dArr9[2] = 0.0d;
            dArr2[i21] = dArr2[i21] - (d15 * dArr2[i22]);
        }
        ArrayList<Double> arrayList = new ArrayList<>(length);
        for (int i23 = 0; i23 < length; i23++) {
            arrayList.add(Double.valueOf(dArr2[i23] / dArr5[i23][1]));
        }
        return arrayList;
    }

    private ArrayList<Float> createSplineCurve(PointF[] pointFArr) {
        if (pointFArr == null || pointFArr.length <= 0) {
            return null;
        }
        PointF[] pointFArr2 = (PointF[]) pointFArr.clone();
        Arrays.sort(pointFArr2, new Comparator<PointF>() { // from class: org.webrtc.haima.camerarecorder.egl.filter.GlToneCurveFilter.2
            @Override // java.util.Comparator
            public int compare(PointF pointF, PointF pointF2) {
                float f10 = pointF.x;
                float f11 = pointF2.x;
                if (f10 < f11) {
                    return -1;
                }
                return f10 > f11 ? 1 : 0;
            }
        });
        Point[] pointArr = new Point[pointFArr2.length];
        for (int i10 = 0; i10 < pointFArr.length; i10++) {
            PointF pointF = pointFArr2[i10];
            pointArr[i10] = new Point((int) (pointF.x * 255.0f), (int) (pointF.y * 255.0f));
        }
        ArrayList<Point> arrayListCreateSplineCurve2 = createSplineCurve2(pointArr);
        int i11 = arrayListCreateSplineCurve2.get(0).x;
        if (i11 > 0) {
            while (i11 >= 0) {
                arrayListCreateSplineCurve2.add(0, new Point(i11, 0));
                i11--;
            }
        }
        int i12 = arrayListCreateSplineCurve2.get(arrayListCreateSplineCurve2.size() - 1).x;
        if (i12 < 255) {
            while (true) {
                i12++;
                if (i12 > 255) {
                    break;
                }
                arrayListCreateSplineCurve2.add(new Point(i12, 255));
            }
        }
        ArrayList<Float> arrayList = new ArrayList<>(arrayListCreateSplineCurve2.size());
        for (Point point : arrayListCreateSplineCurve2) {
            int i13 = point.x;
            Point point2 = new Point(i13, i13);
            float fSqrt = (float) Math.sqrt(Math.pow(point2.x - point.x, 2.0d) + Math.pow(point2.y - point.y, 2.0d));
            if (point2.y > point.y) {
                fSqrt = -fSqrt;
            }
            arrayList.add(Float.valueOf(fSqrt));
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x007e A[PHI: r0
      0x007e: PHI (r0v18 double) = (r0v14 double), (r0v15 double) binds: [B:16:0x007c, B:19:0x0084] A[DONT_GENERATE, DONT_INLINE]] */
    private ArrayList<Point> createSplineCurve2(Point[] pointArr) {
        ArrayList<Double> arrayListCreateSecondDerivative = createSecondDerivative(pointArr);
        int size = arrayListCreateSecondDerivative.size();
        if (size < 1) {
            return null;
        }
        double[] dArr = new double[size];
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            dArr[i11] = arrayListCreateSecondDerivative.get(i11).doubleValue();
        }
        ArrayList<Point> arrayList = new ArrayList<>(size + 1);
        while (i10 < size - 1) {
            Point point = pointArr[i10];
            int i12 = i10 + 1;
            Point point2 = pointArr[i12];
            int i13 = point.x;
            while (true) {
                int i14 = point2.x;
                if (i13 < i14) {
                    int i15 = point.x;
                    double d10 = ((double) (i13 - i15)) / ((double) (i14 - i15));
                    double d11 = 1.0d - d10;
                    double d12 = i14 - i15;
                    int i16 = size;
                    Point point3 = point;
                    ArrayList<Point> arrayList2 = arrayList;
                    double d13 = (((double) point.y) * d11) + (((double) point2.y) * d10) + (((d12 * d12) / 6.0d) * (((((d11 * d11) * d11) - d11) * dArr[i10]) + ((((d10 * d10) * d10) - d10) * dArr[i12])));
                    double d14 = 255.0d;
                    if (d13 > 255.0d) {
                        d13 = d14;
                    } else {
                        d14 = 0.0d;
                        if (d13 < 0.0d) {
                            d13 = d14;
                        }
                    }
                    arrayList = arrayList2;
                    arrayList.add(new Point(i13, (int) Math.round(d13)));
                    i13++;
                    size = i16;
                    point = point3;
                }
            }
            i10 = i12;
        }
        if (arrayList.size() == 255) {
            arrayList.add(pointArr[pointArr.length - 1]);
        }
        return arrayList;
    }

    private short readShort(InputStream inputStream) throws IOException {
        return (short) (inputStream.read() | (inputStream.read() << 8));
    }

    private void runOnDraw(Runnable runnable) {
        synchronized (this.runOnDraw) {
            this.runOnDraw.addLast(runnable);
        }
    }

    private void setBlueControlPoints(PointF[] pointFArr) {
        this.blueControlPoints = pointFArr;
        this.blueCurve = createSplineCurve(pointFArr);
        updateToneCurveTexture();
    }

    private void setFromCurveFileInputStream(InputStream inputStream) {
        try {
            readShort(inputStream);
            short s10 = readShort(inputStream);
            ArrayList arrayList = new ArrayList(s10);
            for (int i10 = 0; i10 < s10; i10++) {
                int i11 = readShort(inputStream);
                PointF[] pointFArr = new PointF[i11];
                for (int i12 = 0; i12 < i11; i12++) {
                    pointFArr[i12] = new PointF(readShort(inputStream) * 0.003921569f, readShort(inputStream) * 0.003921569f);
                }
                arrayList.add(pointFArr);
            }
            inputStream.close();
            this.rgbCompositeControlPoints = (PointF[]) arrayList.get(0);
            this.redControlPoints = (PointF[]) arrayList.get(1);
            this.greenControlPoints = (PointF[]) arrayList.get(2);
            this.blueControlPoints = (PointF[]) arrayList.get(3);
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    private void setGreenControlPoints(PointF[] pointFArr) {
        this.greenControlPoints = pointFArr;
        this.greenCurve = createSplineCurve(pointFArr);
        updateToneCurveTexture();
    }

    private void setRedControlPoints(PointF[] pointFArr) {
        this.redControlPoints = pointFArr;
        this.redCurve = createSplineCurve(pointFArr);
        updateToneCurveTexture();
    }

    private void setRgbCompositeControlPoints(PointF[] pointFArr) {
        this.rgbCompositeControlPoints = pointFArr;
        this.rgbCompositeCurve = createSplineCurve(pointFArr);
        updateToneCurveTexture();
    }

    private void updateToneCurveTexture() {
        runOnDraw(new Runnable() { // from class: org.webrtc.haima.camerarecorder.egl.filter.GlToneCurveFilter.1
            @Override // java.lang.Runnable
            public void run() {
                GLES20.glActiveTexture(33985);
                GLES20.glBindTexture(3553, GlToneCurveFilter.this.textures[0]);
                if (GlToneCurveFilter.this.redCurve.size() < 256 || GlToneCurveFilter.this.greenCurve.size() < 256 || GlToneCurveFilter.this.blueCurve.size() < 256 || GlToneCurveFilter.this.rgbCompositeCurve.size() < 256) {
                    return;
                }
                GlToneCurveFilter.this.toneCurveByteArray = new byte[1024];
                for (int i10 = 0; i10 < 256; i10++) {
                    int i11 = i10 * 4;
                    float f10 = i10;
                    GlToneCurveFilter.this.toneCurveByteArray[i11 + 2] = (byte) (((int) Math.min(Math.max(((Float) GlToneCurveFilter.this.blueCurve.get(i10)).floatValue() + f10 + ((Float) GlToneCurveFilter.this.rgbCompositeCurve.get(i10)).floatValue(), 0.0f), 255.0f)) & 255);
                    GlToneCurveFilter.this.toneCurveByteArray[i11 + 1] = (byte) (((int) Math.min(Math.max(((Float) GlToneCurveFilter.this.greenCurve.get(i10)).floatValue() + f10 + ((Float) GlToneCurveFilter.this.rgbCompositeCurve.get(i10)).floatValue(), 0.0f), 255.0f)) & 255);
                    GlToneCurveFilter.this.toneCurveByteArray[i11] = (byte) (((int) Math.min(Math.max(f10 + ((Float) GlToneCurveFilter.this.redCurve.get(i10)).floatValue() + ((Float) GlToneCurveFilter.this.rgbCompositeCurve.get(i10)).floatValue(), 0.0f), 255.0f)) & 255);
                    GlToneCurveFilter.this.toneCurveByteArray[i11 + 3] = -1;
                }
                GLES20.glTexImage2D(3553, 0, 6408, 256, 1, 0, 6408, 5121, ByteBuffer.wrap(GlToneCurveFilter.this.toneCurveByteArray));
            }
        });
    }

    @Override // org.webrtc.haima.camerarecorder.egl.filter.GlFilter
    public void onDraw() {
        int handle = getHandle("toneCurveTexture");
        GLES20.glActiveTexture(33987);
        GLES20.glBindTexture(3553, this.textures[0]);
        GLES20.glTexImage2D(3553, 0, 6408, 256, 1, 0, 6408, 5121, ByteBuffer.wrap(this.toneCurveByteArray));
        GLES20.glUniform1i(handle, 3);
    }

    @Override // org.webrtc.haima.camerarecorder.egl.filter.GlFilter
    public void setup() {
        super.setup();
        GLES20.glGenTextures(1, this.textures, 0);
        GLES20.glBindTexture(3553, this.textures[0]);
        GLES20.glTexParameteri(3553, 10241, 9729);
        GLES20.glTexParameteri(3553, d.f78732b, 9729);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        while (!this.runOnDraw.isEmpty()) {
            this.runOnDraw.removeFirst().run();
        }
    }
}
