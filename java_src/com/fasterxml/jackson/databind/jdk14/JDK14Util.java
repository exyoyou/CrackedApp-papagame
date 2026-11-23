package com.fasterxml.jackson.databind.jdk14;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.introspect.AnnotatedConstructor;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class JDK14Util {

    static class CreatorLocator {
        protected final BeanDescription _beanDesc;
        protected final DeserializationConfig _config;
        protected final List<AnnotatedConstructor> _constructors;
        protected final AnnotationIntrospector _intr;
        protected final AnnotatedConstructor _primaryConstructor;
        protected final RawTypeName[] _recordFields;

        CreatorLocator(DeserializationContext deserializationContext, BeanDescription beanDescription) {
            AnnotatedConstructor annotatedConstructorFindDefaultConstructor;
            this._beanDesc = beanDescription;
            this._intr = deserializationContext.getAnnotationIntrospector();
            this._config = deserializationContext.getConfig();
            RawTypeName[] recordFields = RecordAccessor.instance().getRecordFields(beanDescription.getBeanClass());
            this._recordFields = recordFields;
            int length = recordFields.length;
            if (length != 0) {
                List<AnnotatedConstructor> constructors = beanDescription.getConstructors();
                this._constructors = constructors;
                Iterator<AnnotatedConstructor> it2 = constructors.iterator();
                loop0: while (true) {
                    if (!it2.hasNext()) {
                        annotatedConstructorFindDefaultConstructor = null;
                        break;
                    }
                    AnnotatedConstructor next = it2.next();
                    if (next.getParameterCount() == length) {
                        int i10 = 0;
                        while (true) {
                            if (i10 >= length) {
                                annotatedConstructorFindDefaultConstructor = next;
                                break loop0;
                            } else if (!next.getRawParameterType(i10).equals(this._recordFields[i10].rawType)) {
                                break;
                            } else {
                                i10++;
                            }
                        }
                    }
                }
            } else {
                annotatedConstructorFindDefaultConstructor = beanDescription.findDefaultConstructor();
                this._constructors = Collections.singletonList(annotatedConstructorFindDefaultConstructor);
            }
            if (annotatedConstructorFindDefaultConstructor != null) {
                this._primaryConstructor = annotatedConstructorFindDefaultConstructor;
                return;
            }
            throw new IllegalArgumentException("Failed to find the canonical Record constructor of type " + ClassUtil.getTypeDescription(this._beanDesc.getType()));
        }

        public AnnotatedConstructor locate(List<String> list) {
            for (AnnotatedConstructor annotatedConstructor : this._constructors) {
                JsonCreator.Mode modeFindCreatorAnnotation = this._intr.findCreatorAnnotation(this._config, annotatedConstructor);
                if (modeFindCreatorAnnotation != null && JsonCreator.Mode.DISABLED != modeFindCreatorAnnotation && (JsonCreator.Mode.DELEGATING == modeFindCreatorAnnotation || annotatedConstructor != this._primaryConstructor)) {
                    return null;
                }
            }
            for (RawTypeName rawTypeName : this._recordFields) {
                list.add(rawTypeName.name);
            }
            return this._primaryConstructor;
        }
    }

    static class RawTypeName {
        public final String name;
        public final Class<?> rawType;

        public RawTypeName(Class<?> cls, String str) {
            this.rawType = cls;
            this.name = str;
        }
    }

    static class RecordAccessor {
        private static final RecordAccessor INSTANCE;
        private static final RuntimeException PROBLEM;
        private final Method RECORD_COMPONENT_GET_NAME;
        private final Method RECORD_COMPONENT_GET_TYPE;
        private final Method RECORD_GET_RECORD_COMPONENTS;

        static {
            RecordAccessor recordAccessor = null;
            try {
                e = null;
                recordAccessor = new RecordAccessor();
            } catch (RuntimeException e10) {
                e = e10;
            }
            INSTANCE = recordAccessor;
            PROBLEM = e;
        }

        private RecordAccessor() throws RuntimeException {
            try {
                this.RECORD_GET_RECORD_COMPONENTS = Class.class.getMethod("getRecordComponents", new Class[0]);
                Class<?> cls = Class.forName("java.lang.reflect.RecordComponent");
                this.RECORD_COMPONENT_GET_NAME = cls.getMethod("getName", new Class[0]);
                this.RECORD_COMPONENT_GET_TYPE = cls.getMethod("getType", new Class[0]);
            } catch (Exception e10) {
                throw new RuntimeException(String.format("Failed to access Methods needed to support `java.lang.Record`: (%s) %s", e10.getClass().getName(), e10.getMessage()), e10);
            }
        }

        public static RecordAccessor instance() {
            RuntimeException runtimeException = PROBLEM;
            if (runtimeException == null) {
                return INSTANCE;
            }
            throw runtimeException;
        }

        public String[] getRecordFieldNames(Class<?> cls) throws IllegalArgumentException {
            Object[] objArrRecordComponents = recordComponents(cls);
            String[] strArr = new String[objArrRecordComponents.length];
            for (int i10 = 0; i10 < objArrRecordComponents.length; i10++) {
                try {
                    strArr[i10] = (String) this.RECORD_COMPONENT_GET_NAME.invoke(objArrRecordComponents[i10], new Object[0]);
                } catch (Exception e10) {
                    throw new IllegalArgumentException(String.format("Failed to access name of field #%d (of %d) of Record type %s", Integer.valueOf(i10), Integer.valueOf(objArrRecordComponents.length), ClassUtil.nameOf(cls)), e10);
                }
            }
            return strArr;
        }

        public RawTypeName[] getRecordFields(Class<?> cls) throws IllegalArgumentException {
            Object[] objArrRecordComponents = recordComponents(cls);
            RawTypeName[] rawTypeNameArr = new RawTypeName[objArrRecordComponents.length];
            for (int i10 = 0; i10 < objArrRecordComponents.length; i10++) {
                try {
                    try {
                        rawTypeNameArr[i10] = new RawTypeName((Class) this.RECORD_COMPONENT_GET_TYPE.invoke(objArrRecordComponents[i10], new Object[0]), (String) this.RECORD_COMPONENT_GET_NAME.invoke(objArrRecordComponents[i10], new Object[0]));
                    } catch (Exception e10) {
                        throw new IllegalArgumentException(String.format("Failed to access type of field #%d (of %d) of Record type %s", Integer.valueOf(i10), Integer.valueOf(objArrRecordComponents.length), ClassUtil.nameOf(cls)), e10);
                    }
                } catch (Exception e11) {
                    throw new IllegalArgumentException(String.format("Failed to access name of field #%d (of %d) of Record type %s", Integer.valueOf(i10), Integer.valueOf(objArrRecordComponents.length), ClassUtil.nameOf(cls)), e11);
                }
            }
            return rawTypeNameArr;
        }

        protected Object[] recordComponents(Class<?> cls) throws IllegalArgumentException {
            try {
                return (Object[]) this.RECORD_GET_RECORD_COMPONENTS.invoke(cls, new Object[0]);
            } catch (Exception unused) {
                throw new IllegalArgumentException("Failed to access RecordComponents of type " + ClassUtil.nameOf(cls));
            }
        }
    }

    public static AnnotatedConstructor findRecordConstructor(DeserializationContext deserializationContext, BeanDescription beanDescription, List<String> list) {
        return new CreatorLocator(deserializationContext, beanDescription).locate(list);
    }

    public static String[] getRecordFieldNames(Class<?> cls) {
        return RecordAccessor.instance().getRecordFieldNames(cls);
    }
}
