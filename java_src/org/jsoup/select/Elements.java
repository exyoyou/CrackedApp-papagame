package org.jsoup.select;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Element;

/* JADX INFO: loaded from: classes10.dex */
public class Elements implements List<Element>, Cloneable {
    private List<Element> contents;

    public Elements() {
        this.contents = new ArrayList();
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends Element> collection) {
        return this.contents.addAll(collection);
    }

    public Elements addClass(String str) {
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            it2.next().addClass(str);
        }
        return this;
    }

    public Elements after(String str) {
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            it2.next().after(str);
        }
        return this;
    }

    public Elements append(String str) {
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            it2.next().append(str);
        }
        return this;
    }

    public String attr(String str) {
        for (Element element : this.contents) {
            if (element.hasAttr(str)) {
                return element.attr(str);
            }
        }
        return "";
    }

    public Elements before(String str) {
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            it2.next().before(str);
        }
        return this;
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.contents.clear();
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return this.contents.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.contents.containsAll(collection);
    }

    public Elements empty() {
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            it2.next().empty();
        }
        return this;
    }

    public Elements eq(int i10) {
        return this.contents.size() > i10 ? new Elements(get(i10)) : new Elements();
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        return this.contents.equals(obj);
    }

    public Element first() {
        if (this.contents.isEmpty()) {
            return null;
        }
        return this.contents.get(0);
    }

    public boolean hasAttr(String str) {
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            if (it2.next().hasAttr(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean hasClass(String str) {
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            if (it2.next().hasClass(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean hasText() {
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            if (it2.next().hasText()) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.contents.hashCode();
    }

    public String html() {
        StringBuilder sb2 = new StringBuilder();
        for (Element element : this.contents) {
            if (sb2.length() != 0) {
                sb2.append("\n");
            }
            sb2.append(element.html());
        }
        return sb2.toString();
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return this.contents.indexOf(obj);
    }

    public boolean is(String str) {
        return !select(str).isEmpty();
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.contents.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<Element> iterator() {
        return this.contents.iterator();
    }

    public Element last() {
        if (this.contents.isEmpty()) {
            return null;
        }
        List<Element> list = this.contents;
        return list.get(list.size() - 1);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return this.contents.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<Element> listIterator() {
        return this.contents.listIterator();
    }

    public Elements not(String str) {
        return Selector.filterOut(this, Selector.select(str, this));
    }

    public String outerHtml() {
        StringBuilder sb2 = new StringBuilder();
        for (Element element : this.contents) {
            if (sb2.length() != 0) {
                sb2.append("\n");
            }
            sb2.append(element.outerHtml());
        }
        return sb2.toString();
    }

    public Elements parents() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            linkedHashSet.addAll(it2.next().parents());
        }
        return new Elements(linkedHashSet);
    }

    public Elements prepend(String str) {
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            it2.next().prepend(str);
        }
        return this;
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return this.contents.removeAll(collection);
    }

    public Elements removeAttr(String str) {
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            it2.next().removeAttr(str);
        }
        return this;
    }

    public Elements removeClass(String str) {
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            it2.next().removeClass(str);
        }
        return this;
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return this.contents.retainAll(collection);
    }

    public Elements select(String str) {
        return Selector.select(str, this);
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return this.contents.size();
    }

    @Override // java.util.List
    public List<Element> subList(int i10, int i11) {
        return this.contents.subList(i10, i11);
    }

    public Elements tagName(String str) {
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            it2.next().tagName(str);
        }
        return this;
    }

    public String text() {
        StringBuilder sb2 = new StringBuilder();
        for (Element element : this.contents) {
            if (sb2.length() != 0) {
                sb2.append(" ");
            }
            sb2.append(element.text());
        }
        return sb2.toString();
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return this.contents.toArray();
    }

    public String toString() {
        return outerHtml();
    }

    public Elements toggleClass(String str) {
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            it2.next().toggleClass(str);
        }
        return this;
    }

    public Elements traverse(NodeVisitor nodeVisitor) {
        Validate.notNull(nodeVisitor);
        NodeTraversor nodeTraversor = new NodeTraversor(nodeVisitor);
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            nodeTraversor.traverse(it2.next());
        }
        return this;
    }

    public Elements unwrap() {
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            it2.next().unwrap();
        }
        return this;
    }

    public String val() {
        return size() > 0 ? first().val() : "";
    }

    public Elements wrap(String str) {
        Validate.notEmpty(str);
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            it2.next().wrap(str);
        }
        return this;
    }

    @Override // java.util.List
    public boolean addAll(int i10, Collection<? extends Element> collection) {
        return this.contents.addAll(i10, collection);
    }

    public Elements clone() {
        ArrayList arrayList = new ArrayList();
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().mo1691clone());
        }
        return new Elements((List<Element>) arrayList);
    }

    @Override // java.util.List
    public Element get(int i10) {
        return this.contents.get(i10);
    }

    @Override // java.util.List
    public ListIterator<Element> listIterator(int i10) {
        return this.contents.listIterator(i10);
    }

    public Elements remove() {
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            it2.next().remove();
        }
        return this;
    }

    @Override // java.util.List
    public Element set(int i10, Element element) {
        return this.contents.set(i10, element);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.contents.toArray(tArr);
    }

    public Elements(int i10) {
        this.contents = new ArrayList(i10);
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(Element element) {
        return this.contents.add(element);
    }

    public Elements val(String str) {
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            it2.next().val(str);
        }
        return this;
    }

    @Override // java.util.List
    public void add(int i10, Element element) {
        this.contents.add(i10, element);
    }

    public Elements attr(String str, String str2) {
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            it2.next().attr(str, str2);
        }
        return this;
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        return this.contents.remove(obj);
    }

    public Elements(Collection<Element> collection) {
        this.contents = new ArrayList(collection);
    }

    @Override // java.util.List
    public Element remove(int i10) {
        return this.contents.remove(i10);
    }

    public Elements(List<Element> list) {
        this.contents = list;
    }

    public Elements html(String str) {
        Iterator<Element> it2 = this.contents.iterator();
        while (it2.hasNext()) {
            it2.next().html(str);
        }
        return this;
    }

    public Elements(Element... elementArr) {
        this((List<Element>) Arrays.asList(elementArr));
    }
}
