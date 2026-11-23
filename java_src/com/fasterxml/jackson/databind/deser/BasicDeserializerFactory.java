package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.AbstractTypeResolver;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.ConstructorDetector;
import com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.deser.impl.CreatorCandidate;
import com.fasterxml.jackson.databind.deser.impl.CreatorCollector;
import com.fasterxml.jackson.databind.deser.impl.JDKValueInstantiators;
import com.fasterxml.jackson.databind.deser.impl.JavaUtilCollectionsDeserializers;
import com.fasterxml.jackson.databind.deser.std.ArrayBlockingQueueDeserializer;
import com.fasterxml.jackson.databind.deser.std.AtomicReferenceDeserializer;
import com.fasterxml.jackson.databind.deser.std.CollectionDeserializer;
import com.fasterxml.jackson.databind.deser.std.DateDeserializers;
import com.fasterxml.jackson.databind.deser.std.EnumDeserializer;
import com.fasterxml.jackson.databind.deser.std.EnumMapDeserializer;
import com.fasterxml.jackson.databind.deser.std.EnumSetDeserializer;
import com.fasterxml.jackson.databind.deser.std.JdkDeserializers;
import com.fasterxml.jackson.databind.deser.std.JsonNodeDeserializer;
import com.fasterxml.jackson.databind.deser.std.MapDeserializer;
import com.fasterxml.jackson.databind.deser.std.MapEntryDeserializer;
import com.fasterxml.jackson.databind.deser.std.NumberDeserializers;
import com.fasterxml.jackson.databind.deser.std.ObjectArrayDeserializer;
import com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers;
import com.fasterxml.jackson.databind.deser.std.StdKeyDeserializers;
import com.fasterxml.jackson.databind.deser.std.StringArrayDeserializer;
import com.fasterxml.jackson.databind.deser.std.StringCollectionDeserializer;
import com.fasterxml.jackson.databind.deser.std.StringDeserializer;
import com.fasterxml.jackson.databind.deser.std.TokenBufferDeserializer;
import com.fasterxml.jackson.databind.deser.std.UntypedObjectDeserializer;
import com.fasterxml.jackson.databind.exc.InvalidDefinitionException;
import com.fasterxml.jackson.databind.ext.OptionalHandlerFactory;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedConstructor;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.introspect.BasicBeanDescription;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jdk14.JDK14Util;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.EnumResolver;
import com.fasterxml.jackson.databind.util.SimpleBeanPropertyDefinition;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.AbstractList;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Deque;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes9.dex */
public abstract class BasicDeserializerFactory extends DeserializerFactory implements Serializable {
    protected final DeserializerFactoryConfig _factoryConfig;
    private static final Class<?> CLASS_OBJECT = Object.class;
    private static final Class<?> CLASS_STRING = String.class;
    private static final Class<?> CLASS_CHAR_SEQUENCE = CharSequence.class;
    private static final Class<?> CLASS_ITERABLE = Iterable.class;
    private static final Class<?> CLASS_MAP_ENTRY = Map.Entry.class;
    private static final Class<?> CLASS_SERIALIZABLE = Serializable.class;
    protected static final PropertyName UNWRAPPED_CREATOR_PARAM_NAME = new PropertyName("@JsonUnwrapped");

    /* JADX INFO: renamed from: com.fasterxml.jackson.databind.deser.BasicDeserializerFactory$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonCreator$Mode;
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$databind$cfg$ConstructorDetector$SingleArgConstructor;

        static {
            int[] iArr = new int[ConstructorDetector.SingleArgConstructor.values().length];
            $SwitchMap$com$fasterxml$jackson$databind$cfg$ConstructorDetector$SingleArgConstructor = iArr;
            try {
                iArr[ConstructorDetector.SingleArgConstructor.DELEGATING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$cfg$ConstructorDetector$SingleArgConstructor[ConstructorDetector.SingleArgConstructor.PROPERTIES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$cfg$ConstructorDetector$SingleArgConstructor[ConstructorDetector.SingleArgConstructor.REQUIRE_MODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$cfg$ConstructorDetector$SingleArgConstructor[ConstructorDetector.SingleArgConstructor.HEURISTIC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[JsonCreator.Mode.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonCreator$Mode = iArr2;
            try {
                iArr2[JsonCreator.Mode.DELEGATING.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonCreator$Mode[JsonCreator.Mode.PROPERTIES.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonCreator$Mode[JsonCreator.Mode.DEFAULT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    protected static class ContainerDefaultMappings {
        static final HashMap<String, Class<? extends Collection>> _collectionFallbacks;
        static final HashMap<String, Class<? extends Map>> _mapFallbacks;

        static {
            HashMap<String, Class<? extends Collection>> map = new HashMap<>();
            map.put(Collection.class.getName(), ArrayList.class);
            map.put(List.class.getName(), ArrayList.class);
            map.put(Set.class.getName(), HashSet.class);
            map.put(SortedSet.class.getName(), TreeSet.class);
            map.put(Queue.class.getName(), LinkedList.class);
            map.put(AbstractList.class.getName(), ArrayList.class);
            map.put(AbstractSet.class.getName(), HashSet.class);
            map.put(Deque.class.getName(), LinkedList.class);
            map.put(NavigableSet.class.getName(), TreeSet.class);
            _collectionFallbacks = map;
            HashMap<String, Class<? extends Map>> map2 = new HashMap<>();
            map2.put(Map.class.getName(), LinkedHashMap.class);
            map2.put(AbstractMap.class.getName(), LinkedHashMap.class);
            map2.put(ConcurrentMap.class.getName(), ConcurrentHashMap.class);
            map2.put(SortedMap.class.getName(), TreeMap.class);
            map2.put(NavigableMap.class.getName(), TreeMap.class);
            map2.put(ConcurrentNavigableMap.class.getName(), ConcurrentSkipListMap.class);
            _mapFallbacks = map2;
        }

        protected ContainerDefaultMappings() {
        }

        public static Class<?> findCollectionFallback(JavaType javaType) {
            return _collectionFallbacks.get(javaType.getRawClass().getName());
        }

        public static Class<?> findMapFallback(JavaType javaType) {
            return _mapFallbacks.get(javaType.getRawClass().getName());
        }
    }

    protected static class CreatorCollectionState {
        private int _explicitConstructorCount;
        private int _explicitFactoryCount;
        private List<CreatorCandidate> _implicitConstructorCandidates;
        private List<CreatorCandidate> _implicitFactoryCandidates;
        public final BeanDescription beanDesc;
        public final DeserializationContext context;
        public final Map<AnnotatedWithParams, BeanPropertyDefinition[]> creatorParams;
        public final CreatorCollector creators;
        public final VisibilityChecker<?> vchecker;

        public CreatorCollectionState(DeserializationContext deserializationContext, BeanDescription beanDescription, VisibilityChecker<?> visibilityChecker, CreatorCollector creatorCollector, Map<AnnotatedWithParams, BeanPropertyDefinition[]> map) {
            this.context = deserializationContext;
            this.beanDesc = beanDescription;
            this.vchecker = visibilityChecker;
            this.creators = creatorCollector;
            this.creatorParams = map;
        }

        public void addImplicitConstructorCandidate(CreatorCandidate creatorCandidate) {
            if (this._implicitConstructorCandidates == null) {
                this._implicitConstructorCandidates = new LinkedList();
            }
            this._implicitConstructorCandidates.add(creatorCandidate);
        }

        public void addImplicitFactoryCandidate(CreatorCandidate creatorCandidate) {
            if (this._implicitFactoryCandidates == null) {
                this._implicitFactoryCandidates = new LinkedList();
            }
            this._implicitFactoryCandidates.add(creatorCandidate);
        }

        public AnnotationIntrospector annotationIntrospector() {
            return this.context.getAnnotationIntrospector();
        }

        public boolean hasExplicitConstructors() {
            return this._explicitConstructorCount > 0;
        }

        public boolean hasExplicitFactories() {
            return this._explicitFactoryCount > 0;
        }

        public boolean hasImplicitConstructorCandidates() {
            return this._implicitConstructorCandidates != null;
        }

        public boolean hasImplicitFactoryCandidates() {
            return this._implicitFactoryCandidates != null;
        }

        public List<CreatorCandidate> implicitConstructorCandidates() {
            return this._implicitConstructorCandidates;
        }

        public List<CreatorCandidate> implicitFactoryCandidates() {
            return this._implicitFactoryCandidates;
        }

        public void increaseExplicitConstructorCount() {
            this._explicitConstructorCount++;
        }

        public void increaseExplicitFactoryCount() {
            this._explicitFactoryCount++;
        }
    }

    protected BasicDeserializerFactory(DeserializerFactoryConfig deserializerFactoryConfig) {
        this._factoryConfig = deserializerFactoryConfig;
    }

    private boolean _checkIfCreatorPropertyBased(AnnotationIntrospector annotationIntrospector, AnnotatedWithParams annotatedWithParams, BeanPropertyDefinition beanPropertyDefinition) {
        String name;
        if ((beanPropertyDefinition == null || !beanPropertyDefinition.isExplicitlyNamed()) && annotationIntrospector.findInjectableValue(annotatedWithParams.getParameter(0)) == null) {
            return (beanPropertyDefinition == null || (name = beanPropertyDefinition.getName()) == null || name.isEmpty() || !beanPropertyDefinition.couldSerialize()) ? false : true;
        }
        return true;
    }

    private void _checkImplicitlyNamedConstructors(DeserializationContext deserializationContext, BeanDescription beanDescription, VisibilityChecker<?> visibilityChecker, AnnotationIntrospector annotationIntrospector, CreatorCollector creatorCollector, List<AnnotatedWithParams> list) throws JsonMappingException {
        int i10;
        Iterator<AnnotatedWithParams> it2 = list.iterator();
        AnnotatedWithParams annotatedWithParams = null;
        AnnotatedWithParams annotatedWithParams2 = null;
        SettableBeanProperty[] settableBeanPropertyArr = null;
        while (true) {
            if (!it2.hasNext()) {
                annotatedWithParams = annotatedWithParams2;
                break;
            }
            AnnotatedWithParams next = it2.next();
            if (visibilityChecker.isCreatorVisible(next)) {
                int parameterCount = next.getParameterCount();
                SettableBeanProperty[] settableBeanPropertyArr2 = new SettableBeanProperty[parameterCount];
                int i11 = 0;
                while (true) {
                    if (i11 >= parameterCount) {
                        if (annotatedWithParams2 == null) {
                            annotatedWithParams2 = next;
                            settableBeanPropertyArr = settableBeanPropertyArr2;
                            break;
                        }
                        break;
                    }
                    AnnotatedParameter parameter = next.getParameter(i11);
                    PropertyName propertyName_findParamName = _findParamName(parameter, annotationIntrospector);
                    if (propertyName_findParamName == null || propertyName_findParamName.isEmpty()) {
                        break;
                    }
                    settableBeanPropertyArr2[i11] = constructCreatorProperty(deserializationContext, beanDescription, propertyName_findParamName, parameter.getIndex(), parameter, null);
                    i11++;
                }
            }
        }
        if (annotatedWithParams != null) {
            creatorCollector.addPropertyCreator(annotatedWithParams, false, settableBeanPropertyArr);
            BasicBeanDescription basicBeanDescription = (BasicBeanDescription) beanDescription;
            for (SettableBeanProperty settableBeanProperty : settableBeanPropertyArr) {
                PropertyName fullName = settableBeanProperty.getFullName();
                if (!basicBeanDescription.hasProperty(fullName)) {
                    basicBeanDescription.addProperty(SimpleBeanPropertyDefinition.construct(deserializationContext.getConfig(), settableBeanProperty.getMember(), fullName));
                }
            }
        }
    }

    private KeyDeserializer _createEnumKeyDeserializer(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        Class<?> rawClass = javaType.getRawClass();
        BeanDescription beanDescriptionIntrospect = config.introspect(javaType);
        KeyDeserializer keyDeserializerFindKeyDeserializerFromAnnotation = findKeyDeserializerFromAnnotation(deserializationContext, beanDescriptionIntrospect.getClassInfo());
        if (keyDeserializerFindKeyDeserializerFromAnnotation != null) {
            return keyDeserializerFindKeyDeserializerFromAnnotation;
        }
        JsonDeserializer<?> jsonDeserializer_findCustomEnumDeserializer = _findCustomEnumDeserializer(rawClass, config, beanDescriptionIntrospect);
        if (jsonDeserializer_findCustomEnumDeserializer != null) {
            return StdKeyDeserializers.constructDelegatingKeyDeserializer(config, javaType, jsonDeserializer_findCustomEnumDeserializer);
        }
        JsonDeserializer<Object> jsonDeserializerFindDeserializerFromAnnotation = findDeserializerFromAnnotation(deserializationContext, beanDescriptionIntrospect.getClassInfo());
        if (jsonDeserializerFindDeserializerFromAnnotation != null) {
            return StdKeyDeserializers.constructDelegatingKeyDeserializer(config, javaType, jsonDeserializerFindDeserializerFromAnnotation);
        }
        EnumResolver enumResolverConstructEnumResolver = constructEnumResolver(rawClass, config, beanDescriptionIntrospect.findJsonValueAccessor());
        for (AnnotatedMethod annotatedMethod : beanDescriptionIntrospect.getFactoryMethods()) {
            if (_hasCreatorAnnotation(deserializationContext, annotatedMethod)) {
                if (annotatedMethod.getParameterCount() != 1 || !annotatedMethod.getRawReturnType().isAssignableFrom(rawClass)) {
                    throw new IllegalArgumentException("Unsuitable method (" + annotatedMethod + ") decorated with @JsonCreator (for Enum type " + rawClass.getName() + ")");
                }
                if (annotatedMethod.getRawParameterType(0) == String.class) {
                    if (config.canOverrideAccessModifiers()) {
                        ClassUtil.checkAndFixAccess(annotatedMethod.getMember(), deserializationContext.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
                    }
                    return StdKeyDeserializers.constructEnumKeyDeserializer(enumResolverConstructEnumResolver, annotatedMethod);
                }
            }
        }
        return StdKeyDeserializers.constructEnumKeyDeserializer(enumResolverConstructEnumResolver);
    }

    private PropertyName _findParamName(AnnotatedParameter annotatedParameter, AnnotationIntrospector annotationIntrospector) {
        if (annotationIntrospector == null) {
            return null;
        }
        PropertyName propertyNameFindNameForDeserialization = annotationIntrospector.findNameForDeserialization(annotatedParameter);
        if (propertyNameFindNameForDeserialization != null && !propertyNameFindNameForDeserialization.isEmpty()) {
            return propertyNameFindNameForDeserialization;
        }
        String strFindImplicitPropertyName = annotationIntrospector.findImplicitPropertyName(annotatedParameter);
        if (strFindImplicitPropertyName == null || strFindImplicitPropertyName.isEmpty()) {
            return null;
        }
        return PropertyName.construct(strFindImplicitPropertyName);
    }

    private JavaType _mapAbstractType2(DeserializationConfig deserializationConfig, JavaType javaType) throws JsonMappingException {
        Class<?> rawClass = javaType.getRawClass();
        if (!this._factoryConfig.hasAbstractTypeResolvers()) {
            return null;
        }
        Iterator<AbstractTypeResolver> it2 = this._factoryConfig.abstractTypeResolvers().iterator();
        while (it2.hasNext()) {
            JavaType javaTypeFindTypeMapping = it2.next().findTypeMapping(deserializationConfig, javaType);
            if (javaTypeFindTypeMapping != null && !javaTypeFindTypeMapping.hasRawClass(rawClass)) {
                return javaTypeFindTypeMapping;
            }
        }
        return null;
    }

    @Deprecated
    protected void _addExplicitAnyCreator(DeserializationContext deserializationContext, BeanDescription beanDescription, CreatorCollector creatorCollector, CreatorCandidate creatorCandidate) throws JsonMappingException {
        _addExplicitAnyCreator(deserializationContext, beanDescription, creatorCollector, creatorCandidate, deserializationContext.getConfig().getConstructorDetector());
    }

    protected void _addExplicitConstructorCreators(DeserializationContext deserializationContext, CreatorCollectionState creatorCollectionState, boolean z10) throws JsonMappingException {
        BeanDescription beanDescription = creatorCollectionState.beanDesc;
        CreatorCollector creatorCollector = creatorCollectionState.creators;
        AnnotationIntrospector annotationIntrospector = creatorCollectionState.annotationIntrospector();
        VisibilityChecker<?> visibilityChecker = creatorCollectionState.vchecker;
        Map<AnnotatedWithParams, BeanPropertyDefinition[]> map = creatorCollectionState.creatorParams;
        AnnotatedConstructor annotatedConstructorFindDefaultConstructor = beanDescription.findDefaultConstructor();
        if (annotatedConstructorFindDefaultConstructor != null && (!creatorCollector.hasDefaultCreator() || _hasCreatorAnnotation(deserializationContext, annotatedConstructorFindDefaultConstructor))) {
            creatorCollector.setDefaultCreator(annotatedConstructorFindDefaultConstructor);
        }
        for (AnnotatedConstructor annotatedConstructor : beanDescription.getConstructors()) {
            JsonCreator.Mode modeFindCreatorAnnotation = annotationIntrospector.findCreatorAnnotation(deserializationContext.getConfig(), annotatedConstructor);
            if (JsonCreator.Mode.DISABLED != modeFindCreatorAnnotation) {
                if (modeFindCreatorAnnotation != null) {
                    int i10 = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$annotation$JsonCreator$Mode[modeFindCreatorAnnotation.ordinal()];
                    if (i10 == 1) {
                        _addExplicitDelegatingCreator(deserializationContext, beanDescription, creatorCollector, CreatorCandidate.construct(annotationIntrospector, annotatedConstructor, null));
                    } else if (i10 != 2) {
                        _addExplicitAnyCreator(deserializationContext, beanDescription, creatorCollector, CreatorCandidate.construct(annotationIntrospector, annotatedConstructor, map.get(annotatedConstructor)), deserializationContext.getConfig().getConstructorDetector());
                    } else {
                        _addExplicitPropertyCreator(deserializationContext, beanDescription, creatorCollector, CreatorCandidate.construct(annotationIntrospector, annotatedConstructor, map.get(annotatedConstructor)));
                    }
                    creatorCollectionState.increaseExplicitConstructorCount();
                } else if (z10 && visibilityChecker.isCreatorVisible(annotatedConstructor)) {
                    creatorCollectionState.addImplicitConstructorCandidate(CreatorCandidate.construct(annotationIntrospector, annotatedConstructor, map.get(annotatedConstructor)));
                }
            }
        }
    }

    protected void _addExplicitDelegatingCreator(DeserializationContext deserializationContext, BeanDescription beanDescription, CreatorCollector creatorCollector, CreatorCandidate creatorCandidate) throws JsonMappingException {
        int iParamCount = creatorCandidate.paramCount();
        SettableBeanProperty[] settableBeanPropertyArr = new SettableBeanProperty[iParamCount];
        int i10 = -1;
        for (int i11 = 0; i11 < iParamCount; i11++) {
            AnnotatedParameter annotatedParameterParameter = creatorCandidate.parameter(i11);
            JacksonInject.Value valueInjection = creatorCandidate.injection(i11);
            if (valueInjection != null) {
                settableBeanPropertyArr[i11] = constructCreatorProperty(deserializationContext, beanDescription, null, i11, annotatedParameterParameter, valueInjection);
            } else if (i10 < 0) {
                i10 = i11;
            } else {
                deserializationContext.reportBadTypeDefinition(beanDescription, "More than one argument (#%d and #%d) left as delegating for Creator %s: only one allowed", Integer.valueOf(i10), Integer.valueOf(i11), creatorCandidate);
            }
        }
        if (i10 < 0) {
            deserializationContext.reportBadTypeDefinition(beanDescription, "No argument left as delegating for Creator %s: exactly one required", creatorCandidate);
        }
        if (iParamCount != 1) {
            creatorCollector.addDelegatingCreator(creatorCandidate.creator(), true, settableBeanPropertyArr, i10);
            return;
        }
        _handleSingleArgumentCreator(creatorCollector, creatorCandidate.creator(), true, true);
        BeanPropertyDefinition beanPropertyDefinitionPropertyDef = creatorCandidate.propertyDef(0);
        if (beanPropertyDefinitionPropertyDef != null) {
            ((POJOPropertyBuilder) beanPropertyDefinitionPropertyDef).removeConstructors();
        }
    }

    protected void _addExplicitFactoryCreators(DeserializationContext deserializationContext, CreatorCollectionState creatorCollectionState, boolean z10) throws JsonMappingException {
        BeanDescription beanDescription = creatorCollectionState.beanDesc;
        CreatorCollector creatorCollector = creatorCollectionState.creators;
        AnnotationIntrospector annotationIntrospector = creatorCollectionState.annotationIntrospector();
        VisibilityChecker<?> visibilityChecker = creatorCollectionState.vchecker;
        Map<AnnotatedWithParams, BeanPropertyDefinition[]> map = creatorCollectionState.creatorParams;
        for (AnnotatedMethod annotatedMethod : beanDescription.getFactoryMethods()) {
            JsonCreator.Mode modeFindCreatorAnnotation = annotationIntrospector.findCreatorAnnotation(deserializationContext.getConfig(), annotatedMethod);
            int parameterCount = annotatedMethod.getParameterCount();
            if (modeFindCreatorAnnotation == null) {
                if (z10 && parameterCount == 1 && visibilityChecker.isCreatorVisible(annotatedMethod)) {
                    creatorCollectionState.addImplicitFactoryCandidate(CreatorCandidate.construct(annotationIntrospector, annotatedMethod, null));
                }
            } else if (modeFindCreatorAnnotation != JsonCreator.Mode.DISABLED) {
                if (parameterCount == 0) {
                    creatorCollector.setDefaultCreator(annotatedMethod);
                } else {
                    int i10 = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$annotation$JsonCreator$Mode[modeFindCreatorAnnotation.ordinal()];
                    if (i10 == 1) {
                        _addExplicitDelegatingCreator(deserializationContext, beanDescription, creatorCollector, CreatorCandidate.construct(annotationIntrospector, annotatedMethod, null));
                    } else if (i10 != 2) {
                        _addExplicitAnyCreator(deserializationContext, beanDescription, creatorCollector, CreatorCandidate.construct(annotationIntrospector, annotatedMethod, map.get(annotatedMethod)), ConstructorDetector.DEFAULT);
                    } else {
                        _addExplicitPropertyCreator(deserializationContext, beanDescription, creatorCollector, CreatorCandidate.construct(annotationIntrospector, annotatedMethod, map.get(annotatedMethod)));
                    }
                    creatorCollectionState.increaseExplicitFactoryCount();
                }
            }
        }
    }

    protected void _addExplicitPropertyCreator(DeserializationContext deserializationContext, BeanDescription beanDescription, CreatorCollector creatorCollector, CreatorCandidate creatorCandidate) throws JsonMappingException {
        int iParamCount = creatorCandidate.paramCount();
        SettableBeanProperty[] settableBeanPropertyArr = new SettableBeanProperty[iParamCount];
        for (int i10 = 0; i10 < iParamCount; i10++) {
            JacksonInject.Value valueInjection = creatorCandidate.injection(i10);
            AnnotatedParameter annotatedParameterParameter = creatorCandidate.parameter(i10);
            PropertyName propertyNameParamName = creatorCandidate.paramName(i10);
            if (propertyNameParamName == null) {
                if (deserializationContext.getAnnotationIntrospector().findUnwrappingNameTransformer(annotatedParameterParameter) != null) {
                    _reportUnwrappedCreatorProperty(deserializationContext, beanDescription, annotatedParameterParameter);
                }
                propertyNameParamName = creatorCandidate.findImplicitParamName(i10);
                if (propertyNameParamName == null && valueInjection == null) {
                    deserializationContext.reportBadTypeDefinition(beanDescription, "Argument #%d has no property name, is not Injectable: can not use as Creator %s", Integer.valueOf(i10), creatorCandidate);
                }
            }
            settableBeanPropertyArr[i10] = constructCreatorProperty(deserializationContext, beanDescription, propertyNameParamName, i10, annotatedParameterParameter, valueInjection);
        }
        creatorCollector.addPropertyCreator(creatorCandidate.creator(), true, settableBeanPropertyArr);
    }

    protected void _addImplicitConstructorCreators(DeserializationContext deserializationContext, CreatorCollectionState creatorCollectionState, List<CreatorCandidate> list) throws JsonMappingException {
        VisibilityChecker<?> visibilityChecker;
        boolean z10;
        Iterator<CreatorCandidate> it2;
        CreatorCollector creatorCollector;
        int i10;
        CreatorCollector creatorCollector2;
        VisibilityChecker<?> visibilityChecker2;
        boolean z11;
        Iterator<CreatorCandidate> it3;
        int i11;
        SettableBeanProperty[] settableBeanPropertyArr;
        AnnotatedWithParams annotatedWithParams;
        int i12;
        CreatorCandidate creatorCandidate;
        DeserializationConfig config = deserializationContext.getConfig();
        BeanDescription beanDescription = creatorCollectionState.beanDesc;
        CreatorCollector creatorCollector3 = creatorCollectionState.creators;
        AnnotationIntrospector annotationIntrospector = creatorCollectionState.annotationIntrospector();
        VisibilityChecker<?> visibilityChecker3 = creatorCollectionState.vchecker;
        boolean zSingleArgCreatorDefaultsToProperties = config.getConstructorDetector().singleArgCreatorDefaultsToProperties();
        Iterator<CreatorCandidate> it4 = list.iterator();
        LinkedList linkedList = null;
        while (it4.hasNext()) {
            CreatorCandidate next = it4.next();
            int iParamCount = next.paramCount();
            AnnotatedWithParams annotatedWithParamsCreator = next.creator();
            if (iParamCount == 1) {
                BeanPropertyDefinition beanPropertyDefinitionPropertyDef = next.propertyDef(0);
                if (zSingleArgCreatorDefaultsToProperties || _checkIfCreatorPropertyBased(annotationIntrospector, annotatedWithParamsCreator, beanPropertyDefinitionPropertyDef)) {
                    SettableBeanProperty[] settableBeanPropertyArr2 = new SettableBeanProperty[1];
                    JacksonInject.Value valueInjection = next.injection(0);
                    PropertyName propertyNameParamName = next.paramName(0);
                    if (propertyNameParamName != null || (propertyNameParamName = next.findImplicitParamName(0)) != null || valueInjection != null) {
                        settableBeanPropertyArr2[0] = constructCreatorProperty(deserializationContext, beanDescription, propertyNameParamName, 0, next.parameter(0), valueInjection);
                        creatorCollector3.addPropertyCreator(annotatedWithParamsCreator, false, settableBeanPropertyArr2);
                    }
                } else {
                    _handleSingleArgumentCreator(creatorCollector3, annotatedWithParamsCreator, false, visibilityChecker3.isCreatorVisible(annotatedWithParamsCreator));
                    if (beanPropertyDefinitionPropertyDef != null) {
                        ((POJOPropertyBuilder) beanPropertyDefinitionPropertyDef).removeConstructors();
                    }
                }
                creatorCollector = creatorCollector3;
                visibilityChecker = visibilityChecker3;
                z10 = zSingleArgCreatorDefaultsToProperties;
                it2 = it4;
            } else {
                SettableBeanProperty[] settableBeanPropertyArr3 = new SettableBeanProperty[iParamCount];
                int i13 = 0;
                int i14 = -1;
                int i15 = 0;
                int i16 = 0;
                while (i13 < iParamCount) {
                    AnnotatedParameter parameter = annotatedWithParamsCreator.getParameter(i13);
                    BeanPropertyDefinition beanPropertyDefinitionPropertyDef2 = next.propertyDef(i13);
                    JacksonInject.Value valueFindInjectableValue = annotationIntrospector.findInjectableValue(parameter);
                    PropertyName fullName = beanPropertyDefinitionPropertyDef2 == null ? null : beanPropertyDefinitionPropertyDef2.getFullName();
                    if (beanPropertyDefinitionPropertyDef2 == null || !beanPropertyDefinitionPropertyDef2.isExplicitlyNamed()) {
                        i10 = i13;
                        creatorCollector2 = creatorCollector3;
                        visibilityChecker2 = visibilityChecker3;
                        z11 = zSingleArgCreatorDefaultsToProperties;
                        it3 = it4;
                        i11 = i14;
                        settableBeanPropertyArr = settableBeanPropertyArr3;
                        annotatedWithParams = annotatedWithParamsCreator;
                        i12 = iParamCount;
                        if (valueFindInjectableValue != null) {
                            i16++;
                            settableBeanPropertyArr[i10] = constructCreatorProperty(deserializationContext, beanDescription, fullName, i10, parameter, valueFindInjectableValue);
                        } else {
                            creatorCandidate = next;
                            if (annotationIntrospector.findUnwrappingNameTransformer(parameter) != null) {
                                _reportUnwrappedCreatorProperty(deserializationContext, beanDescription, parameter);
                            } else if (i11 < 0) {
                                i14 = i10;
                            }
                            i14 = i11;
                        }
                        next = creatorCandidate;
                        i13 = i10 + 1;
                        iParamCount = i12;
                        annotatedWithParamsCreator = annotatedWithParams;
                        settableBeanPropertyArr3 = settableBeanPropertyArr;
                        zSingleArgCreatorDefaultsToProperties = z11;
                        it4 = it3;
                        visibilityChecker3 = visibilityChecker2;
                        creatorCollector3 = creatorCollector2;
                    } else {
                        i15++;
                        i10 = i13;
                        z11 = zSingleArgCreatorDefaultsToProperties;
                        i11 = i14;
                        it3 = it4;
                        settableBeanPropertyArr = settableBeanPropertyArr3;
                        visibilityChecker2 = visibilityChecker3;
                        annotatedWithParams = annotatedWithParamsCreator;
                        creatorCollector2 = creatorCollector3;
                        i12 = iParamCount;
                        settableBeanPropertyArr[i10] = constructCreatorProperty(deserializationContext, beanDescription, fullName, i10, parameter, valueFindInjectableValue);
                    }
                    i14 = i11;
                    creatorCandidate = next;
                    next = creatorCandidate;
                    i13 = i10 + 1;
                    iParamCount = i12;
                    annotatedWithParamsCreator = annotatedWithParams;
                    settableBeanPropertyArr3 = settableBeanPropertyArr;
                    zSingleArgCreatorDefaultsToProperties = z11;
                    it4 = it3;
                    visibilityChecker3 = visibilityChecker2;
                    creatorCollector3 = creatorCollector2;
                }
                CreatorCandidate creatorCandidate2 = next;
                CreatorCollector creatorCollector4 = creatorCollector3;
                visibilityChecker = visibilityChecker3;
                z10 = zSingleArgCreatorDefaultsToProperties;
                it2 = it4;
                int i17 = i14;
                SettableBeanProperty[] settableBeanPropertyArr4 = settableBeanPropertyArr3;
                AnnotatedWithParams annotatedWithParams2 = annotatedWithParamsCreator;
                int i18 = iParamCount;
                int i19 = i15 + 0;
                if (i15 <= 0 && i16 <= 0) {
                    creatorCollector = creatorCollector4;
                } else if (i19 + i16 == i18) {
                    creatorCollector = creatorCollector4;
                    creatorCollector.addPropertyCreator(annotatedWithParams2, false, settableBeanPropertyArr4);
                } else {
                    creatorCollector = creatorCollector4;
                    if (i15 == 0 && i16 + 1 == i18) {
                        creatorCollector.addDelegatingCreator(annotatedWithParams2, false, settableBeanPropertyArr4, 0);
                    } else {
                        PropertyName propertyNameFindImplicitParamName = creatorCandidate2.findImplicitParamName(i17);
                        if (propertyNameFindImplicitParamName == null || propertyNameFindImplicitParamName.isEmpty()) {
                            deserializationContext.reportBadTypeDefinition(beanDescription, "Argument #%d of constructor %s has no property name annotation; must have name when multiple-parameter constructor annotated as Creator", Integer.valueOf(i17), annotatedWithParams2);
                        }
                    }
                }
                if (!creatorCollector.hasDefaultCreator()) {
                    LinkedList linkedList2 = linkedList == null ? new LinkedList() : linkedList;
                    linkedList2.add(annotatedWithParams2);
                    linkedList = linkedList2;
                }
            }
            creatorCollector3 = creatorCollector;
            zSingleArgCreatorDefaultsToProperties = z10;
            it4 = it2;
            visibilityChecker3 = visibilityChecker;
        }
        CreatorCollector creatorCollector5 = creatorCollector3;
        VisibilityChecker<?> visibilityChecker4 = visibilityChecker3;
        if (linkedList == null || creatorCollector5.hasDelegatingCreator() || creatorCollector5.hasPropertyBasedCreator()) {
            return;
        }
        _checkImplicitlyNamedConstructors(deserializationContext, beanDescription, visibilityChecker4, annotationIntrospector, creatorCollector5, linkedList);
    }

    protected void _addImplicitFactoryCreators(DeserializationContext deserializationContext, CreatorCollectionState creatorCollectionState, List<CreatorCandidate> list) throws JsonMappingException {
        int i10;
        VisibilityChecker<?> visibilityChecker;
        Map<AnnotatedWithParams, BeanPropertyDefinition[]> map;
        Iterator<CreatorCandidate> it2;
        SettableBeanProperty[] settableBeanPropertyArr;
        AnnotatedWithParams annotatedWithParams;
        BeanDescription beanDescription = creatorCollectionState.beanDesc;
        CreatorCollector creatorCollector = creatorCollectionState.creators;
        AnnotationIntrospector annotationIntrospector = creatorCollectionState.annotationIntrospector();
        VisibilityChecker<?> visibilityChecker2 = creatorCollectionState.vchecker;
        Map<AnnotatedWithParams, BeanPropertyDefinition[]> map2 = creatorCollectionState.creatorParams;
        Iterator<CreatorCandidate> it3 = list.iterator();
        while (it3.hasNext()) {
            CreatorCandidate next = it3.next();
            int iParamCount = next.paramCount();
            AnnotatedWithParams annotatedWithParamsCreator = next.creator();
            BeanPropertyDefinition[] beanPropertyDefinitionArr = map2.get(annotatedWithParamsCreator);
            if (iParamCount == 1) {
                BeanPropertyDefinition beanPropertyDefinitionPropertyDef = next.propertyDef(0);
                if (_checkIfCreatorPropertyBased(annotationIntrospector, annotatedWithParamsCreator, beanPropertyDefinitionPropertyDef)) {
                    SettableBeanProperty[] settableBeanPropertyArr2 = new SettableBeanProperty[iParamCount];
                    AnnotatedParameter annotatedParameter = null;
                    int i11 = 0;
                    int i12 = 0;
                    int i13 = 0;
                    while (i11 < iParamCount) {
                        AnnotatedParameter parameter = annotatedWithParamsCreator.getParameter(i11);
                        BeanPropertyDefinition beanPropertyDefinition = beanPropertyDefinitionArr == null ? null : beanPropertyDefinitionArr[i11];
                        JacksonInject.Value valueFindInjectableValue = annotationIntrospector.findInjectableValue(parameter);
                        PropertyName fullName = beanPropertyDefinition == null ? null : beanPropertyDefinition.getFullName();
                        if (beanPropertyDefinition == null || !beanPropertyDefinition.isExplicitlyNamed()) {
                            i10 = i11;
                            visibilityChecker = visibilityChecker2;
                            map = map2;
                            it2 = it3;
                            settableBeanPropertyArr = settableBeanPropertyArr2;
                            annotatedWithParams = annotatedWithParamsCreator;
                            if (valueFindInjectableValue != null) {
                                i13++;
                                settableBeanPropertyArr[i10] = constructCreatorProperty(deserializationContext, beanDescription, fullName, i10, parameter, valueFindInjectableValue);
                            } else if (annotationIntrospector.findUnwrappingNameTransformer(parameter) != null) {
                                _reportUnwrappedCreatorProperty(deserializationContext, beanDescription, parameter);
                            } else if (annotatedParameter == null) {
                                annotatedParameter = parameter;
                            }
                        } else {
                            i12++;
                            i10 = i11;
                            visibilityChecker = visibilityChecker2;
                            settableBeanPropertyArr = settableBeanPropertyArr2;
                            map = map2;
                            it2 = it3;
                            annotatedWithParams = annotatedWithParamsCreator;
                            settableBeanPropertyArr[i10] = constructCreatorProperty(deserializationContext, beanDescription, fullName, i10, parameter, valueFindInjectableValue);
                        }
                        i11 = i10 + 1;
                        settableBeanPropertyArr2 = settableBeanPropertyArr;
                        annotatedWithParamsCreator = annotatedWithParams;
                        visibilityChecker2 = visibilityChecker;
                        map2 = map;
                        it3 = it2;
                    }
                    VisibilityChecker<?> visibilityChecker3 = visibilityChecker2;
                    Map<AnnotatedWithParams, BeanPropertyDefinition[]> map3 = map2;
                    Iterator<CreatorCandidate> it4 = it3;
                    SettableBeanProperty[] settableBeanPropertyArr3 = settableBeanPropertyArr2;
                    AnnotatedWithParams annotatedWithParams2 = annotatedWithParamsCreator;
                    int i14 = i12 + 0;
                    if (i12 > 0 || i13 > 0) {
                        if (i14 + i13 == iParamCount) {
                            creatorCollector.addPropertyCreator(annotatedWithParams2, false, settableBeanPropertyArr3);
                        } else if (i12 == 0 && i13 + 1 == iParamCount) {
                            creatorCollector.addDelegatingCreator(annotatedWithParams2, false, settableBeanPropertyArr3, 0);
                        } else {
                            deserializationContext.reportBadTypeDefinition(beanDescription, "Argument #%d of factory method %s has no property name annotation; must have name when multiple-parameter constructor annotated as Creator", Integer.valueOf(annotatedParameter.getIndex()), annotatedWithParams2);
                        }
                    }
                    it3 = it4;
                    visibilityChecker2 = visibilityChecker3;
                    map2 = map3;
                } else {
                    _handleSingleArgumentCreator(creatorCollector, annotatedWithParamsCreator, false, visibilityChecker2.isCreatorVisible(annotatedWithParamsCreator));
                    if (beanPropertyDefinitionPropertyDef != null) {
                        ((POJOPropertyBuilder) beanPropertyDefinitionPropertyDef).removeConstructors();
                    }
                }
            }
        }
    }

    protected void _addRecordConstructor(DeserializationContext deserializationContext, CreatorCollectionState creatorCollectionState, AnnotatedConstructor annotatedConstructor, List<String> list) throws JsonMappingException {
        int parameterCount = annotatedConstructor.getParameterCount();
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        SettableBeanProperty[] settableBeanPropertyArr = new SettableBeanProperty[parameterCount];
        for (int i10 = 0; i10 < parameterCount; i10++) {
            AnnotatedParameter parameter = annotatedConstructor.getParameter(i10);
            JacksonInject.Value valueFindInjectableValue = annotationIntrospector.findInjectableValue(parameter);
            PropertyName propertyNameFindNameForDeserialization = annotationIntrospector.findNameForDeserialization(parameter);
            if (propertyNameFindNameForDeserialization == null || propertyNameFindNameForDeserialization.isEmpty()) {
                propertyNameFindNameForDeserialization = PropertyName.construct(list.get(i10));
            }
            settableBeanPropertyArr[i10] = constructCreatorProperty(deserializationContext, creatorCollectionState.beanDesc, propertyNameFindNameForDeserialization, i10, parameter, valueFindInjectableValue);
        }
        creatorCollectionState.creators.addPropertyCreator(annotatedConstructor, false, settableBeanPropertyArr);
    }

    protected ValueInstantiator _constructDefaultValueInstantiator(DeserializationContext deserializationContext, BeanDescription beanDescription) throws JsonMappingException {
        ArrayList arrayList;
        AnnotatedConstructor annotatedConstructorFindRecordConstructor;
        DeserializationConfig config = deserializationContext.getConfig();
        VisibilityChecker<?> defaultVisibilityChecker = config.getDefaultVisibilityChecker(beanDescription.getBeanClass(), beanDescription.getClassInfo());
        ConstructorDetector constructorDetector = config.getConstructorDetector();
        CreatorCollectionState creatorCollectionState = new CreatorCollectionState(deserializationContext, beanDescription, defaultVisibilityChecker, new CreatorCollector(beanDescription, config), _findCreatorsFromProperties(deserializationContext, beanDescription));
        _addExplicitFactoryCreators(deserializationContext, creatorCollectionState, !constructorDetector.requireCtorAnnotation());
        if (beanDescription.getType().isConcrete()) {
            if (beanDescription.getType().isRecordType() && (annotatedConstructorFindRecordConstructor = JDK14Util.findRecordConstructor(deserializationContext, beanDescription, (arrayList = new ArrayList()))) != null) {
                _addRecordConstructor(deserializationContext, creatorCollectionState, annotatedConstructorFindRecordConstructor, arrayList);
                return creatorCollectionState.creators.constructValueInstantiator(deserializationContext);
            }
            if (!beanDescription.isNonStaticInnerClass()) {
                _addExplicitConstructorCreators(deserializationContext, creatorCollectionState, constructorDetector.shouldIntrospectorImplicitConstructors(beanDescription.getBeanClass()));
                if (creatorCollectionState.hasImplicitConstructorCandidates() && !creatorCollectionState.hasExplicitFactories() && !creatorCollectionState.hasExplicitConstructors()) {
                    _addImplicitConstructorCreators(deserializationContext, creatorCollectionState, creatorCollectionState.implicitConstructorCandidates());
                }
            }
        }
        if (creatorCollectionState.hasImplicitFactoryCandidates() && !creatorCollectionState.hasExplicitFactories() && !creatorCollectionState.hasExplicitConstructors()) {
            _addImplicitFactoryCreators(deserializationContext, creatorCollectionState, creatorCollectionState.implicitFactoryCandidates());
        }
        return creatorCollectionState.creators.constructValueInstantiator(deserializationContext);
    }

    protected Map<AnnotatedWithParams, BeanPropertyDefinition[]> _findCreatorsFromProperties(DeserializationContext deserializationContext, BeanDescription beanDescription) throws JsonMappingException {
        Map<AnnotatedWithParams, BeanPropertyDefinition[]> mapEmptyMap = Collections.emptyMap();
        for (BeanPropertyDefinition beanPropertyDefinition : beanDescription.findProperties()) {
            Iterator<AnnotatedParameter> constructorParameters = beanPropertyDefinition.getConstructorParameters();
            while (constructorParameters.hasNext()) {
                AnnotatedParameter next = constructorParameters.next();
                AnnotatedWithParams owner = next.getOwner();
                BeanPropertyDefinition[] beanPropertyDefinitionArr = mapEmptyMap.get(owner);
                int index = next.getIndex();
                if (beanPropertyDefinitionArr == null) {
                    if (mapEmptyMap.isEmpty()) {
                        mapEmptyMap = new LinkedHashMap<>();
                    }
                    beanPropertyDefinitionArr = new BeanPropertyDefinition[owner.getParameterCount()];
                    mapEmptyMap.put(owner, beanPropertyDefinitionArr);
                } else if (beanPropertyDefinitionArr[index] != null) {
                    deserializationContext.reportBadTypeDefinition(beanDescription, "Conflict: parameter #%d of %s bound to more than one property; %s vs %s", Integer.valueOf(index), owner, beanPropertyDefinitionArr[index], beanPropertyDefinition);
                }
                beanPropertyDefinitionArr[index] = beanPropertyDefinition;
            }
        }
        return mapEmptyMap;
    }

    protected JsonDeserializer<?> _findCustomArrayDeserializer(ArrayType arrayType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        Iterator<Deserializers> it2 = this._factoryConfig.deserializers().iterator();
        while (it2.hasNext()) {
            JsonDeserializer<?> jsonDeserializerFindArrayDeserializer = it2.next().findArrayDeserializer(arrayType, deserializationConfig, beanDescription, typeDeserializer, jsonDeserializer);
            if (jsonDeserializerFindArrayDeserializer != null) {
                return jsonDeserializerFindArrayDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<Object> _findCustomBeanDeserializer(JavaType javaType, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        Iterator<Deserializers> it2 = this._factoryConfig.deserializers().iterator();
        while (it2.hasNext()) {
            JsonDeserializer<?> jsonDeserializerFindBeanDeserializer = it2.next().findBeanDeserializer(javaType, deserializationConfig, beanDescription);
            if (jsonDeserializerFindBeanDeserializer != null) {
                return jsonDeserializerFindBeanDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomCollectionDeserializer(CollectionType collectionType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        Iterator<Deserializers> it2 = this._factoryConfig.deserializers().iterator();
        while (it2.hasNext()) {
            JsonDeserializer<?> jsonDeserializerFindCollectionDeserializer = it2.next().findCollectionDeserializer(collectionType, deserializationConfig, beanDescription, typeDeserializer, jsonDeserializer);
            if (jsonDeserializerFindCollectionDeserializer != null) {
                return jsonDeserializerFindCollectionDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomCollectionLikeDeserializer(CollectionLikeType collectionLikeType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        Iterator<Deserializers> it2 = this._factoryConfig.deserializers().iterator();
        while (it2.hasNext()) {
            JsonDeserializer<?> jsonDeserializerFindCollectionLikeDeserializer = it2.next().findCollectionLikeDeserializer(collectionLikeType, deserializationConfig, beanDescription, typeDeserializer, jsonDeserializer);
            if (jsonDeserializerFindCollectionLikeDeserializer != null) {
                return jsonDeserializerFindCollectionLikeDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomEnumDeserializer(Class<?> cls, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        Iterator<Deserializers> it2 = this._factoryConfig.deserializers().iterator();
        while (it2.hasNext()) {
            JsonDeserializer<?> jsonDeserializerFindEnumDeserializer = it2.next().findEnumDeserializer(cls, deserializationConfig, beanDescription);
            if (jsonDeserializerFindEnumDeserializer != null) {
                return jsonDeserializerFindEnumDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomMapDeserializer(MapType mapType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, KeyDeserializer keyDeserializer, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        Iterator<Deserializers> it2 = this._factoryConfig.deserializers().iterator();
        while (it2.hasNext()) {
            JsonDeserializer<?> jsonDeserializerFindMapDeserializer = it2.next().findMapDeserializer(mapType, deserializationConfig, beanDescription, keyDeserializer, typeDeserializer, jsonDeserializer);
            if (jsonDeserializerFindMapDeserializer != null) {
                return jsonDeserializerFindMapDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomMapLikeDeserializer(MapLikeType mapLikeType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, KeyDeserializer keyDeserializer, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        Iterator<Deserializers> it2 = this._factoryConfig.deserializers().iterator();
        while (it2.hasNext()) {
            JsonDeserializer<?> jsonDeserializerFindMapLikeDeserializer = it2.next().findMapLikeDeserializer(mapLikeType, deserializationConfig, beanDescription, keyDeserializer, typeDeserializer, jsonDeserializer);
            if (jsonDeserializerFindMapLikeDeserializer != null) {
                return jsonDeserializerFindMapLikeDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomReferenceDeserializer(ReferenceType referenceType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        Iterator<Deserializers> it2 = this._factoryConfig.deserializers().iterator();
        while (it2.hasNext()) {
            JsonDeserializer<?> jsonDeserializerFindReferenceDeserializer = it2.next().findReferenceDeserializer(referenceType, deserializationConfig, beanDescription, typeDeserializer, jsonDeserializer);
            if (jsonDeserializerFindReferenceDeserializer != null) {
                return jsonDeserializerFindReferenceDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomTreeNodeDeserializer(Class<? extends JsonNode> cls, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        Iterator<Deserializers> it2 = this._factoryConfig.deserializers().iterator();
        while (it2.hasNext()) {
            JsonDeserializer<?> jsonDeserializerFindTreeNodeDeserializer = it2.next().findTreeNodeDeserializer(cls, deserializationConfig, beanDescription);
            if (jsonDeserializerFindTreeNodeDeserializer != null) {
                return jsonDeserializerFindTreeNodeDeserializer;
            }
        }
        return null;
    }

    @Deprecated
    protected AnnotatedMethod _findJsonValueFor(DeserializationConfig deserializationConfig, JavaType javaType) {
        if (javaType == null) {
            return null;
        }
        return deserializationConfig.introspect(javaType).findJsonValueMethod();
    }

    protected JavaType _findRemappedType(DeserializationConfig deserializationConfig, Class<?> cls) throws JsonMappingException {
        JavaType javaTypeMapAbstractType = mapAbstractType(deserializationConfig, deserializationConfig.constructType(cls));
        if (javaTypeMapAbstractType == null || javaTypeMapAbstractType.hasRawClass(cls)) {
            return null;
        }
        return javaTypeMapAbstractType;
    }

    protected PropertyMetadata _getSetterInfo(DeserializationContext deserializationContext, BeanProperty beanProperty, PropertyMetadata propertyMetadata) {
        Nulls nullsNonDefaultContentNulls;
        JsonSetter.Value valueFindSetterInfo;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        DeserializationConfig config = deserializationContext.getConfig();
        AnnotatedMember member = beanProperty.getMember();
        Nulls nullsNonDefaultValueNulls = null;
        if (member != null) {
            if (annotationIntrospector == null || (valueFindSetterInfo = annotationIntrospector.findSetterInfo(member)) == null) {
                nullsNonDefaultContentNulls = null;
            } else {
                nullsNonDefaultValueNulls = valueFindSetterInfo.nonDefaultValueNulls();
                nullsNonDefaultContentNulls = valueFindSetterInfo.nonDefaultContentNulls();
            }
            JsonSetter.Value setterInfo = config.getConfigOverride(beanProperty.getType().getRawClass()).getSetterInfo();
            if (setterInfo != null) {
                if (nullsNonDefaultValueNulls == null) {
                    nullsNonDefaultValueNulls = setterInfo.nonDefaultValueNulls();
                }
                if (nullsNonDefaultContentNulls == null) {
                    nullsNonDefaultContentNulls = setterInfo.nonDefaultContentNulls();
                }
            }
        } else {
            nullsNonDefaultContentNulls = null;
        }
        JsonSetter.Value defaultSetterInfo = config.getDefaultSetterInfo();
        if (nullsNonDefaultValueNulls == null) {
            nullsNonDefaultValueNulls = defaultSetterInfo.nonDefaultValueNulls();
        }
        if (nullsNonDefaultContentNulls == null) {
            nullsNonDefaultContentNulls = defaultSetterInfo.nonDefaultContentNulls();
        }
        return (nullsNonDefaultValueNulls == null && nullsNonDefaultContentNulls == null) ? propertyMetadata : propertyMetadata.withNulls(nullsNonDefaultValueNulls, nullsNonDefaultContentNulls);
    }

    protected boolean _handleSingleArgumentCreator(CreatorCollector creatorCollector, AnnotatedWithParams annotatedWithParams, boolean z10, boolean z11) {
        Class<?> rawParameterType = annotatedWithParams.getRawParameterType(0);
        if (rawParameterType == String.class || rawParameterType == CLASS_CHAR_SEQUENCE) {
            if (z10 || z11) {
                creatorCollector.addStringCreator(annotatedWithParams, z10);
            }
            return true;
        }
        if (rawParameterType == Integer.TYPE || rawParameterType == Integer.class) {
            if (z10 || z11) {
                creatorCollector.addIntCreator(annotatedWithParams, z10);
            }
            return true;
        }
        if (rawParameterType == Long.TYPE || rawParameterType == Long.class) {
            if (z10 || z11) {
                creatorCollector.addLongCreator(annotatedWithParams, z10);
            }
            return true;
        }
        if (rawParameterType == Double.TYPE || rawParameterType == Double.class) {
            if (z10 || z11) {
                creatorCollector.addDoubleCreator(annotatedWithParams, z10);
            }
            return true;
        }
        if (rawParameterType == Boolean.TYPE || rawParameterType == Boolean.class) {
            if (z10 || z11) {
                creatorCollector.addBooleanCreator(annotatedWithParams, z10);
            }
            return true;
        }
        if (rawParameterType == BigInteger.class && (z10 || z11)) {
            creatorCollector.addBigIntegerCreator(annotatedWithParams, z10);
        }
        if (rawParameterType == BigDecimal.class && (z10 || z11)) {
            creatorCollector.addBigDecimalCreator(annotatedWithParams, z10);
        }
        if (!z10) {
            return false;
        }
        creatorCollector.addDelegatingCreator(annotatedWithParams, z10, null, 0);
        return true;
    }

    protected boolean _hasCreatorAnnotation(DeserializationContext deserializationContext, Annotated annotated) {
        JsonCreator.Mode modeFindCreatorAnnotation;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        return (annotationIntrospector == null || (modeFindCreatorAnnotation = annotationIntrospector.findCreatorAnnotation(deserializationContext.getConfig(), annotated)) == null || modeFindCreatorAnnotation == JsonCreator.Mode.DISABLED) ? false : true;
    }

    protected CollectionType _mapAbstractCollectionType(JavaType javaType, DeserializationConfig deserializationConfig) {
        Class<?> clsFindCollectionFallback = ContainerDefaultMappings.findCollectionFallback(javaType);
        if (clsFindCollectionFallback != null) {
            return (CollectionType) deserializationConfig.getTypeFactory().constructSpecializedType(javaType, clsFindCollectionFallback, true);
        }
        return null;
    }

    protected MapType _mapAbstractMapType(JavaType javaType, DeserializationConfig deserializationConfig) {
        Class<?> clsFindMapFallback = ContainerDefaultMappings.findMapFallback(javaType);
        if (clsFindMapFallback != null) {
            return (MapType) deserializationConfig.getTypeFactory().constructSpecializedType(javaType, clsFindMapFallback, true);
        }
        return null;
    }

    protected void _reportUnwrappedCreatorProperty(DeserializationContext deserializationContext, BeanDescription beanDescription, AnnotatedParameter annotatedParameter) throws JsonMappingException {
        deserializationContext.reportBadTypeDefinition(beanDescription, "Cannot define Creator parameter %d as `@JsonUnwrapped`: combination not yet supported", Integer.valueOf(annotatedParameter.getIndex()));
    }

    public ValueInstantiator _valueInstantiatorInstance(DeserializationConfig deserializationConfig, Annotated annotated, Object obj) throws JsonMappingException {
        ValueInstantiator valueInstantiatorValueInstantiatorInstance;
        if (obj == null) {
            return null;
        }
        if (obj instanceof ValueInstantiator) {
            return (ValueInstantiator) obj;
        }
        if (!(obj instanceof Class)) {
            throw new IllegalStateException("AnnotationIntrospector returned key deserializer definition of type " + obj.getClass().getName() + "; expected type KeyDeserializer or Class<KeyDeserializer> instead");
        }
        Class<?> cls = (Class) obj;
        if (ClassUtil.isBogusClass(cls)) {
            return null;
        }
        if (ValueInstantiator.class.isAssignableFrom(cls)) {
            HandlerInstantiator handlerInstantiator = deserializationConfig.getHandlerInstantiator();
            return (handlerInstantiator == null || (valueInstantiatorValueInstantiatorInstance = handlerInstantiator.valueInstantiatorInstance(deserializationConfig, annotated, cls)) == null) ? (ValueInstantiator) ClassUtil.createInstance(cls, deserializationConfig.canOverrideAccessModifiers()) : valueInstantiatorValueInstantiatorInstance;
        }
        throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<ValueInstantiator>");
    }

    protected SettableBeanProperty constructCreatorProperty(DeserializationContext deserializationContext, BeanDescription beanDescription, PropertyName propertyName, int i10, AnnotatedParameter annotatedParameter, JacksonInject.Value value) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        PropertyMetadata propertyMetadataConstruct = annotationIntrospector == null ? PropertyMetadata.STD_REQUIRED_OR_OPTIONAL : PropertyMetadata.construct(annotationIntrospector.hasRequiredMarker(annotatedParameter), annotationIntrospector.findPropertyDescription(annotatedParameter), annotationIntrospector.findPropertyIndex(annotatedParameter), annotationIntrospector.findPropertyDefaultValue(annotatedParameter));
        JavaType javaTypeResolveMemberAndTypeAnnotations = resolveMemberAndTypeAnnotations(deserializationContext, annotatedParameter, annotatedParameter.getType());
        BeanProperty.Std std = new BeanProperty.Std(propertyName, javaTypeResolveMemberAndTypeAnnotations, annotationIntrospector.findWrapperName(annotatedParameter), annotatedParameter, propertyMetadataConstruct);
        TypeDeserializer typeDeserializerFindTypeDeserializer = (TypeDeserializer) javaTypeResolveMemberAndTypeAnnotations.getTypeHandler();
        if (typeDeserializerFindTypeDeserializer == null) {
            typeDeserializerFindTypeDeserializer = findTypeDeserializer(config, javaTypeResolveMemberAndTypeAnnotations);
        }
        CreatorProperty creatorPropertyConstruct = CreatorProperty.construct(propertyName, javaTypeResolveMemberAndTypeAnnotations, std.getWrapperName(), typeDeserializerFindTypeDeserializer, beanDescription.getClassAnnotations(), annotatedParameter, i10, value, _getSetterInfo(deserializationContext, std, propertyMetadataConstruct));
        JsonDeserializer<?> jsonDeserializerFindDeserializerFromAnnotation = findDeserializerFromAnnotation(deserializationContext, annotatedParameter);
        if (jsonDeserializerFindDeserializerFromAnnotation == null) {
            jsonDeserializerFindDeserializerFromAnnotation = (JsonDeserializer) javaTypeResolveMemberAndTypeAnnotations.getValueHandler();
        }
        return jsonDeserializerFindDeserializerFromAnnotation != null ? creatorPropertyConstruct.withValueDeserializer(deserializationContext.handlePrimaryContextualization(jsonDeserializerFindDeserializerFromAnnotation, creatorPropertyConstruct, javaTypeResolveMemberAndTypeAnnotations)) : creatorPropertyConstruct;
    }

    protected EnumResolver constructEnumResolver(Class<?> cls, DeserializationConfig deserializationConfig, AnnotatedMember annotatedMember) {
        if (annotatedMember == null) {
            return EnumResolver.constructFor(deserializationConfig, cls);
        }
        if (deserializationConfig.canOverrideAccessModifiers()) {
            ClassUtil.checkAndFixAccess(annotatedMember.getMember(), deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        return EnumResolver.constructUsingMethod(deserializationConfig, cls, annotatedMember);
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createArrayDeserializer(DeserializationContext deserializationContext, ArrayType arrayType, BeanDescription beanDescription) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        JavaType contentType = arrayType.getContentType();
        JsonDeserializer<?> jsonDeserializer = (JsonDeserializer) contentType.getValueHandler();
        TypeDeserializer typeDeserializerFindTypeDeserializer = (TypeDeserializer) contentType.getTypeHandler();
        if (typeDeserializerFindTypeDeserializer == null) {
            typeDeserializerFindTypeDeserializer = findTypeDeserializer(config, contentType);
        }
        TypeDeserializer typeDeserializer = typeDeserializerFindTypeDeserializer;
        JsonDeserializer<?> jsonDeserializer_findCustomArrayDeserializer = _findCustomArrayDeserializer(arrayType, config, beanDescription, typeDeserializer, jsonDeserializer);
        if (jsonDeserializer_findCustomArrayDeserializer == null) {
            if (jsonDeserializer == null) {
                Class<?> rawClass = contentType.getRawClass();
                if (contentType.isPrimitive()) {
                    return PrimitiveArrayDeserializers.forType(rawClass);
                }
                if (rawClass == String.class) {
                    return StringArrayDeserializer.instance;
                }
            }
            jsonDeserializer_findCustomArrayDeserializer = new ObjectArrayDeserializer(arrayType, jsonDeserializer, typeDeserializer);
        }
        if (this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
            while (it2.hasNext()) {
                jsonDeserializer_findCustomArrayDeserializer = it2.next().modifyArrayDeserializer(config, arrayType, beanDescription, jsonDeserializer_findCustomArrayDeserializer);
            }
        }
        return jsonDeserializer_findCustomArrayDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createCollectionDeserializer(DeserializationContext deserializationContext, CollectionType collectionType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType contentType = collectionType.getContentType();
        JsonDeserializer<?> jsonDeserializer = (JsonDeserializer) contentType.getValueHandler();
        DeserializationConfig config = deserializationContext.getConfig();
        TypeDeserializer typeDeserializerFindTypeDeserializer = (TypeDeserializer) contentType.getTypeHandler();
        if (typeDeserializerFindTypeDeserializer == null) {
            typeDeserializerFindTypeDeserializer = findTypeDeserializer(config, contentType);
        }
        TypeDeserializer typeDeserializer = typeDeserializerFindTypeDeserializer;
        JsonDeserializer<?> jsonDeserializer_findCustomCollectionDeserializer = _findCustomCollectionDeserializer(collectionType, config, beanDescription, typeDeserializer, jsonDeserializer);
        if (jsonDeserializer_findCustomCollectionDeserializer == null) {
            Class<?> rawClass = collectionType.getRawClass();
            if (jsonDeserializer == null && EnumSet.class.isAssignableFrom(rawClass)) {
                jsonDeserializer_findCustomCollectionDeserializer = new EnumSetDeserializer(contentType, null);
            }
        }
        if (jsonDeserializer_findCustomCollectionDeserializer == null) {
            if (collectionType.isInterface() || collectionType.isAbstract()) {
                CollectionType collectionType_mapAbstractCollectionType = _mapAbstractCollectionType(collectionType, config);
                if (collectionType_mapAbstractCollectionType != null) {
                    beanDescription = config.introspectForCreation(collectionType_mapAbstractCollectionType);
                    collectionType = collectionType_mapAbstractCollectionType;
                } else {
                    if (collectionType.getTypeHandler() == null) {
                        throw new IllegalArgumentException("Cannot find a deserializer for non-concrete Collection type " + collectionType);
                    }
                    jsonDeserializer_findCustomCollectionDeserializer = AbstractDeserializer.constructForNonPOJO(beanDescription);
                }
            }
            if (jsonDeserializer_findCustomCollectionDeserializer == null) {
                ValueInstantiator valueInstantiatorFindValueInstantiator = findValueInstantiator(deserializationContext, beanDescription);
                if (!valueInstantiatorFindValueInstantiator.canCreateUsingDefault()) {
                    if (collectionType.hasRawClass(ArrayBlockingQueue.class)) {
                        return new ArrayBlockingQueueDeserializer(collectionType, jsonDeserializer, typeDeserializer, valueInstantiatorFindValueInstantiator);
                    }
                    JsonDeserializer<?> jsonDeserializerFindForCollection = JavaUtilCollectionsDeserializers.findForCollection(deserializationContext, collectionType);
                    if (jsonDeserializerFindForCollection != null) {
                        return jsonDeserializerFindForCollection;
                    }
                }
                jsonDeserializer_findCustomCollectionDeserializer = contentType.hasRawClass(String.class) ? new StringCollectionDeserializer(collectionType, jsonDeserializer, valueInstantiatorFindValueInstantiator) : new CollectionDeserializer(collectionType, jsonDeserializer, typeDeserializer, valueInstantiatorFindValueInstantiator);
            }
        }
        if (this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
            while (it2.hasNext()) {
                jsonDeserializer_findCustomCollectionDeserializer = it2.next().modifyCollectionDeserializer(config, collectionType, beanDescription, jsonDeserializer_findCustomCollectionDeserializer);
            }
        }
        return jsonDeserializer_findCustomCollectionDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createCollectionLikeDeserializer(DeserializationContext deserializationContext, CollectionLikeType collectionLikeType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType contentType = collectionLikeType.getContentType();
        JsonDeserializer<?> jsonDeserializer = (JsonDeserializer) contentType.getValueHandler();
        DeserializationConfig config = deserializationContext.getConfig();
        TypeDeserializer typeDeserializer = (TypeDeserializer) contentType.getTypeHandler();
        JsonDeserializer<?> jsonDeserializer_findCustomCollectionLikeDeserializer = _findCustomCollectionLikeDeserializer(collectionLikeType, config, beanDescription, typeDeserializer == null ? findTypeDeserializer(config, contentType) : typeDeserializer, jsonDeserializer);
        if (jsonDeserializer_findCustomCollectionLikeDeserializer != null && this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
            while (it2.hasNext()) {
                jsonDeserializer_findCustomCollectionLikeDeserializer = it2.next().modifyCollectionLikeDeserializer(config, collectionLikeType, beanDescription, jsonDeserializer_findCustomCollectionLikeDeserializer);
            }
        }
        return jsonDeserializer_findCustomCollectionLikeDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createEnumDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        Class<?> rawClass = javaType.getRawClass();
        JsonDeserializer<?> jsonDeserializer_findCustomEnumDeserializer = _findCustomEnumDeserializer(rawClass, config, beanDescription);
        if (jsonDeserializer_findCustomEnumDeserializer == null) {
            if (rawClass == Enum.class) {
                return AbstractDeserializer.constructForNonPOJO(beanDescription);
            }
            ValueInstantiator valueInstantiator_constructDefaultValueInstantiator = _constructDefaultValueInstantiator(deserializationContext, beanDescription);
            SettableBeanProperty[] fromObjectArguments = valueInstantiator_constructDefaultValueInstantiator == null ? null : valueInstantiator_constructDefaultValueInstantiator.getFromObjectArguments(deserializationContext.getConfig());
            for (AnnotatedMethod annotatedMethod : beanDescription.getFactoryMethods()) {
                if (_hasCreatorAnnotation(deserializationContext, annotatedMethod)) {
                    if (annotatedMethod.getParameterCount() != 0) {
                        if (!annotatedMethod.getRawReturnType().isAssignableFrom(rawClass)) {
                            deserializationContext.reportBadDefinition(javaType, String.format("Invalid `@JsonCreator` annotated Enum factory method [%s]: needs to return compatible type", annotatedMethod.toString()));
                        }
                        jsonDeserializer_findCustomEnumDeserializer = EnumDeserializer.deserializerForCreator(config, rawClass, annotatedMethod, valueInstantiator_constructDefaultValueInstantiator, fromObjectArguments);
                        break;
                    }
                    jsonDeserializer_findCustomEnumDeserializer = EnumDeserializer.deserializerForNoArgsCreator(config, rawClass, annotatedMethod);
                    break;
                }
            }
            if (jsonDeserializer_findCustomEnumDeserializer == null) {
                jsonDeserializer_findCustomEnumDeserializer = new EnumDeserializer(constructEnumResolver(rawClass, config, beanDescription.findJsonValueAccessor()), Boolean.valueOf(config.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_ENUMS)));
            }
        }
        if (this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
            while (it2.hasNext()) {
                jsonDeserializer_findCustomEnumDeserializer = it2.next().modifyEnumDeserializer(config, javaType, beanDescription, jsonDeserializer_findCustomEnumDeserializer);
            }
        }
        return jsonDeserializer_findCustomEnumDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public KeyDeserializer createKeyDeserializer(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        BeanDescription beanDescriptionIntrospectClassAnnotations;
        DeserializationConfig config = deserializationContext.getConfig();
        KeyDeserializer keyDeserializerModifyKeyDeserializer = null;
        if (this._factoryConfig.hasKeyDeserializers()) {
            beanDescriptionIntrospectClassAnnotations = config.introspectClassAnnotations(javaType);
            Iterator<KeyDeserializers> it2 = this._factoryConfig.keyDeserializers().iterator();
            while (it2.hasNext() && (keyDeserializerModifyKeyDeserializer = it2.next().findKeyDeserializer(javaType, config, beanDescriptionIntrospectClassAnnotations)) == null) {
            }
        } else {
            beanDescriptionIntrospectClassAnnotations = null;
        }
        if (keyDeserializerModifyKeyDeserializer == null) {
            if (beanDescriptionIntrospectClassAnnotations == null) {
                beanDescriptionIntrospectClassAnnotations = config.introspectClassAnnotations(javaType.getRawClass());
            }
            keyDeserializerModifyKeyDeserializer = findKeyDeserializerFromAnnotation(deserializationContext, beanDescriptionIntrospectClassAnnotations.getClassInfo());
            if (keyDeserializerModifyKeyDeserializer == null) {
                keyDeserializerModifyKeyDeserializer = javaType.isEnumType() ? _createEnumKeyDeserializer(deserializationContext, javaType) : StdKeyDeserializers.findStringBasedKeyDeserializer(config, javaType);
            }
        }
        if (keyDeserializerModifyKeyDeserializer != null && this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it3 = this._factoryConfig.deserializerModifiers().iterator();
            while (it3.hasNext()) {
                keyDeserializerModifyKeyDeserializer = it3.next().modifyKeyDeserializer(config, javaType, keyDeserializerModifyKeyDeserializer);
            }
        }
        return keyDeserializerModifyKeyDeserializer;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x0111  */
    /* JADX WARN: Code duplicated, block: B:57:0x0121 A[LOOP:0: B:55:0x011b->B:57:0x0121, LOOP_END] */
    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createMapDeserializer(DeserializationContext deserializationContext, MapType mapType, BeanDescription beanDescription) throws JsonMappingException {
        BeanDescription beanDescriptionIntrospectForCreation;
        MapType mapType_mapAbstractMapType;
        JsonDeserializer<?> jsonDeserializerModifyMapDeserializer;
        Iterator<BeanDeserializerModifier> it2;
        JsonDeserializer<?> jsonDeserializerConstructForNonPOJO;
        JsonDeserializer<?> jsonDeserializer;
        ValueInstantiator valueInstantiatorFindValueInstantiator;
        EnumMapDeserializer enumMapDeserializer;
        DeserializationConfig config = deserializationContext.getConfig();
        JavaType keyType = mapType.getKeyType();
        JavaType contentType = mapType.getContentType();
        JsonDeserializer<?> jsonDeserializer2 = (JsonDeserializer) contentType.getValueHandler();
        KeyDeserializer keyDeserializer = (KeyDeserializer) keyType.getValueHandler();
        TypeDeserializer typeDeserializer = (TypeDeserializer) contentType.getTypeHandler();
        TypeDeserializer typeDeserializerFindTypeDeserializer = typeDeserializer == null ? findTypeDeserializer(config, contentType) : typeDeserializer;
        JsonDeserializer<?> jsonDeserializer_findCustomMapDeserializer = _findCustomMapDeserializer(mapType, config, beanDescription, keyDeserializer, typeDeserializerFindTypeDeserializer, jsonDeserializer2);
        if (jsonDeserializer_findCustomMapDeserializer == null) {
            Class<?> rawClass = mapType.getRawClass();
            if (EnumMap.class.isAssignableFrom(rawClass)) {
                if (rawClass == EnumMap.class) {
                    beanDescriptionIntrospectForCreation = beanDescription;
                    valueInstantiatorFindValueInstantiator = null;
                } else {
                    beanDescriptionIntrospectForCreation = beanDescription;
                    valueInstantiatorFindValueInstantiator = findValueInstantiator(deserializationContext, beanDescriptionIntrospectForCreation);
                }
                if (!keyType.isEnumImplType()) {
                    throw new IllegalArgumentException("Cannot construct EnumMap; generic (key) type not available");
                }
                enumMapDeserializer = new EnumMapDeserializer(mapType, valueInstantiatorFindValueInstantiator, null, jsonDeserializer2, typeDeserializerFindTypeDeserializer, null);
            } else {
                beanDescriptionIntrospectForCreation = beanDescription;
            }
            if (jsonDeserializer_findCustomMapDeserializer == null) {
                jsonDeserializer_findCustomMapDeserializer = jsonDeserializer_findCustomMapDeserializer;
                if (mapType.isInterface() || mapType.isAbstract()) {
                    jsonDeserializer_findCustomMapDeserializer = enumMapDeserializer;
                    jsonDeserializer_findCustomMapDeserializer = enumMapDeserializer;
                    mapType_mapAbstractMapType = _mapAbstractMapType(mapType, config);
                    if (mapType_mapAbstractMapType != null) {
                        mapType_mapAbstractMapType.getRawClass();
                        beanDescriptionIntrospectForCreation = config.introspectForCreation(mapType_mapAbstractMapType);
                        jsonDeserializerConstructForNonPOJO = jsonDeserializer_findCustomMapDeserializer;
                    } else {
                        if (mapType.getTypeHandler() == null) {
                            throw new IllegalArgumentException("Cannot find a deserializer for non-concrete Map type " + mapType);
                        }
                        mapType_mapAbstractMapType = mapType;
                        jsonDeserializerConstructForNonPOJO = AbstractDeserializer.constructForNonPOJO(beanDescription);
                    }
                    jsonDeserializer = jsonDeserializerConstructForNonPOJO;
                } else {
                    JsonDeserializer<?> jsonDeserializerFindForMap = JavaUtilCollectionsDeserializers.findForMap(deserializationContext, mapType);
                    if (jsonDeserializerFindForMap != null) {
                        jsonDeserializer_findCustomMapDeserializer = enumMapDeserializer;
                        return jsonDeserializerFindForMap;
                    }
                    jsonDeserializer_findCustomMapDeserializer = enumMapDeserializer;
                    jsonDeserializer = jsonDeserializerFindForMap;
                    mapType_mapAbstractMapType = mapType;
                }
                BeanDescription beanDescription2 = beanDescriptionIntrospectForCreation;
                JsonDeserializer<?> jsonDeserializer3 = jsonDeserializer;
                if (jsonDeserializer == null) {
                    MapDeserializer mapDeserializer = new MapDeserializer(mapType_mapAbstractMapType, findValueInstantiator(deserializationContext, beanDescription2), keyDeserializer, jsonDeserializer2, typeDeserializerFindTypeDeserializer);
                    JsonIgnoreProperties.Value defaultPropertyIgnorals = config.getDefaultPropertyIgnorals(Map.class, beanDescription2.getClassInfo());
                    mapDeserializer.setIgnorableProperties(defaultPropertyIgnorals == null ? null : defaultPropertyIgnorals.findIgnoredForDeserialization());
                    JsonIncludeProperties.Value defaultPropertyInclusions = config.getDefaultPropertyInclusions(Map.class, beanDescription2.getClassInfo());
                    mapDeserializer.setIncludableProperties(defaultPropertyInclusions != null ? defaultPropertyInclusions.getIncluded() : null);
                    jsonDeserializer3 = mapDeserializer;
                }
                beanDescriptionIntrospectForCreation = beanDescription2;
                jsonDeserializerModifyMapDeserializer = jsonDeserializer3;
            }
            if (this._factoryConfig.hasDeserializerModifiers()) {
                it2 = this._factoryConfig.deserializerModifiers().iterator();
                jsonDeserializerModifyMapDeserializer = jsonDeserializerModifyMapDeserializer;
                while (it2.hasNext()) {
                    jsonDeserializerModifyMapDeserializer = it2.next().modifyMapDeserializer(config, mapType_mapAbstractMapType, beanDescriptionIntrospectForCreation, jsonDeserializerModifyMapDeserializer);
                }
            }
            return jsonDeserializerModifyMapDeserializer;
        }
        beanDescriptionIntrospectForCreation = beanDescription;
        jsonDeserializer_findCustomMapDeserializer = jsonDeserializer_findCustomMapDeserializer;
        jsonDeserializer_findCustomMapDeserializer = enumMapDeserializer;
        mapType_mapAbstractMapType = mapType;
        jsonDeserializerModifyMapDeserializer = jsonDeserializer_findCustomMapDeserializer;
        if (this._factoryConfig.hasDeserializerModifiers()) {
            it2 = this._factoryConfig.deserializerModifiers().iterator();
            jsonDeserializerModifyMapDeserializer = jsonDeserializerModifyMapDeserializer;
            while (it2.hasNext()) {
                jsonDeserializerModifyMapDeserializer = it2.next().modifyMapDeserializer(config, mapType_mapAbstractMapType, beanDescriptionIntrospectForCreation, jsonDeserializerModifyMapDeserializer);
            }
        }
        return jsonDeserializerModifyMapDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createMapLikeDeserializer(DeserializationContext deserializationContext, MapLikeType mapLikeType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType keyType = mapLikeType.getKeyType();
        JavaType contentType = mapLikeType.getContentType();
        DeserializationConfig config = deserializationContext.getConfig();
        JsonDeserializer<?> jsonDeserializer = (JsonDeserializer) contentType.getValueHandler();
        KeyDeserializer keyDeserializer = (KeyDeserializer) keyType.getValueHandler();
        TypeDeserializer typeDeserializerFindTypeDeserializer = (TypeDeserializer) contentType.getTypeHandler();
        if (typeDeserializerFindTypeDeserializer == null) {
            typeDeserializerFindTypeDeserializer = findTypeDeserializer(config, contentType);
        }
        JsonDeserializer<?> jsonDeserializer_findCustomMapLikeDeserializer = _findCustomMapLikeDeserializer(mapLikeType, config, beanDescription, keyDeserializer, typeDeserializerFindTypeDeserializer, jsonDeserializer);
        if (jsonDeserializer_findCustomMapLikeDeserializer != null && this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
            while (it2.hasNext()) {
                jsonDeserializer_findCustomMapLikeDeserializer = it2.next().modifyMapLikeDeserializer(config, mapLikeType, beanDescription, jsonDeserializer_findCustomMapLikeDeserializer);
            }
        }
        return jsonDeserializer_findCustomMapLikeDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createReferenceDeserializer(DeserializationContext deserializationContext, ReferenceType referenceType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType contentType = referenceType.getContentType();
        JsonDeserializer<?> jsonDeserializer = (JsonDeserializer) contentType.getValueHandler();
        DeserializationConfig config = deserializationContext.getConfig();
        TypeDeserializer typeDeserializerFindTypeDeserializer = (TypeDeserializer) contentType.getTypeHandler();
        if (typeDeserializerFindTypeDeserializer == null) {
            typeDeserializerFindTypeDeserializer = findTypeDeserializer(config, contentType);
        }
        TypeDeserializer typeDeserializer = typeDeserializerFindTypeDeserializer;
        JsonDeserializer<?> jsonDeserializer_findCustomReferenceDeserializer = _findCustomReferenceDeserializer(referenceType, config, beanDescription, typeDeserializer, jsonDeserializer);
        if (jsonDeserializer_findCustomReferenceDeserializer == null && referenceType.isTypeOrSubTypeOf(AtomicReference.class)) {
            return new AtomicReferenceDeserializer(referenceType, referenceType.getRawClass() == AtomicReference.class ? null : findValueInstantiator(deserializationContext, beanDescription), typeDeserializer, jsonDeserializer);
        }
        if (jsonDeserializer_findCustomReferenceDeserializer != null && this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
            while (it2.hasNext()) {
                jsonDeserializer_findCustomReferenceDeserializer = it2.next().modifyReferenceDeserializer(config, referenceType, beanDescription, jsonDeserializer_findCustomReferenceDeserializer);
            }
        }
        return jsonDeserializer_findCustomReferenceDeserializer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createTreeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        Class<?> rawClass = javaType.getRawClass();
        JsonDeserializer<?> jsonDeserializer_findCustomTreeNodeDeserializer = _findCustomTreeNodeDeserializer(rawClass, deserializationConfig, beanDescription);
        return jsonDeserializer_findCustomTreeNodeDeserializer != null ? jsonDeserializer_findCustomTreeNodeDeserializer : JsonNodeDeserializer.getDeserializer(rawClass);
    }

    protected JsonDeserializer<Object> findContentDeserializerFromAnnotation(DeserializationContext deserializationContext, Annotated annotated) throws JsonMappingException {
        Object objFindContentDeserializer;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null || (objFindContentDeserializer = annotationIntrospector.findContentDeserializer(annotated)) == null) {
            return null;
        }
        return deserializationContext.deserializerInstance(annotated, objFindContentDeserializer);
    }

    public JsonDeserializer<?> findDefaultDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType javaType_findRemappedType;
        JavaType javaType_findRemappedType2;
        Class<?> rawClass = javaType.getRawClass();
        if (rawClass == CLASS_OBJECT || rawClass == CLASS_SERIALIZABLE) {
            DeserializationConfig config = deserializationContext.getConfig();
            if (this._factoryConfig.hasAbstractTypeResolvers()) {
                javaType_findRemappedType = _findRemappedType(config, List.class);
                javaType_findRemappedType2 = _findRemappedType(config, Map.class);
            } else {
                javaType_findRemappedType = null;
                javaType_findRemappedType2 = null;
            }
            return new UntypedObjectDeserializer(javaType_findRemappedType, javaType_findRemappedType2);
        }
        if (rawClass == CLASS_STRING || rawClass == CLASS_CHAR_SEQUENCE) {
            return StringDeserializer.instance;
        }
        Class<?> cls = CLASS_ITERABLE;
        if (rawClass == cls) {
            TypeFactory typeFactory = deserializationContext.getTypeFactory();
            JavaType[] javaTypeArrFindTypeParameters = typeFactory.findTypeParameters(javaType, cls);
            return createCollectionDeserializer(deserializationContext, typeFactory.constructCollectionType(Collection.class, (javaTypeArrFindTypeParameters == null || javaTypeArrFindTypeParameters.length != 1) ? TypeFactory.unknownType() : javaTypeArrFindTypeParameters[0]), beanDescription);
        }
        if (rawClass == CLASS_MAP_ENTRY) {
            JavaType javaTypeContainedTypeOrUnknown = javaType.containedTypeOrUnknown(0);
            JavaType javaTypeContainedTypeOrUnknown2 = javaType.containedTypeOrUnknown(1);
            TypeDeserializer typeDeserializerFindTypeDeserializer = (TypeDeserializer) javaTypeContainedTypeOrUnknown2.getTypeHandler();
            if (typeDeserializerFindTypeDeserializer == null) {
                typeDeserializerFindTypeDeserializer = findTypeDeserializer(deserializationContext.getConfig(), javaTypeContainedTypeOrUnknown2);
            }
            return new MapEntryDeserializer(javaType, (KeyDeserializer) javaTypeContainedTypeOrUnknown.getValueHandler(), (JsonDeserializer<Object>) javaTypeContainedTypeOrUnknown2.getValueHandler(), typeDeserializerFindTypeDeserializer);
        }
        String name = rawClass.getName();
        if (rawClass.isPrimitive() || name.startsWith("java.")) {
            JsonDeserializer<?> jsonDeserializerFind = NumberDeserializers.find(rawClass, name);
            if (jsonDeserializerFind == null) {
                jsonDeserializerFind = DateDeserializers.find(rawClass, name);
            }
            if (jsonDeserializerFind != null) {
                return jsonDeserializerFind;
            }
        }
        if (rawClass == TokenBuffer.class) {
            return new TokenBufferDeserializer();
        }
        JsonDeserializer<?> jsonDeserializerFindOptionalStdDeserializer = findOptionalStdDeserializer(deserializationContext, javaType, beanDescription);
        return jsonDeserializerFindOptionalStdDeserializer != null ? jsonDeserializerFindOptionalStdDeserializer : JdkDeserializers.find(rawClass, name);
    }

    protected JsonDeserializer<Object> findDeserializerFromAnnotation(DeserializationContext deserializationContext, Annotated annotated) throws JsonMappingException {
        Object objFindDeserializer;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null || (objFindDeserializer = annotationIntrospector.findDeserializer(annotated)) == null) {
            return null;
        }
        return deserializationContext.deserializerInstance(annotated, objFindDeserializer);
    }

    protected KeyDeserializer findKeyDeserializerFromAnnotation(DeserializationContext deserializationContext, Annotated annotated) throws JsonMappingException {
        Object objFindKeyDeserializer;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null || (objFindKeyDeserializer = annotationIntrospector.findKeyDeserializer(annotated)) == null) {
            return null;
        }
        return deserializationContext.keyDeserializerInstance(annotated, objFindKeyDeserializer);
    }

    protected JsonDeserializer<?> findOptionalStdDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        return OptionalHandlerFactory.instance.findDeserializer(javaType, deserializationContext.getConfig(), beanDescription);
    }

    public TypeDeserializer findPropertyContentTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, AnnotatedMember annotatedMember) throws JsonMappingException {
        TypeResolverBuilder<?> typeResolverBuilderFindPropertyContentTypeResolver = deserializationConfig.getAnnotationIntrospector().findPropertyContentTypeResolver(deserializationConfig, annotatedMember, javaType);
        JavaType contentType = javaType.getContentType();
        return typeResolverBuilderFindPropertyContentTypeResolver == null ? findTypeDeserializer(deserializationConfig, contentType) : typeResolverBuilderFindPropertyContentTypeResolver.buildTypeDeserializer(deserializationConfig, contentType, deserializationConfig.getSubtypeResolver().collectAndResolveSubtypesByTypeId(deserializationConfig, annotatedMember, contentType));
    }

    public TypeDeserializer findPropertyTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, AnnotatedMember annotatedMember) throws JsonMappingException {
        TypeResolverBuilder<?> typeResolverBuilderFindPropertyTypeResolver = deserializationConfig.getAnnotationIntrospector().findPropertyTypeResolver(deserializationConfig, annotatedMember, javaType);
        if (typeResolverBuilderFindPropertyTypeResolver == null) {
            return findTypeDeserializer(deserializationConfig, javaType);
        }
        try {
            return typeResolverBuilderFindPropertyTypeResolver.buildTypeDeserializer(deserializationConfig, javaType, deserializationConfig.getSubtypeResolver().collectAndResolveSubtypesByTypeId(deserializationConfig, annotatedMember, javaType));
        } catch (IllegalArgumentException e10) {
            InvalidDefinitionException invalidDefinitionExceptionFrom = InvalidDefinitionException.from((JsonParser) null, ClassUtil.exceptionMessage(e10), javaType);
            invalidDefinitionExceptionFrom.initCause(e10);
            throw invalidDefinitionExceptionFrom;
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public TypeDeserializer findTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType) throws JsonMappingException {
        Collection<NamedType> collectionCollectAndResolveSubtypesByTypeId;
        JavaType javaTypeMapAbstractType;
        AnnotatedClass classInfo = deserializationConfig.introspectClassAnnotations(javaType.getRawClass()).getClassInfo();
        TypeResolverBuilder<?> typeResolverBuilderFindTypeResolver = deserializationConfig.getAnnotationIntrospector().findTypeResolver(deserializationConfig, classInfo, javaType);
        if (typeResolverBuilderFindTypeResolver == null) {
            typeResolverBuilderFindTypeResolver = deserializationConfig.getDefaultTyper(javaType);
            if (typeResolverBuilderFindTypeResolver == null) {
                return null;
            }
            collectionCollectAndResolveSubtypesByTypeId = null;
        } else {
            collectionCollectAndResolveSubtypesByTypeId = deserializationConfig.getSubtypeResolver().collectAndResolveSubtypesByTypeId(deserializationConfig, classInfo);
        }
        if (typeResolverBuilderFindTypeResolver.getDefaultImpl() == null && javaType.isAbstract() && (javaTypeMapAbstractType = mapAbstractType(deserializationConfig, javaType)) != null && !javaTypeMapAbstractType.hasRawClass(javaType.getRawClass())) {
            typeResolverBuilderFindTypeResolver = typeResolverBuilderFindTypeResolver.defaultImpl(javaTypeMapAbstractType.getRawClass());
        }
        try {
            return typeResolverBuilderFindTypeResolver.buildTypeDeserializer(deserializationConfig, javaType, collectionCollectAndResolveSubtypesByTypeId);
        } catch (IllegalArgumentException e10) {
            InvalidDefinitionException invalidDefinitionExceptionFrom = InvalidDefinitionException.from((JsonParser) null, ClassUtil.exceptionMessage(e10), javaType);
            invalidDefinitionExceptionFrom.initCause(e10);
            throw invalidDefinitionExceptionFrom;
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public ValueInstantiator findValueInstantiator(DeserializationContext deserializationContext, BeanDescription beanDescription) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        AnnotatedClass classInfo = beanDescription.getClassInfo();
        Object objFindValueInstantiator = deserializationContext.getAnnotationIntrospector().findValueInstantiator(classInfo);
        ValueInstantiator valueInstantiator_valueInstantiatorInstance = objFindValueInstantiator != null ? _valueInstantiatorInstance(config, classInfo, objFindValueInstantiator) : null;
        if (valueInstantiator_valueInstantiatorInstance == null && (valueInstantiator_valueInstantiatorInstance = JDKValueInstantiators.findStdValueInstantiator(config, beanDescription.getBeanClass())) == null) {
            valueInstantiator_valueInstantiatorInstance = _constructDefaultValueInstantiator(deserializationContext, beanDescription);
        }
        if (this._factoryConfig.hasValueInstantiators()) {
            for (ValueInstantiators valueInstantiators : this._factoryConfig.valueInstantiators()) {
                valueInstantiator_valueInstantiatorInstance = valueInstantiators.findValueInstantiator(config, beanDescription, valueInstantiator_valueInstantiatorInstance);
                if (valueInstantiator_valueInstantiatorInstance == null) {
                    deserializationContext.reportBadTypeDefinition(beanDescription, "Broken registered ValueInstantiators (of type %s): returned null ValueInstantiator", valueInstantiators.getClass().getName());
                }
            }
        }
        return valueInstantiator_valueInstantiatorInstance != null ? valueInstantiator_valueInstantiatorInstance.createContextual(deserializationContext, beanDescription) : valueInstantiator_valueInstantiatorInstance;
    }

    public DeserializerFactoryConfig getFactoryConfig() {
        return this._factoryConfig;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public boolean hasExplicitDeserializerFor(DeserializationConfig deserializationConfig, Class<?> cls) {
        while (cls.isArray()) {
            cls = cls.getComponentType();
        }
        if (Enum.class.isAssignableFrom(cls)) {
            return true;
        }
        String name = cls.getName();
        if (!name.startsWith("java.")) {
            if (name.startsWith("com.fasterxml.")) {
                return JsonNode.class.isAssignableFrom(cls) || cls == TokenBuffer.class;
            }
            return OptionalHandlerFactory.instance.hasDeserializerFor(cls);
        }
        if (Collection.class.isAssignableFrom(cls) || Map.class.isAssignableFrom(cls)) {
            return true;
        }
        if (Number.class.isAssignableFrom(cls)) {
            return NumberDeserializers.find(cls, name) != null;
        }
        return JdkDeserializers.hasDeserializerFor(cls) || cls == CLASS_STRING || cls == Boolean.class || cls == EnumMap.class || cls == AtomicReference.class || DateDeserializers.hasDeserializerFor(cls);
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JavaType mapAbstractType(DeserializationConfig deserializationConfig, JavaType javaType) throws JsonMappingException {
        while (true) {
            JavaType javaType_mapAbstractType2 = _mapAbstractType2(deserializationConfig, javaType);
            if (javaType_mapAbstractType2 == null) {
                return javaType;
            }
            Class<?> rawClass = javaType.getRawClass();
            Class<?> rawClass2 = javaType_mapAbstractType2.getRawClass();
            if (rawClass == rawClass2 || !rawClass.isAssignableFrom(rawClass2)) {
                throw new IllegalArgumentException("Invalid abstract type resolution from " + javaType + " to " + javaType_mapAbstractType2 + ": latter is not a subtype of former");
            }
            javaType = javaType_mapAbstractType2;
        }
    }

    @Deprecated
    protected JavaType modifyTypeByAnnotation(DeserializationContext deserializationContext, Annotated annotated, JavaType javaType) throws JsonMappingException {
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        return annotationIntrospector == null ? javaType : annotationIntrospector.refineDeserializationType(deserializationContext.getConfig(), annotated, javaType);
    }

    protected JavaType resolveMemberAndTypeAnnotations(DeserializationContext deserializationContext, AnnotatedMember annotatedMember, JavaType javaType) throws JsonMappingException {
        KeyDeserializer keyDeserializerKeyDeserializerInstance;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null) {
            return javaType;
        }
        if (javaType.isMapLikeType() && javaType.getKeyType() != null && (keyDeserializerKeyDeserializerInstance = deserializationContext.keyDeserializerInstance(annotatedMember, annotationIntrospector.findKeyDeserializer(annotatedMember))) != null) {
            javaType = ((MapLikeType) javaType).withKeyValueHandler(keyDeserializerKeyDeserializerInstance);
            javaType.getKeyType();
        }
        if (javaType.hasContentType()) {
            JsonDeserializer<Object> jsonDeserializerDeserializerInstance = deserializationContext.deserializerInstance(annotatedMember, annotationIntrospector.findContentDeserializer(annotatedMember));
            if (jsonDeserializerDeserializerInstance != null) {
                javaType = javaType.withContentValueHandler(jsonDeserializerDeserializerInstance);
            }
            TypeDeserializer typeDeserializerFindPropertyContentTypeDeserializer = findPropertyContentTypeDeserializer(deserializationContext.getConfig(), javaType, annotatedMember);
            if (typeDeserializerFindPropertyContentTypeDeserializer != null) {
                javaType = javaType.withContentTypeHandler(typeDeserializerFindPropertyContentTypeDeserializer);
            }
        }
        TypeDeserializer typeDeserializerFindPropertyTypeDeserializer = findPropertyTypeDeserializer(deserializationContext.getConfig(), javaType, annotatedMember);
        if (typeDeserializerFindPropertyTypeDeserializer != null) {
            javaType = javaType.withTypeHandler(typeDeserializerFindPropertyTypeDeserializer);
        }
        return annotationIntrospector.refineDeserializationType(deserializationContext.getConfig(), annotatedMember, javaType);
    }

    @Deprecated
    protected JavaType resolveType(DeserializationContext deserializationContext, BeanDescription beanDescription, JavaType javaType, AnnotatedMember annotatedMember) throws JsonMappingException {
        return resolveMemberAndTypeAnnotations(deserializationContext, annotatedMember, javaType);
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public final DeserializerFactory withAbstractTypeResolver(AbstractTypeResolver abstractTypeResolver) {
        return withConfig(this._factoryConfig.withAbstractTypeResolver(abstractTypeResolver));
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public final DeserializerFactory withAdditionalDeserializers(Deserializers deserializers) {
        return withConfig(this._factoryConfig.withAdditionalDeserializers(deserializers));
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public final DeserializerFactory withAdditionalKeyDeserializers(KeyDeserializers keyDeserializers) {
        return withConfig(this._factoryConfig.withAdditionalKeyDeserializers(keyDeserializers));
    }

    protected abstract DeserializerFactory withConfig(DeserializerFactoryConfig deserializerFactoryConfig);

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public final DeserializerFactory withDeserializerModifier(BeanDeserializerModifier beanDeserializerModifier) {
        return withConfig(this._factoryConfig.withDeserializerModifier(beanDeserializerModifier));
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public final DeserializerFactory withValueInstantiators(ValueInstantiators valueInstantiators) {
        return withConfig(this._factoryConfig.withValueInstantiators(valueInstantiators));
    }

    protected void _addExplicitAnyCreator(DeserializationContext deserializationContext, BeanDescription beanDescription, CreatorCollector creatorCollector, CreatorCandidate creatorCandidate, ConstructorDetector constructorDetector) throws JsonMappingException {
        PropertyName propertyNameParamName;
        boolean z10;
        int iFindOnlyParamWithoutInjection;
        if (1 != creatorCandidate.paramCount()) {
            if (!constructorDetector.singleArgCreatorDefaultsToProperties() && (iFindOnlyParamWithoutInjection = creatorCandidate.findOnlyParamWithoutInjection()) >= 0 && (constructorDetector.singleArgCreatorDefaultsToDelegating() || creatorCandidate.paramName(iFindOnlyParamWithoutInjection) == null)) {
                _addExplicitDelegatingCreator(deserializationContext, beanDescription, creatorCollector, creatorCandidate);
                return;
            } else {
                _addExplicitPropertyCreator(deserializationContext, beanDescription, creatorCollector, creatorCandidate);
                return;
            }
        }
        AnnotatedParameter annotatedParameterParameter = creatorCandidate.parameter(0);
        JacksonInject.Value valueInjection = creatorCandidate.injection(0);
        int i10 = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$databind$cfg$ConstructorDetector$SingleArgConstructor[constructorDetector.singleArgMode().ordinal()];
        if (i10 == 1) {
            propertyNameParamName = null;
            z10 = false;
        } else if (i10 == 2) {
            propertyNameParamName = creatorCandidate.paramName(0);
            z10 = true;
        } else if (i10 != 3) {
            BeanPropertyDefinition beanPropertyDefinitionPropertyDef = creatorCandidate.propertyDef(0);
            PropertyName propertyNameExplicitParamName = creatorCandidate.explicitParamName(0);
            z10 = (propertyNameExplicitParamName == null && valueInjection == null) ? false : true;
            if (!z10 && beanPropertyDefinitionPropertyDef != null) {
                propertyNameExplicitParamName = creatorCandidate.paramName(0);
                z10 = propertyNameExplicitParamName != null && beanPropertyDefinitionPropertyDef.couldSerialize();
            }
            propertyNameParamName = propertyNameExplicitParamName;
        } else {
            deserializationContext.reportBadTypeDefinition(beanDescription, "Single-argument constructor (%s) is annotated but no 'mode' defined; `CreatorDetector`configured with `SingleArgConstructor.REQUIRE_MODE`", creatorCandidate.creator());
            return;
        }
        if (z10) {
            creatorCollector.addPropertyCreator(creatorCandidate.creator(), true, new SettableBeanProperty[]{constructCreatorProperty(deserializationContext, beanDescription, propertyNameParamName, 0, annotatedParameterParameter, valueInjection)});
            return;
        }
        _handleSingleArgumentCreator(creatorCollector, creatorCandidate.creator(), true, true);
        BeanPropertyDefinition beanPropertyDefinitionPropertyDef2 = creatorCandidate.propertyDef(0);
        if (beanPropertyDefinitionPropertyDef2 != null) {
            ((POJOPropertyBuilder) beanPropertyDefinitionPropertyDef2).removeConstructors();
        }
    }
}
