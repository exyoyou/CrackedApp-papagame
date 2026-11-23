package org.jsoup.select;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Element;

/* JADX INFO: loaded from: classes10.dex */
abstract class CombiningEvaluator extends Evaluator {
    final List<Evaluator> evaluators;

    static final class And extends CombiningEvaluator {
        And(Collection<Evaluator> collection) {
            super(collection);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            for (int i10 = 0; i10 < this.evaluators.size(); i10++) {
                if (!this.evaluators.get(i10).matches(element, element2)) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return StringUtil.join(this.evaluators, " ");
        }

        And(Evaluator... evaluatorArr) {
            this(Arrays.asList(evaluatorArr));
        }
    }

    CombiningEvaluator() {
        this.evaluators = new ArrayList();
    }

    void replaceRightMostEvaluator(Evaluator evaluator) {
        List<Evaluator> list = this.evaluators;
        list.set(list.size() - 1, evaluator);
    }

    Evaluator rightMostEvaluator() {
        if (this.evaluators.size() <= 0) {
            return null;
        }
        List<Evaluator> list = this.evaluators;
        return list.get(list.size() - 1);
    }

    CombiningEvaluator(Collection<Evaluator> collection) {
        this();
        this.evaluators.addAll(collection);
    }

    static final class Or extends CombiningEvaluator {
        Or(Collection<Evaluator> collection) {
            if (collection.size() > 1) {
                this.evaluators.add(new And(collection));
            } else {
                this.evaluators.addAll(collection);
            }
        }

        public void add(Evaluator evaluator) {
            this.evaluators.add(evaluator);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            for (int i10 = 0; i10 < this.evaluators.size(); i10++) {
                if (this.evaluators.get(i10).matches(element, element2)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format(":or%s", this.evaluators);
        }

        Or() {
        }
    }
}
