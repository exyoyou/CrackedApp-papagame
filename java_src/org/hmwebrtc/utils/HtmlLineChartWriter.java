package org.hmwebrtc.utils;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
public class HtmlLineChartWriter {
    private static final String TAG = "HtmlLineChart";
    private BufferedWriter mBufferedWriter;
    private String mFilePath;
    private Map<String, Category> mCategoryValues = new HashMap();
    private List<String> mCategoryNames = new ArrayList();

    static class Category {
        ExternalInfo externalInfo;
        boolean selected;
        long sampleCount = 0;
        int jsonIndex = 0;
        String list = "";

        Category(boolean z10, ExternalInfo externalInfo) {
            this.selected = z10;
            this.externalInfo = externalInfo;
        }
    }

    public static class ExternalInfo {
        public long lastValue = 0;
        public float fLastValue = 0.0f;
        public long sampleCount = 0;

        ExternalInfo() {
        }
    }

    public HtmlLineChartWriter(String str) {
        this.mFilePath = str;
    }

    private void closeFile() {
        try {
            BufferedWriter bufferedWriter = this.mBufferedWriter;
            if (bufferedWriter != null) {
                bufferedWriter.flush();
                this.mBufferedWriter = null;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("close  file: ");
            String str = this.mFilePath;
            if (str == null) {
                str = "null";
            }
            sb2.append(str);
            Logging.e(TAG, sb2.toString());
        } catch (Exception e10) {
            Logging.e(TAG, "close : " + e10.toString());
        }
    }

    private boolean createFile(String str) {
        try {
            new File(str).createNewFile();
            Logging.e(TAG, "create new html file: " + str);
            this.mBufferedWriter = new BufferedWriter(new FileWriter(str));
            return true;
        } catch (IOException e10) {
            Logging.e(TAG, "create new html file failed: " + e10.toString());
            return false;
        }
    }

    private void write(String str) {
        try {
            BufferedWriter bufferedWriter = this.mBufferedWriter;
            if (bufferedWriter != null) {
                bufferedWriter.write(str);
                this.mBufferedWriter.flush();
            }
        } catch (Exception e10) {
            Logging.e(TAG, "write file failed : " + e10.toString());
        }
    }

    public boolean addCategory(String str, boolean z10, ExternalInfo externalInfo) {
        if (!this.mCategoryValues.containsKey(str)) {
            this.mCategoryNames.add(str);
        }
        this.mCategoryValues.put(str, new Category(z10, externalInfo));
        return true;
    }

    public boolean addSample(String str, String str2) {
        Category category = this.mCategoryValues.get(str);
        if (category == null) {
            return false;
        }
        category.sampleCount++;
        if (category.list.length() == 0) {
            category.list = str2;
        } else {
            category.list += "," + str2;
        }
        if (category.list.length() <= 1024) {
            return true;
        }
        write("\n{\nvar temp = [ " + category.list + "];\n");
        write("for (let i = 0; i < temp.length; i++) {\n");
        write("   option.series[" + category.jsonIndex + "].data.push(temp[i]);}}\n");
        category.list = "";
        return true;
    }

    public boolean addSummary(String str) {
        if (str == null || this.mBufferedWriter == null) {
            return false;
        }
        write("lineSummary =lineSummary+\"" + str + "\\n\";\n");
        return true;
    }

    public ExternalInfo getCategoryExtenalInfo(String str) {
        Category category = this.mCategoryValues.get(str);
        if (category == null) {
            return null;
        }
        return category.externalInfo;
    }

    public boolean writeHtmlHeader() {
        int i10 = 0;
        if (!createFile(this.mFilePath)) {
            return false;
        }
        write("<html lang=\"en\">\n");
        write("<head>\n");
        write("<script src=\"https://cdn.jsdelivr.net/npm/echarts@5.3.0/dist/echarts.min.js\"></script>\n");
        write("</head>\n");
        write("<body>\n");
        write("<div>hmrtc line chart\\n</div>\n");
        write("<input type=\"button\" value=\"点我试试\" onclick=javascrtpt:showSummary() />\n");
        write("<div  id=\"main\" style=\"width: 100%; height: 90%; border: #ccc solid 1px\"></div>\n");
        write("<script >\n");
        write("var lineSummary=\"haima_rtc\";\n");
        write("function showSummary(){alert(lineSummary);}\n");
        write("var chartDom = document.getElementById('main');\n");
        write("var myChart = echarts.init(chartDom);\n");
        write("var option;\n");
        write("option = {\n");
        write("tooltip: {trigger: 'axis'},\n");
        write("grid: {left: '3%',right: '15%',bottom: '3%',containLabel: true},\n");
        write("toolbox: {feature: {saveAsImage: {}}},\n");
        write("xAxis: {type: 'time', boundaryGap: false,},\n");
        write("yAxis: {type: 'value'},\n");
        write("dataZoom:{show: true,realtime: true},\n");
        write("legend: {type:'scroll',right:'auto',orient:'vertical',data: [\n");
        for (String str : this.mCategoryNames) {
            if (str != null && str.length() > 0) {
                write("'" + str + "',");
            }
        }
        write("],\n");
        write("selected:{");
        for (Map.Entry<String, Category> entry : this.mCategoryValues.entrySet()) {
            if (!entry.getValue().selected) {
                write("'" + entry.getKey() + "':false,");
            }
        }
        write("},\n");
        write("x:'right',\n");
        write("y:'center',\n");
        write("padding:[0,50,0,0]},\n");
        write("series: [\n");
        for (Map.Entry<String, Category> entry2 : this.mCategoryValues.entrySet()) {
            String key = entry2.getKey();
            if (key != null && key.length() != 0) {
                entry2.getValue().jsonIndex = i10;
                write("{name:'" + key + "'\n,type:'line'\n,data:[]\n},");
                i10++;
            }
        }
        write("]};\n");
        return true;
    }

    public void writeHtmlTail() {
        for (Map.Entry<String, Category> entry : this.mCategoryValues.entrySet()) {
            String key = entry.getKey();
            if (key != null && key.length() != 0) {
                Category value = entry.getValue();
                if (value.list.length() > 0) {
                    write("\n{\nvar temp = [ " + value.list + "];\n");
                    write("for (let i = 0; i < temp.length; i++) {\n");
                    write("   option.series[" + value.jsonIndex + "].data.push(temp[i]);}}\n");
                    entry.getValue().list = "";
                }
            }
        }
        write("myChart.setOption(option);\n");
        write("</script></body></html>\n");
        closeFile();
    }
}
