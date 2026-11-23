package com.papa91.arc.widget.htmltext;

import android.text.Editable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.style.AlignmentSpan;
import android.text.style.BulletSpan;
import android.text.style.LeadingMarginSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.TypefaceSpan;
import android.text.style.URLSpan;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.Stack;
import net.lingala.zip4j.util.e;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes2.dex */
public class HtmlTagHandler implements WrapperTagHandler {
    public static final String A_ITEM = "HTML_TEXTVIEW_ESCAPED_A_TAG";
    public static final String LIST_ITEM = "HTML_TEXTVIEW_ESCAPED_LI_TAG";
    public static final String ORDERED_LIST = "HTML_TEXTVIEW_ESCAPED_OL_TAG";
    public static final String PLACEHOLDER_ITEM = "HTML_TEXTVIEW_ESCAPED_PLACEHOLDER";
    public static final String UNORDERED_LIST = "HTML_TEXTVIEW_ESCAPED_UL_TAG";
    private static final BulletSpan defaultBullet = new BulletSpan(10);
    private static final int defaultIndent = 10;
    private static final int defaultListItemIndent = 20;
    private static int userGivenIndent = -1;
    private ClickableTableSpan clickableTableSpan;
    private DrawTableLinkSpan drawTableLinkSpan;
    private HtmlFormatter.TagClickListenerProvider onClickATagListenerProvider;
    Stack<String> lists = new Stack<>();
    Stack<Integer> olNextIndex = new Stack<>();
    StringBuilder tableHtmlBuilder = new StringBuilder();
    int tableTagLevel = 0;

    private static class A {
        private String href;
        private String text;

        private A(String str, String str2) {
            this.text = str;
            this.href = str2;
        }
    }

    private static class Center {
        private Center() {
        }
    }

    private static class Code {
        private Code() {
        }
    }

    private static class Ol {
        private Ol() {
        }
    }

    private static class Strike {
        private Strike() {
        }
    }

    private static class Table {
        private Table() {
        }
    }

    private static class Td {
        private Td() {
        }
    }

    private static class Th {
        private Th() {
        }
    }

    private static class Tr {
        private Tr() {
        }
    }

    private static class Ul {
        private Ul() {
        }
    }

    private void end(Editable editable, Class cls, boolean z10, Object... objArr) {
        Object last = getLast(editable, cls);
        int spanStart = editable.getSpanStart(last);
        int length = editable.length();
        if (this.tableTagLevel > 0) {
            this.tableHtmlBuilder.append(extractSpanText(editable, cls));
        }
        editable.removeSpan(last);
        if (spanStart != length) {
            if (z10) {
                editable.append("\n");
                length++;
            }
            for (Object obj : objArr) {
                editable.setSpan(obj, spanStart, length, 33);
            }
        }
    }

    private CharSequence extractSpanText(Editable editable, Class cls) {
        int spanStart = editable.getSpanStart(getLast(editable, cls));
        int length = editable.length();
        CharSequence charSequenceSubSequence = editable.subSequence(spanStart, length);
        editable.delete(spanStart, length);
        return charSequenceSubSequence;
    }

    private static Object getLast(Editable editable, Class cls) {
        Object[] spans = editable.getSpans(0, editable.length(), cls);
        if (spans.length == 0) {
            return null;
        }
        for (int length = spans.length; length > 0; length--) {
            int i10 = length - 1;
            if (editable.getSpanFlags(spans[i10]) == 17) {
                return spans[i10];
            }
        }
        return null;
    }

    private void start(Editable editable, Object obj) {
        int length = editable.length();
        editable.setSpan(obj, length, length, 17);
    }

    private void storeTableTags(boolean z10, String str) {
        if (this.tableTagLevel > 0 || str.equalsIgnoreCase("table")) {
            this.tableHtmlBuilder.append(SimpleComparison.LESS_THAN_OPERATION);
            if (!z10) {
                this.tableHtmlBuilder.append(e.F0);
            }
            StringBuilder sb2 = this.tableHtmlBuilder;
            sb2.append(str.toLowerCase());
            sb2.append(SimpleComparison.GREATER_THAN_OPERATION);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v8 */
    @Override // com.papa91.arc.widget.htmltext.WrapperTagHandler
    public boolean handleTag(boolean z10, String str, Editable editable, Attributes attributes) {
        ?? r10;
        int i10;
        ClickableTableSpan clickableTableSpanNewInstance;
        boolean z11;
        if (!z10) {
            if (str.equalsIgnoreCase(UNORDERED_LIST)) {
                this.lists.pop();
            } else if (str.equalsIgnoreCase(ORDERED_LIST)) {
                this.lists.pop();
                this.olNextIndex.pop();
            } else if (str.equalsIgnoreCase(LIST_ITEM)) {
                if (!this.lists.isEmpty()) {
                    int i11 = userGivenIndent;
                    int i12 = i11 > -1 ? i11 * 2 : 20;
                    if (this.lists.peek().equalsIgnoreCase(UNORDERED_LIST)) {
                        if (editable.length() > 0 && editable.charAt(editable.length() - 1) != '\n') {
                            editable.append("\n");
                        }
                        int i13 = userGivenIndent;
                        int leadingMargin = i13 > -1 ? i13 : 10;
                        BulletSpan bulletSpan = i13 > -1 ? new BulletSpan(userGivenIndent) : defaultBullet;
                        if (this.lists.size() > 1) {
                            leadingMargin -= bulletSpan.getLeadingMargin(true);
                            if (this.lists.size() > 2) {
                                leadingMargin -= (this.lists.size() - 2) * i12;
                            }
                        }
                        end(editable, Ul.class, false, new LeadingMarginSpan.Standard(i12 * (this.lists.size() - 1)), new BulletSpan(leadingMargin));
                    } else if (this.lists.peek().equalsIgnoreCase(ORDERED_LIST)) {
                        if (editable.length() > 0 && editable.charAt(editable.length() - 1) != '\n') {
                            editable.append("\n");
                        }
                        int leadingMargin2 = userGivenIndent;
                        if (leadingMargin2 <= -1) {
                            leadingMargin2 = 10;
                        }
                        NumberSpan numberSpan = new NumberSpan(leadingMargin2, this.olNextIndex.lastElement().intValue() - 1);
                        if (this.lists.size() > 1) {
                            leadingMargin2 -= numberSpan.getLeadingMargin(true);
                            if (this.lists.size() > 2) {
                                leadingMargin2 -= (this.lists.size() - 2) * i12;
                            }
                        }
                        end(editable, Ol.class, false, new LeadingMarginSpan.Standard(i12 * (this.lists.size() - 1)), new NumberSpan(leadingMargin2, this.olNextIndex.lastElement().intValue() - 1));
                    }
                }
            } else if (str.equalsIgnoreCase(A_ITEM)) {
                Object last = getLast(editable, A.class);
                int spanStart = editable.getSpanStart(last);
                int length = editable.length();
                String str2 = last instanceof A ? ((A) last).href : null;
                final String string = editable.subSequence(spanStart, length).toString();
                if (this.clickableTableSpan != null) {
                    end(editable, A.class, false, new URLSpan(str2) { // from class: com.papa91.arc.widget.htmltext.HtmlTagHandler.1
                        @Override // android.text.style.URLSpan, android.text.style.ClickableSpan
                        public void onClick(View view) {
                            if (HtmlTagHandler.this.onClickATagListenerProvider == null || HtmlTagHandler.this.onClickATagListenerProvider.provideTagClickListener().onClick(view, string, getURL())) {
                                return;
                            }
                            super.onClick(view);
                        }

                        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                        public void updateDrawState(@NonNull TextPaint textPaint) {
                            super.updateDrawState(textPaint);
                            HtmlTagHandler.this.clickableTableSpan.updateDrawState(textPaint);
                        }
                    });
                } else {
                    end(editable, A.class, false, new URLSpan(str2) { // from class: com.papa91.arc.widget.htmltext.HtmlTagHandler.2
                        @Override // android.text.style.URLSpan, android.text.style.ClickableSpan
                        public void onClick(View view) {
                            if (HtmlTagHandler.this.onClickATagListenerProvider == null || HtmlTagHandler.this.onClickATagListenerProvider.provideTagClickListener().onClick(view, string, getURL())) {
                                return;
                            }
                            super.onClick(view);
                        }
                    });
                }
            } else if (str.equalsIgnoreCase("code")) {
                end(editable, Code.class, false, new TypefaceSpan("monospace"));
            } else {
                if (!str.equalsIgnoreCase("center")) {
                    if (str.equalsIgnoreCase("s")) {
                        r10 = 0;
                        i10 = 1;
                    } else if (str.equalsIgnoreCase("strike")) {
                        i10 = 1;
                        r10 = 0;
                    } else if (str.equalsIgnoreCase("table")) {
                        int i14 = this.tableTagLevel - 1;
                        this.tableTagLevel = i14;
                        if (i14 == 0) {
                            String string2 = this.tableHtmlBuilder.toString();
                            ClickableTableSpan clickableTableSpan = this.clickableTableSpan;
                            if (clickableTableSpan != null) {
                                clickableTableSpanNewInstance = clickableTableSpan.newInstance();
                                clickableTableSpanNewInstance.setTableHtml(string2);
                            } else {
                                clickableTableSpanNewInstance = null;
                            }
                            DrawTableLinkSpan drawTableLinkSpan = this.drawTableLinkSpan;
                            end(editable, Table.class, false, drawTableLinkSpan != null ? drawTableLinkSpan.newInstance() : null, clickableTableSpanNewInstance);
                        } else {
                            end(editable, Table.class, false, new Object[0]);
                        }
                    } else if (str.equalsIgnoreCase("tr")) {
                        end(editable, Tr.class, false, new Object[0]);
                    } else if (str.equalsIgnoreCase("th")) {
                        end(editable, Th.class, false, new Object[0]);
                    } else {
                        if (!str.equalsIgnoreCase("td")) {
                            return false;
                        }
                        end(editable, Td.class, false, new Object[0]);
                    }
                    Object[] objArr = new Object[i10];
                    objArr[r10] = new StrikethroughSpan();
                    end(editable, Strike.class, r10, objArr);
                    z11 = i10;
                    storeTableTags(z10, str);
                    return z11;
                }
                end(editable, Center.class, true, new AlignmentSpan.Standard(Layout.Alignment.ALIGN_CENTER));
            }
        } else if (str.equalsIgnoreCase(UNORDERED_LIST)) {
            this.lists.push(str);
        } else if (str.equalsIgnoreCase(ORDERED_LIST)) {
            this.lists.push(str);
            this.olNextIndex.push(1);
        } else if (str.equalsIgnoreCase(LIST_ITEM)) {
            if (editable.length() > 0 && editable.charAt(editable.length() - 1) != '\n') {
                editable.append("\n");
            }
            if (!this.lists.isEmpty()) {
                String strPeek = this.lists.peek();
                if (strPeek.equalsIgnoreCase(ORDERED_LIST)) {
                    start(editable, new Ol());
                    Stack<Integer> stack = this.olNextIndex;
                    stack.push(Integer.valueOf(stack.pop().intValue() + 1));
                } else if (strPeek.equalsIgnoreCase(UNORDERED_LIST)) {
                    start(editable, new Ul());
                }
            }
        } else if (str.equalsIgnoreCase(A_ITEM)) {
            start(editable, new A(editable.toString(), attributes != null ? attributes.getValue("href") : null));
        } else {
            if (str.equalsIgnoreCase("code")) {
                start(editable, new Code());
            } else if (str.equalsIgnoreCase("center")) {
                start(editable, new Center());
            } else if (str.equalsIgnoreCase("s") || str.equalsIgnoreCase("strike")) {
                start(editable, new Strike());
            } else if (str.equalsIgnoreCase("table")) {
                start(editable, new Table());
                if (this.tableTagLevel == 0) {
                    this.tableHtmlBuilder = new StringBuilder();
                    editable.append("table placeholder");
                }
                this.tableTagLevel++;
            } else if (str.equalsIgnoreCase("tr")) {
                start(editable, new Tr());
            } else {
                if (str.equalsIgnoreCase("th")) {
                    start(editable, new Th());
                } else {
                    if (!str.equalsIgnoreCase("td")) {
                        return false;
                    }
                    start(editable, new Td());
                }
            }
        }
        z11 = 1;
        storeTableTags(z10, str);
        return z11;
    }

    String overrideTags(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return ("<HTML_TEXTVIEW_ESCAPED_PLACEHOLDER></HTML_TEXTVIEW_ESCAPED_PLACEHOLDER>" + str).replace("<ul", "<HTML_TEXTVIEW_ESCAPED_UL_TAG").replace("</ul>", "</HTML_TEXTVIEW_ESCAPED_UL_TAG>").replace("<ol", "<HTML_TEXTVIEW_ESCAPED_OL_TAG").replace("</ol>", "</HTML_TEXTVIEW_ESCAPED_OL_TAG>").replace("<li", "<HTML_TEXTVIEW_ESCAPED_LI_TAG").replace("</li>", "</HTML_TEXTVIEW_ESCAPED_LI_TAG>").replace("<a", "<HTML_TEXTVIEW_ESCAPED_A_TAG").replace("</a>", "</HTML_TEXTVIEW_ESCAPED_A_TAG>");
    }

    public void setClickableTableSpan(ClickableTableSpan clickableTableSpan) {
        this.clickableTableSpan = clickableTableSpan;
    }

    public void setDrawTableLinkSpan(DrawTableLinkSpan drawTableLinkSpan) {
        this.drawTableLinkSpan = drawTableLinkSpan;
    }

    public void setListIndentPx(float f10) {
        userGivenIndent = Math.round(f10);
    }

    public void setOnClickATagListenerProvider(HtmlFormatter.TagClickListenerProvider tagClickListenerProvider) {
        this.onClickATagListenerProvider = tagClickListenerProvider;
    }
}
