package org.jsoup.select;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Element;

/* JADX INFO: loaded from: classes10.dex */
public class Selector {
    private final Evaluator evaluator;
    private final Element root;

    public static class SelectorParseException extends IllegalStateException {
        public SelectorParseException(String str, Object... objArr) {
            super(String.format(str, objArr));
        }
    }

    private Selector(String str, Element element) {
        Validate.notNull(str);
        String strTrim = str.trim();
        Validate.notEmpty(strTrim);
        Validate.notNull(element);
        this.evaluator = QueryParser.parse(strTrim);
        this.root = element;
    }

    static Elements filterOut(Collection<Element> collection, Collection<Element> collection2) {
        boolean z10;
        Elements elements = new Elements();
        for (Element element : collection) {
            Iterator<Element> it2 = collection2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z10 = false;
                    break;
                }
                if (element.equals(it2.next())) {
                    z10 = true;
                    break;
                }
            }
            if (!z10) {
                elements.add(element);
            }
        }
        return elements;
    }

    public static Elements select(String str, Element element) {
        return new Selector(str, element).select();
    }

    public static Elements select(String str, Iterable<Element> iterable) {
        Validate.notEmpty(str);
        Validate.notNull(iterable);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Element> it2 = iterable.iterator();
        while (it2.hasNext()) {
            linkedHashSet.addAll(select(str, it2.next()));
        }
        return new Elements(linkedHashSet);
    }

    private Elements select() {
        return Collector.collect(this.evaluator, this.root);
    }
}
