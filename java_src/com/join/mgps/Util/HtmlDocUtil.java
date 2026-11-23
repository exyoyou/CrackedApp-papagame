package com.join.mgps.Util;

import android.graphics.Color;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;

/* JADX INFO: loaded from: classes4.dex */
public class HtmlDocUtil {

    public static class PostDetail {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Type f49375a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f49376b;

        public enum Type {
            Text,
            RickText,
            Image,
            Video
        }

        public Object a() {
            return this.f49376b;
        }

        public void b(Object content) {
            this.f49376b = content;
        }

        public void c(Type type) {
            this.f49375a = type;
        }

        public Type getType() {
            return this.f49375a;
        }
    }

    private static class a extends ClickableSpan {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f49377b;

        public a() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            IntentUtil.getInstance().goShareWebActivity(widget.getContext(), this.f49377b);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds) {
            ds.setColor(ds.linkColor);
            ds.bgColor = Color.parseColor("#00000000");
            ds.setUnderlineText(false);
            ds.clearShadowLayer();
        }

        public a(String href) {
            this.f49377b = href;
        }
    }

    public static class b extends PostDetail {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f49378c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f49379d;

        public b() {
        }

        public String d() {
            return this.f49378c;
        }

        public String e() {
            return this.f49379d;
        }

        public void f(String imgUrl) {
            this.f49378c = imgUrl;
        }

        public void g(String imgUrlLarge) {
            this.f49379d = imgUrlLarge;
        }

        public b(String imgUrl, String imgUrlLarge) {
            this.f49378c = imgUrl;
            this.f49379d = imgUrlLarge;
        }
    }

    public static class d extends PostDetail {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f49381c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f49382d;

        public d() {
        }

        public String d() {
            return this.f49381c;
        }

        public String e() {
            return this.f49382d;
        }

        public void f(String imgUrl) {
            this.f49381c = imgUrl;
        }

        public void g(String videoUrl) {
            this.f49382d = videoUrl;
        }

        public d(String imgUrl, String videoUrl) {
            this.f49381c = imgUrl;
            this.f49382d = videoUrl;
        }
    }

    public static class e extends PostDetail {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SpannableStringBuilder f49383c;

        public e(SpannableStringBuilder text) {
            this.f49383c = text;
        }

        public SpannableStringBuilder d() {
            return this.f49383c;
        }
    }

    public static String a(String input) {
        char[] charArray = input.toCharArray();
        for (int i10 = 0; i10 < charArray.length; i10++) {
            char c10 = charArray[i10];
            if (c10 == 12288) {
                charArray[i10] = ' ';
            } else if (c10 > 65280 && c10 < 65375) {
                charArray[i10] = (char) (c10 - 65248);
            }
        }
        return new String(charArray);
    }

    public static String b(String str) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.CHINA).format(new Date(Long.parseLong(str)));
    }

    public static List<PostDetail> c(String str) {
        Iterator<Element> it2;
        Iterator<Element> it3;
        List<Node> list;
        ArrayList arrayList = new ArrayList();
        Iterator<Element> it4 = Jsoup.parse(str).getElementsByClass("detail").get(0).children().iterator();
        while (it4.hasNext()) {
            Element next = it4.next();
            PostDetail postDetail = new PostDetail();
            String strNodeName = next.nodeName();
            if (strNodeName.equals("p")) {
                List<Node> listChildNodes = next.childNodes();
                int i10 = 1;
                int i11 = 0;
                boolean z10 = true;
                while (i11 < listChildNodes.size()) {
                    postDetail = new PostDetail();
                    Node node = listChildNodes.get(i11);
                    if (node instanceof TextNode) {
                        String strText = ((TextNode) node).text();
                        if (arrayList.size() > 0) {
                            PostDetail postDetail2 = (PostDetail) arrayList.get(arrayList.size() - i10);
                            it3 = it4;
                            if (postDetail2.getType() == PostDetail.Type.Text && i11 != 0) {
                                ((c) postDetail2.a()).d().append((CharSequence) ("<br/>" + strText));
                            }
                        } else {
                            it3 = it4;
                        }
                        postDetail.c(PostDetail.Type.Text);
                        postDetail.b(new c(new SpannableStringBuilder().append((CharSequence) strText)));
                        arrayList.add(postDetail);
                    } else {
                        it3 = it4;
                        if (node instanceof Element) {
                            if (node.nodeName().equals("img")) {
                                if (t2.h(node.attr("uurl"))) {
                                    postDetail.c(PostDetail.Type.Image);
                                    postDetail.b(new b(node.attr("src"), node.attr("bsrc")));
                                } else {
                                    postDetail.c(PostDetail.Type.Video);
                                    postDetail.b(new d(node.attr("src"), node.attr("uurl")));
                                }
                                arrayList.add(postDetail);
                            } else if (node.nodeName().equals("br")) {
                                if (arrayList.size() > 0) {
                                    PostDetail postDetail3 = (PostDetail) arrayList.get(arrayList.size() - 1);
                                    if (postDetail3.getType() == PostDetail.Type.Text && i11 != 0) {
                                        SpannableStringBuilder spannableStringBuilderD = ((c) postDetail3.a()).d();
                                        spannableStringBuilderD.append((CharSequence) "\n");
                                        postDetail3.b(new c(spannableStringBuilderD));
                                    }
                                }
                                postDetail.c(PostDetail.Type.Text);
                                postDetail.b(new c(new SpannableStringBuilder().append((CharSequence) " ")));
                                arrayList.add(postDetail);
                            } else {
                                if (node.nodeName().equals("a")) {
                                    String strAttr = node.attr("href");
                                    if (t2.h(strAttr)) {
                                        strAttr = "#";
                                    }
                                    SpannableString spannableString = new SpannableString(((Element) node).text());
                                    list = listChildNodes;
                                    spannableString.setSpan(new a(strAttr), 0, spannableString.length(), 17);
                                    if (arrayList.size() > 0) {
                                        PostDetail postDetail4 = (PostDetail) arrayList.get(arrayList.size() - 1);
                                        if (postDetail4.getType() == PostDetail.Type.Text && i11 != 0) {
                                            ((c) postDetail4.a()).d().append((CharSequence) spannableString);
                                        }
                                        z10 = false;
                                    }
                                    postDetail.c(PostDetail.Type.Text);
                                    postDetail.b(new c(new SpannableStringBuilder().append((CharSequence) spannableString)));
                                    arrayList.add(postDetail);
                                    z10 = false;
                                }
                                i11++;
                                it4 = it3;
                                listChildNodes = list;
                                i10 = 1;
                            }
                        }
                        list = listChildNodes;
                        i11++;
                        it4 = it3;
                        listChildNodes = list;
                        i10 = 1;
                    }
                    list = listChildNodes;
                    z10 = false;
                    i11++;
                    it4 = it3;
                    listChildNodes = list;
                    i10 = 1;
                }
                it2 = it4;
                if (z10) {
                    postDetail.c(PostDetail.Type.RickText);
                    postDetail.b(new e(new SpannableStringBuilder(next.html())));
                    arrayList.add(postDetail);
                }
            } else {
                it2 = it4;
                if (strNodeName.equals("img")) {
                    if (t2.h(next.attr("uurl"))) {
                        postDetail.c(PostDetail.Type.Image);
                        postDetail.b(new b(next.attr("src"), next.attr("bsrc")));
                    } else {
                        postDetail.c(PostDetail.Type.Video);
                        postDetail.b(new d(next.attr("src"), next.attr("uurl")));
                    }
                    arrayList.add(postDetail);
                } else {
                    if (next.nodeName().equals("a")) {
                        String strAttr2 = next.attr("href");
                        String str2 = t2.h(strAttr2) ? "#" : strAttr2;
                        SpannableString spannableString2 = new SpannableString(next.text());
                        spannableString2.setSpan(new a(str2), 0, spannableString2.length(), 17);
                        postDetail.c(PostDetail.Type.Text);
                        postDetail.b(new c(new SpannableStringBuilder().append((CharSequence) spannableString2)));
                        arrayList.add(postDetail);
                    }
                    it4 = it2;
                }
            }
            it4 = it2;
        }
        return arrayList;
    }

    public static boolean d(String str) {
        if (t2.h(str)) {
            return false;
        }
        try {
            Document document = Jsoup.parse(str);
            return (document == null || document.getElementsByClass("detail") == null || document.getElementsByClass("detail").size() == 0) ? false : true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static class c extends PostDetail {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SpannableStringBuilder f49380c;

        public c(SpannableStringBuilder text) {
            this.f49380c = text;
        }

        public SpannableStringBuilder d() {
            return this.f49380c;
        }

        public void e(SpannableStringBuilder text) {
            this.f49380c = text;
        }

        public c() {
        }
    }
}
