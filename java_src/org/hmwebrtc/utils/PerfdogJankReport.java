package org.hmwebrtc.utils;

/* JADX INFO: loaded from: classes10.dex */
public class PerfdogJankReport {
    private static final String TAG = "JankReport";
    private HtmlLineChartWriter mHtmlWriter;
    private boolean mStarted;

    public PerfdogJankReport(String str) {
        this.mHtmlWriter = new HtmlLineChartWriter(str);
    }

    public boolean addAccumulativeValue(String str, long j10, long j11) {
        HtmlLineChartWriter.ExternalInfo categoryExtenalInfo;
        if (!this.mStarted || (categoryExtenalInfo = this.mHtmlWriter.getCategoryExtenalInfo(str)) == null) {
            return false;
        }
        long j12 = j11 - categoryExtenalInfo.lastValue;
        long j13 = categoryExtenalInfo.sampleCount;
        if (j13 == 0) {
            j12 = 0;
        }
        categoryExtenalInfo.sampleCount = j13 + 1;
        categoryExtenalInfo.lastValue = j11;
        return this.mHtmlWriter.addSample(str, ("[" + j10 + "," + j12) + "]");
    }

    public boolean addCategory(String str, boolean z10) {
        if (this.mStarted) {
            return false;
        }
        this.mHtmlWriter.addCategory(str, z10, new HtmlLineChartWriter.ExternalInfo());
        return true;
    }

    public boolean addSummary(String str) {
        if (this.mStarted) {
            return this.mHtmlWriter.addSummary(str);
        }
        return false;
    }

    public boolean addValue(String str, long j10, int i10) {
        if (!this.mStarted) {
            return false;
        }
        return this.mHtmlWriter.addSample(str, ("[" + j10 + "," + i10) + "]");
    }

    public boolean start() {
        if (this.mStarted) {
            return false;
        }
        this.mStarted = true;
        this.mHtmlWriter.writeHtmlHeader();
        return true;
    }

    public void stop() {
        if (this.mStarted) {
            this.mStarted = false;
            this.mHtmlWriter.writeHtmlTail();
        }
    }

    public boolean addValue(String str, long j10, float f10) {
        if (!this.mStarted) {
            return false;
        }
        return this.mHtmlWriter.addSample(str, ("[" + j10 + "," + f10) + "]");
    }

    public boolean addAccumulativeValue(String str, long j10, float f10) {
        HtmlLineChartWriter.ExternalInfo categoryExtenalInfo;
        if (!this.mStarted || (categoryExtenalInfo = this.mHtmlWriter.getCategoryExtenalInfo(str)) == null) {
            return false;
        }
        float f11 = f10 - categoryExtenalInfo.fLastValue;
        long j11 = categoryExtenalInfo.sampleCount;
        if (j11 == 0) {
            f11 = 0.0f;
        }
        categoryExtenalInfo.sampleCount = j11 + 1;
        categoryExtenalInfo.fLastValue = f10;
        return this.mHtmlWriter.addSample(str, ("[" + j10 + "," + f11) + "]");
    }
}
