package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes9.dex */
public class POJOPropertiesCollector {
    protected final AccessorNamingStrategy _accessorNaming;
    protected final AnnotationIntrospector _annotationIntrospector;
    protected LinkedList<AnnotatedMember> _anyGetterField;
    protected LinkedList<AnnotatedMember> _anyGetters;
    protected LinkedList<AnnotatedMember> _anySetterField;
    protected LinkedList<AnnotatedMethod> _anySetters;
    protected final AnnotatedClass _classDef;
    protected boolean _collected;
    protected final MapperConfig<?> _config;
    protected LinkedList<POJOPropertyBuilder> _creatorProperties;
    protected Map<PropertyName, PropertyName> _fieldRenameMappings;
    protected final boolean _forSerialization;
    protected HashSet<String> _ignoredPropertyNames;
    protected LinkedHashMap<Object, AnnotatedMember> _injectables;
    protected LinkedList<AnnotatedMember> _jsonKeyAccessors;
    protected LinkedList<AnnotatedMember> _jsonValueAccessors;
    protected LinkedHashMap<String, POJOPropertyBuilder> _properties;
    protected final JavaType _type;
    protected final boolean _useAnnotations;
    protected final VisibilityChecker<?> _visibilityChecker;

    protected POJOPropertiesCollector(MapperConfig<?> mapperConfig, boolean z10, JavaType javaType, AnnotatedClass annotatedClass, AccessorNamingStrategy accessorNamingStrategy) {
        this._config = mapperConfig;
        this._forSerialization = z10;
        this._type = javaType;
        this._classDef = annotatedClass;
        if (mapperConfig.isAnnotationProcessingEnabled()) {
            this._useAnnotations = true;
            this._annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        } else {
            this._useAnnotations = false;
            this._annotationIntrospector = AnnotationIntrospector.nopInstance();
        }
        this._visibilityChecker = mapperConfig.getDefaultVisibilityChecker(javaType.getRawClass(), annotatedClass);
        this._accessorNaming = accessorNamingStrategy;
    }

    private boolean _anyIndexed(Collection<POJOPropertyBuilder> collection) {
        Iterator<POJOPropertyBuilder> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (it2.next().getMetadata().hasIndex()) {
                return true;
            }
        }
        return false;
    }

    private String _checkRenameByField(String str) {
        PropertyName propertyName;
        Map<PropertyName, PropertyName> map = this._fieldRenameMappings;
        return (map == null || (propertyName = map.get(_propNameFromSimple(str))) == null) ? str : propertyName.getSimpleName();
    }

    private PropertyNamingStrategy _findNamingStrategy() {
        PropertyNamingStrategy propertyNamingStrategyNamingStrategyInstance;
        Object objFindNamingStrategy = this._annotationIntrospector.findNamingStrategy(this._classDef);
        if (objFindNamingStrategy == null) {
            return this._config.getPropertyNamingStrategy();
        }
        if (objFindNamingStrategy instanceof PropertyNamingStrategy) {
            return (PropertyNamingStrategy) objFindNamingStrategy;
        }
        if (!(objFindNamingStrategy instanceof Class)) {
            throw new IllegalStateException("AnnotationIntrospector returned PropertyNamingStrategy definition of type " + objFindNamingStrategy.getClass().getName() + "; expected type PropertyNamingStrategy or Class<PropertyNamingStrategy> instead");
        }
        Class<?> cls = (Class) objFindNamingStrategy;
        if (cls == PropertyNamingStrategy.class) {
            return null;
        }
        if (PropertyNamingStrategy.class.isAssignableFrom(cls)) {
            HandlerInstantiator handlerInstantiator = this._config.getHandlerInstantiator();
            return (handlerInstantiator == null || (propertyNamingStrategyNamingStrategyInstance = handlerInstantiator.namingStrategyInstance(this._config, this._classDef, cls)) == null) ? (PropertyNamingStrategy) ClassUtil.createInstance(cls, this._config.canOverrideAccessModifiers()) : propertyNamingStrategyNamingStrategyInstance;
        }
        throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<PropertyNamingStrategy>");
    }

    private PropertyName _propNameFromSimple(String str) {
        return PropertyName.construct(str, null);
    }

    protected void _addCreatorParam(Map<String, POJOPropertyBuilder> map, AnnotatedParameter annotatedParameter) {
        JsonCreator.Mode modeFindCreatorAnnotation;
        String strFindImplicitPropertyName = this._annotationIntrospector.findImplicitPropertyName(annotatedParameter);
        if (strFindImplicitPropertyName == null) {
            strFindImplicitPropertyName = "";
        }
        PropertyName propertyNameFindNameForDeserialization = this._annotationIntrospector.findNameForDeserialization(annotatedParameter);
        boolean z10 = (propertyNameFindNameForDeserialization == null || propertyNameFindNameForDeserialization.isEmpty()) ? false : true;
        if (!z10) {
            if (strFindImplicitPropertyName.isEmpty() || (modeFindCreatorAnnotation = this._annotationIntrospector.findCreatorAnnotation(this._config, annotatedParameter.getOwner())) == null || modeFindCreatorAnnotation == JsonCreator.Mode.DISABLED) {
                return;
            } else {
                propertyNameFindNameForDeserialization = PropertyName.construct(strFindImplicitPropertyName);
            }
        }
        PropertyName propertyName = propertyNameFindNameForDeserialization;
        String str_checkRenameByField = _checkRenameByField(strFindImplicitPropertyName);
        POJOPropertyBuilder pOJOPropertyBuilder_property = (z10 && str_checkRenameByField.isEmpty()) ? _property(map, propertyName) : _property(map, str_checkRenameByField);
        pOJOPropertyBuilder_property.addCtor(annotatedParameter, propertyName, z10, true, false);
        this._creatorProperties.add(pOJOPropertyBuilder_property);
    }

    protected void _addCreators(Map<String, POJOPropertyBuilder> map) {
        if (this._useAnnotations) {
            Iterator<AnnotatedConstructor> it2 = this._classDef.getConstructors().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                AnnotatedConstructor next = it2.next();
                if (this._creatorProperties == null) {
                    this._creatorProperties = new LinkedList<>();
                }
                int parameterCount = next.getParameterCount();
                for (int i10 = 0; i10 < parameterCount; i10++) {
                    _addCreatorParam(map, next.getParameter(i10));
                }
            }
            for (AnnotatedMethod annotatedMethod : this._classDef.getFactoryMethods()) {
                if (this._creatorProperties == null) {
                    this._creatorProperties = new LinkedList<>();
                }
                int parameterCount2 = annotatedMethod.getParameterCount();
                for (int i11 = 0; i11 < parameterCount2; i11++) {
                    _addCreatorParam(map, annotatedMethod.getParameter(i11));
                }
            }
        }
    }

    protected void _addFields(Map<String, POJOPropertyBuilder> map) {
        PropertyName propertyName_propNameFromSimple;
        boolean z10;
        boolean z11;
        boolean z12;
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        boolean z13 = (this._forSerialization || this._config.isEnabled(MapperFeature.ALLOW_FINAL_FIELDS_AS_MUTATORS)) ? false : true;
        boolean zIsEnabled = this._config.isEnabled(MapperFeature.PROPAGATE_TRANSIENT_MARKER);
        for (AnnotatedField annotatedField : this._classDef.fields()) {
            Boolean bool = Boolean.TRUE;
            if (bool.equals(annotationIntrospector.hasAsKey(this._config, annotatedField))) {
                if (this._jsonKeyAccessors == null) {
                    this._jsonKeyAccessors = new LinkedList<>();
                }
                this._jsonKeyAccessors.add(annotatedField);
            }
            if (bool.equals(annotationIntrospector.hasAsValue(annotatedField))) {
                if (this._jsonValueAccessors == null) {
                    this._jsonValueAccessors = new LinkedList<>();
                }
                this._jsonValueAccessors.add(annotatedField);
            } else {
                boolean zEquals = bool.equals(annotationIntrospector.hasAnyGetter(annotatedField));
                boolean zEquals2 = bool.equals(annotationIntrospector.hasAnySetter(annotatedField));
                if (zEquals || zEquals2) {
                    if (zEquals) {
                        if (this._anyGetterField == null) {
                            this._anyGetterField = new LinkedList<>();
                        }
                        this._anyGetterField.add(annotatedField);
                    }
                    if (zEquals2) {
                        if (this._anySetterField == null) {
                            this._anySetterField = new LinkedList<>();
                        }
                        this._anySetterField.add(annotatedField);
                    }
                } else {
                    String strFindImplicitPropertyName = annotationIntrospector.findImplicitPropertyName(annotatedField);
                    if (strFindImplicitPropertyName == null) {
                        strFindImplicitPropertyName = annotatedField.getName();
                    }
                    String strModifyFieldName = this._accessorNaming.modifyFieldName(annotatedField, strFindImplicitPropertyName);
                    if (strModifyFieldName != null) {
                        PropertyName propertyName_propNameFromSimple2 = _propNameFromSimple(strModifyFieldName);
                        PropertyName propertyNameFindRenameByField = annotationIntrospector.findRenameByField(this._config, annotatedField, propertyName_propNameFromSimple2);
                        if (propertyNameFindRenameByField != null && !propertyNameFindRenameByField.equals(propertyName_propNameFromSimple2)) {
                            if (this._fieldRenameMappings == null) {
                                this._fieldRenameMappings = new HashMap();
                            }
                            this._fieldRenameMappings.put(propertyNameFindRenameByField, propertyName_propNameFromSimple2);
                        }
                        PropertyName propertyNameFindNameForSerialization = this._forSerialization ? annotationIntrospector.findNameForSerialization(annotatedField) : annotationIntrospector.findNameForDeserialization(annotatedField);
                        boolean z14 = propertyNameFindNameForSerialization != null;
                        if (z14 && propertyNameFindNameForSerialization.isEmpty()) {
                            propertyName_propNameFromSimple = _propNameFromSimple(strModifyFieldName);
                            z10 = false;
                        } else {
                            propertyName_propNameFromSimple = propertyNameFindNameForSerialization;
                            z10 = z14;
                        }
                        boolean zIsFieldVisible = propertyName_propNameFromSimple != null;
                        if (!zIsFieldVisible) {
                            zIsFieldVisible = this._visibilityChecker.isFieldVisible(annotatedField);
                        }
                        boolean zHasIgnoreMarker = annotationIntrospector.hasIgnoreMarker(annotatedField);
                        if (!annotatedField.isTransient() || z14) {
                            z11 = zHasIgnoreMarker;
                            z12 = zIsFieldVisible;
                        } else if (zIsEnabled) {
                            z12 = false;
                            z11 = true;
                        } else {
                            z11 = zHasIgnoreMarker;
                            z12 = false;
                        }
                        if (!z13 || propertyName_propNameFromSimple != null || z11 || !Modifier.isFinal(annotatedField.getModifiers())) {
                            _property(map, strModifyFieldName).addField(annotatedField, propertyName_propNameFromSimple, z10, z12, z11);
                        }
                    }
                }
            }
        }
    }

    protected void _addGetterMethod(Map<String, POJOPropertyBuilder> map, AnnotatedMethod annotatedMethod, AnnotationIntrospector annotationIntrospector) {
        PropertyName propertyName;
        boolean z10;
        String strFindImplicitPropertyName;
        boolean z11;
        boolean zIsGetterVisible;
        Class<?> rawReturnType = annotatedMethod.getRawReturnType();
        if (rawReturnType != Void.TYPE) {
            if (rawReturnType != Void.class || this._config.isEnabled(MapperFeature.ALLOW_VOID_VALUED_PROPERTIES)) {
                Boolean bool = Boolean.TRUE;
                if (bool.equals(annotationIntrospector.hasAnyGetter(annotatedMethod))) {
                    if (this._anyGetters == null) {
                        this._anyGetters = new LinkedList<>();
                    }
                    this._anyGetters.add(annotatedMethod);
                    return;
                }
                if (bool.equals(annotationIntrospector.hasAsKey(this._config, annotatedMethod))) {
                    if (this._jsonKeyAccessors == null) {
                        this._jsonKeyAccessors = new LinkedList<>();
                    }
                    this._jsonKeyAccessors.add(annotatedMethod);
                    return;
                }
                if (bool.equals(annotationIntrospector.hasAsValue(annotatedMethod))) {
                    if (this._jsonValueAccessors == null) {
                        this._jsonValueAccessors = new LinkedList<>();
                    }
                    this._jsonValueAccessors.add(annotatedMethod);
                    return;
                }
                PropertyName propertyNameFindNameForSerialization = annotationIntrospector.findNameForSerialization(annotatedMethod);
                boolean z12 = false;
                boolean z13 = propertyNameFindNameForSerialization != null;
                if (z13) {
                    String strFindImplicitPropertyName2 = annotationIntrospector.findImplicitPropertyName(annotatedMethod);
                    if (strFindImplicitPropertyName2 == null && (strFindImplicitPropertyName2 = this._accessorNaming.findNameForRegularGetter(annotatedMethod, annotatedMethod.getName())) == null) {
                        strFindImplicitPropertyName2 = this._accessorNaming.findNameForIsGetter(annotatedMethod, annotatedMethod.getName());
                    }
                    if (strFindImplicitPropertyName2 == null) {
                        strFindImplicitPropertyName2 = annotatedMethod.getName();
                    }
                    if (propertyNameFindNameForSerialization.isEmpty()) {
                        propertyNameFindNameForSerialization = _propNameFromSimple(strFindImplicitPropertyName2);
                    } else {
                        z12 = z13;
                    }
                    propertyName = propertyNameFindNameForSerialization;
                    z10 = z12;
                    strFindImplicitPropertyName = strFindImplicitPropertyName2;
                    z11 = true;
                } else {
                    strFindImplicitPropertyName = annotationIntrospector.findImplicitPropertyName(annotatedMethod);
                    if (strFindImplicitPropertyName == null) {
                        strFindImplicitPropertyName = this._accessorNaming.findNameForRegularGetter(annotatedMethod, annotatedMethod.getName());
                    }
                    if (strFindImplicitPropertyName == null) {
                        strFindImplicitPropertyName = this._accessorNaming.findNameForIsGetter(annotatedMethod, annotatedMethod.getName());
                        if (strFindImplicitPropertyName == null) {
                            return;
                        } else {
                            zIsGetterVisible = this._visibilityChecker.isIsGetterVisible(annotatedMethod);
                        }
                    } else {
                        zIsGetterVisible = this._visibilityChecker.isGetterVisible(annotatedMethod);
                    }
                    propertyName = propertyNameFindNameForSerialization;
                    z11 = zIsGetterVisible;
                    z10 = z13;
                }
                _property(map, _checkRenameByField(strFindImplicitPropertyName)).addGetter(annotatedMethod, propertyName, z10, z11, annotationIntrospector.hasIgnoreMarker(annotatedMethod));
            }
        }
    }

    protected void _addInjectables(Map<String, POJOPropertyBuilder> map) {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        for (AnnotatedMember annotatedMember : this._classDef.fields()) {
            _doAddInjectable(annotationIntrospector.findInjectableValue(annotatedMember), annotatedMember);
        }
        for (AnnotatedMethod annotatedMethod : this._classDef.memberMethods()) {
            if (annotatedMethod.getParameterCount() == 1) {
                _doAddInjectable(annotationIntrospector.findInjectableValue(annotatedMethod), annotatedMethod);
            }
        }
    }

    protected void _addMethods(Map<String, POJOPropertyBuilder> map) {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        for (AnnotatedMethod annotatedMethod : this._classDef.memberMethods()) {
            int parameterCount = annotatedMethod.getParameterCount();
            if (parameterCount == 0) {
                _addGetterMethod(map, annotatedMethod, annotationIntrospector);
            } else if (parameterCount == 1) {
                _addSetterMethod(map, annotatedMethod, annotationIntrospector);
            } else if (parameterCount == 2 && annotationIntrospector != null && Boolean.TRUE.equals(annotationIntrospector.hasAnySetter(annotatedMethod))) {
                if (this._anySetters == null) {
                    this._anySetters = new LinkedList<>();
                }
                this._anySetters.add(annotatedMethod);
            }
        }
    }

    protected void _addSetterMethod(Map<String, POJOPropertyBuilder> map, AnnotatedMethod annotatedMethod, AnnotationIntrospector annotationIntrospector) {
        String strFindImplicitPropertyName;
        PropertyName propertyName;
        boolean z10;
        boolean zIsSetterVisible;
        PropertyName propertyNameFindNameForDeserialization = annotationIntrospector == null ? null : annotationIntrospector.findNameForDeserialization(annotatedMethod);
        boolean z11 = propertyNameFindNameForDeserialization != null;
        if (z11) {
            strFindImplicitPropertyName = annotationIntrospector != null ? annotationIntrospector.findImplicitPropertyName(annotatedMethod) : null;
            if (strFindImplicitPropertyName == null) {
                strFindImplicitPropertyName = this._accessorNaming.findNameForMutator(annotatedMethod, annotatedMethod.getName());
            }
            if (strFindImplicitPropertyName == null) {
                strFindImplicitPropertyName = annotatedMethod.getName();
            }
            if (propertyNameFindNameForDeserialization.isEmpty()) {
                propertyNameFindNameForDeserialization = _propNameFromSimple(strFindImplicitPropertyName);
                z11 = false;
            }
            propertyName = propertyNameFindNameForDeserialization;
            z10 = z11;
            zIsSetterVisible = true;
        } else {
            strFindImplicitPropertyName = annotationIntrospector != null ? annotationIntrospector.findImplicitPropertyName(annotatedMethod) : null;
            if (strFindImplicitPropertyName == null) {
                strFindImplicitPropertyName = this._accessorNaming.findNameForMutator(annotatedMethod, annotatedMethod.getName());
            }
            if (strFindImplicitPropertyName == null) {
                return;
            }
            propertyName = propertyNameFindNameForDeserialization;
            z10 = z11;
            zIsSetterVisible = this._visibilityChecker.isSetterVisible(annotatedMethod);
        }
        _property(map, _checkRenameByField(strFindImplicitPropertyName)).addSetter(annotatedMethod, propertyName, z10, zIsSetterVisible, annotationIntrospector != null && annotationIntrospector.hasIgnoreMarker(annotatedMethod));
    }

    protected void _collectIgnorals(String str) {
        if (this._forSerialization || str == null) {
            return;
        }
        if (this._ignoredPropertyNames == null) {
            this._ignoredPropertyNames = new HashSet<>();
        }
        this._ignoredPropertyNames.add(str);
    }

    protected void _doAddInjectable(JacksonInject.Value value, AnnotatedMember annotatedMember) {
        if (value == null) {
            return;
        }
        Object id2 = value.getId();
        if (this._injectables == null) {
            this._injectables = new LinkedHashMap<>();
        }
        AnnotatedMember annotatedMemberPut = this._injectables.put(id2, annotatedMember);
        if (annotatedMemberPut == null || annotatedMemberPut.getClass() != annotatedMember.getClass()) {
            return;
        }
        throw new IllegalArgumentException("Duplicate injectable value with id '" + id2 + "' (of type " + id2.getClass().getName() + ")");
    }

    protected POJOPropertyBuilder _property(Map<String, POJOPropertyBuilder> map, PropertyName propertyName) {
        String simpleName = propertyName.getSimpleName();
        POJOPropertyBuilder pOJOPropertyBuilder = map.get(simpleName);
        if (pOJOPropertyBuilder != null) {
            return pOJOPropertyBuilder;
        }
        POJOPropertyBuilder pOJOPropertyBuilder2 = new POJOPropertyBuilder(this._config, this._annotationIntrospector, this._forSerialization, propertyName);
        map.put(simpleName, pOJOPropertyBuilder2);
        return pOJOPropertyBuilder2;
    }

    protected void _removeUnwantedAccessor(Map<String, POJOPropertyBuilder> map) {
        boolean zIsEnabled = this._config.isEnabled(MapperFeature.INFER_PROPERTY_MUTATORS);
        Iterator<POJOPropertyBuilder> it2 = map.values().iterator();
        while (it2.hasNext()) {
            it2.next().removeNonVisible(zIsEnabled, this._forSerialization ? null : this);
        }
    }

    protected void _removeUnwantedProperties(Map<String, POJOPropertyBuilder> map) {
        Iterator<POJOPropertyBuilder> it2 = map.values().iterator();
        while (it2.hasNext()) {
            POJOPropertyBuilder next = it2.next();
            if (!next.anyVisible()) {
                it2.remove();
            } else if (next.anyIgnorals()) {
                if (next.isExplicitlyIncluded()) {
                    next.removeIgnored();
                    if (!next.couldDeserialize()) {
                        _collectIgnorals(next.getName());
                    }
                } else {
                    it2.remove();
                    _collectIgnorals(next.getName());
                }
            }
        }
    }

    protected void _renameProperties(Map<String, POJOPropertyBuilder> map) {
        HashSet<String> hashSet;
        Iterator<Map.Entry<String, POJOPropertyBuilder>> it2 = map.entrySet().iterator();
        LinkedList<POJOPropertyBuilder> linkedList = null;
        while (it2.hasNext()) {
            POJOPropertyBuilder value = it2.next().getValue();
            Set<PropertyName> setFindExplicitNames = value.findExplicitNames();
            if (!setFindExplicitNames.isEmpty()) {
                it2.remove();
                if (linkedList == null) {
                    linkedList = new LinkedList();
                }
                if (setFindExplicitNames.size() == 1) {
                    linkedList.add(value.withName(setFindExplicitNames.iterator().next()));
                } else {
                    linkedList.addAll(value.explode(setFindExplicitNames));
                }
            }
        }
        if (linkedList != null) {
            for (POJOPropertyBuilder pOJOPropertyBuilder : linkedList) {
                String name = pOJOPropertyBuilder.getName();
                POJOPropertyBuilder pOJOPropertyBuilder2 = map.get(name);
                if (pOJOPropertyBuilder2 == null) {
                    map.put(name, pOJOPropertyBuilder);
                } else {
                    pOJOPropertyBuilder2.addAll(pOJOPropertyBuilder);
                }
                if (_updateCreatorProperty(pOJOPropertyBuilder, this._creatorProperties) && (hashSet = this._ignoredPropertyNames) != null) {
                    hashSet.remove(name);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00af  */
    protected void _renameUsing(Map<String, POJOPropertyBuilder> map, PropertyNamingStrategy propertyNamingStrategy) {
        String strNameForGetterMethod;
        POJOPropertyBuilder[] pOJOPropertyBuilderArr = (POJOPropertyBuilder[]) map.values().toArray(new POJOPropertyBuilder[map.size()]);
        map.clear();
        for (POJOPropertyBuilder pOJOPropertyBuilderWithSimpleName : pOJOPropertyBuilderArr) {
            PropertyName fullName = pOJOPropertyBuilderWithSimpleName.getFullName();
            if (pOJOPropertyBuilderWithSimpleName.isExplicitlyNamed() && !this._config.isEnabled(MapperFeature.ALLOW_EXPLICIT_PROPERTY_RENAMING)) {
                strNameForGetterMethod = null;
            } else if (this._forSerialization) {
                if (pOJOPropertyBuilderWithSimpleName.hasGetter()) {
                    strNameForGetterMethod = propertyNamingStrategy.nameForGetterMethod(this._config, pOJOPropertyBuilderWithSimpleName.getGetter(), fullName.getSimpleName());
                } else if (pOJOPropertyBuilderWithSimpleName.hasField()) {
                    strNameForGetterMethod = propertyNamingStrategy.nameForField(this._config, pOJOPropertyBuilderWithSimpleName.getField(), fullName.getSimpleName());
                } else {
                    strNameForGetterMethod = null;
                }
            } else if (pOJOPropertyBuilderWithSimpleName.hasSetter()) {
                strNameForGetterMethod = propertyNamingStrategy.nameForSetterMethod(this._config, pOJOPropertyBuilderWithSimpleName.getSetter(), fullName.getSimpleName());
            } else if (pOJOPropertyBuilderWithSimpleName.hasConstructorParameter()) {
                strNameForGetterMethod = propertyNamingStrategy.nameForConstructorParameter(this._config, pOJOPropertyBuilderWithSimpleName.getConstructorParameter(), fullName.getSimpleName());
            } else if (pOJOPropertyBuilderWithSimpleName.hasField()) {
                strNameForGetterMethod = propertyNamingStrategy.nameForField(this._config, pOJOPropertyBuilderWithSimpleName.getField(), fullName.getSimpleName());
            } else if (pOJOPropertyBuilderWithSimpleName.hasGetter()) {
                strNameForGetterMethod = propertyNamingStrategy.nameForGetterMethod(this._config, pOJOPropertyBuilderWithSimpleName.getGetter(), fullName.getSimpleName());
            } else {
                strNameForGetterMethod = null;
            }
            if (strNameForGetterMethod == null || fullName.hasSimpleName(strNameForGetterMethod)) {
                strNameForGetterMethod = fullName.getSimpleName();
            } else {
                pOJOPropertyBuilderWithSimpleName = pOJOPropertyBuilderWithSimpleName.withSimpleName(strNameForGetterMethod);
            }
            POJOPropertyBuilder pOJOPropertyBuilder = map.get(strNameForGetterMethod);
            if (pOJOPropertyBuilder == null) {
                map.put(strNameForGetterMethod, pOJOPropertyBuilderWithSimpleName);
            } else {
                pOJOPropertyBuilder.addAll(pOJOPropertyBuilderWithSimpleName);
            }
            _updateCreatorProperty(pOJOPropertyBuilderWithSimpleName, this._creatorProperties);
        }
    }

    protected void _renameWithWrappers(Map<String, POJOPropertyBuilder> map) {
        PropertyName propertyNameFindWrapperName;
        Iterator<Map.Entry<String, POJOPropertyBuilder>> it2 = map.entrySet().iterator();
        LinkedList<POJOPropertyBuilder> linkedList = null;
        while (it2.hasNext()) {
            POJOPropertyBuilder value = it2.next().getValue();
            AnnotatedMember primaryMember = value.getPrimaryMember();
            if (primaryMember != null && (propertyNameFindWrapperName = this._annotationIntrospector.findWrapperName(primaryMember)) != null && propertyNameFindWrapperName.hasSimpleName() && !propertyNameFindWrapperName.equals(value.getFullName())) {
                if (linkedList == null) {
                    linkedList = new LinkedList();
                }
                linkedList.add(value.withName(propertyNameFindWrapperName));
                it2.remove();
            }
        }
        if (linkedList != null) {
            for (POJOPropertyBuilder pOJOPropertyBuilder : linkedList) {
                String name = pOJOPropertyBuilder.getName();
                POJOPropertyBuilder pOJOPropertyBuilder2 = map.get(name);
                if (pOJOPropertyBuilder2 == null) {
                    map.put(name, pOJOPropertyBuilder);
                } else {
                    pOJOPropertyBuilder2.addAll(pOJOPropertyBuilder);
                }
            }
        }
    }

    protected void _sortProperties(Map<String, POJOPropertyBuilder> map) {
        Collection<POJOPropertyBuilder> collectionValues;
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        Boolean boolFindSerializationSortAlphabetically = annotationIntrospector.findSerializationSortAlphabetically(this._classDef);
        boolean zShouldSortPropertiesAlphabetically = boolFindSerializationSortAlphabetically == null ? this._config.shouldSortPropertiesAlphabetically() : boolFindSerializationSortAlphabetically.booleanValue();
        boolean z_anyIndexed = _anyIndexed(map.values());
        String[] strArrFindSerializationPropertyOrder = annotationIntrospector.findSerializationPropertyOrder(this._classDef);
        if (zShouldSortPropertiesAlphabetically || z_anyIndexed || this._creatorProperties != null || strArrFindSerializationPropertyOrder != null) {
            int size = map.size();
            Map<? extends Object, ? extends Object> treeMap = zShouldSortPropertiesAlphabetically ? new TreeMap<>() : new LinkedHashMap<>(size + size);
            for (POJOPropertyBuilder pOJOPropertyBuilder : map.values()) {
                treeMap.put(pOJOPropertyBuilder.getName(), pOJOPropertyBuilder);
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(size + size);
            if (strArrFindSerializationPropertyOrder != null) {
                for (String name : strArrFindSerializationPropertyOrder) {
                    POJOPropertyBuilder pOJOPropertyBuilder2 = (POJOPropertyBuilder) treeMap.remove(name);
                    if (pOJOPropertyBuilder2 == null) {
                        for (POJOPropertyBuilder pOJOPropertyBuilder3 : map.values()) {
                            if (name.equals(pOJOPropertyBuilder3.getInternalName())) {
                                name = pOJOPropertyBuilder3.getName();
                                pOJOPropertyBuilder2 = pOJOPropertyBuilder3;
                                break;
                            }
                        }
                    }
                    if (pOJOPropertyBuilder2 != null) {
                        linkedHashMap.put(name, pOJOPropertyBuilder2);
                    }
                }
            }
            if (z_anyIndexed) {
                TreeMap treeMap2 = new TreeMap();
                Iterator<Map.Entry<? extends Object, ? extends Object>> it2 = treeMap.entrySet().iterator();
                while (it2.hasNext()) {
                    POJOPropertyBuilder pOJOPropertyBuilder4 = (POJOPropertyBuilder) it2.next().getValue();
                    Integer index = pOJOPropertyBuilder4.getMetadata().getIndex();
                    if (index != null) {
                        treeMap2.put(index, pOJOPropertyBuilder4);
                        it2.remove();
                    }
                }
                for (POJOPropertyBuilder pOJOPropertyBuilder5 : treeMap2.values()) {
                    linkedHashMap.put(pOJOPropertyBuilder5.getName(), pOJOPropertyBuilder5);
                }
            }
            if (this._creatorProperties != null && (!zShouldSortPropertiesAlphabetically || this._config.isEnabled(MapperFeature.SORT_CREATOR_PROPERTIES_FIRST))) {
                if (zShouldSortPropertiesAlphabetically) {
                    TreeMap treeMap3 = new TreeMap();
                    for (POJOPropertyBuilder pOJOPropertyBuilder6 : this._creatorProperties) {
                        treeMap3.put(pOJOPropertyBuilder6.getName(), pOJOPropertyBuilder6);
                    }
                    collectionValues = treeMap3.values();
                } else {
                    collectionValues = this._creatorProperties;
                }
                for (POJOPropertyBuilder pOJOPropertyBuilder7 : collectionValues) {
                    String name2 = pOJOPropertyBuilder7.getName();
                    if (treeMap.containsKey(name2)) {
                        linkedHashMap.put(name2, pOJOPropertyBuilder7);
                    }
                }
            }
            linkedHashMap.putAll(treeMap);
            map.clear();
            map.putAll(linkedHashMap);
        }
    }

    protected boolean _updateCreatorProperty(POJOPropertyBuilder pOJOPropertyBuilder, List<POJOPropertyBuilder> list) {
        if (list != null) {
            String internalName = pOJOPropertyBuilder.getInternalName();
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (list.get(i10).getInternalName().equals(internalName)) {
                    list.set(i10, pOJOPropertyBuilder);
                    return true;
                }
            }
        }
        return false;
    }

    protected void collectAll() {
        LinkedHashMap<String, POJOPropertyBuilder> linkedHashMap = new LinkedHashMap<>();
        _addFields(linkedHashMap);
        _addMethods(linkedHashMap);
        if (!this._classDef.isNonStaticInnerClass()) {
            _addCreators(linkedHashMap);
        }
        _removeUnwantedProperties(linkedHashMap);
        _removeUnwantedAccessor(linkedHashMap);
        _renameProperties(linkedHashMap);
        _addInjectables(linkedHashMap);
        Iterator<POJOPropertyBuilder> it2 = linkedHashMap.values().iterator();
        while (it2.hasNext()) {
            it2.next().mergeAnnotations(this._forSerialization);
        }
        PropertyNamingStrategy propertyNamingStrategy_findNamingStrategy = _findNamingStrategy();
        if (propertyNamingStrategy_findNamingStrategy != null) {
            _renameUsing(linkedHashMap, propertyNamingStrategy_findNamingStrategy);
        }
        Iterator<POJOPropertyBuilder> it3 = linkedHashMap.values().iterator();
        while (it3.hasNext()) {
            it3.next().trimByVisibility();
        }
        if (this._config.isEnabled(MapperFeature.USE_WRAPPER_NAME_AS_PROPERTY_NAME)) {
            _renameWithWrappers(linkedHashMap);
        }
        _sortProperties(linkedHashMap);
        this._properties = linkedHashMap;
        this._collected = true;
    }

    @Deprecated
    public Class<?> findPOJOBuilderClass() {
        return this._annotationIntrospector.findPOJOBuilder(this._classDef);
    }

    public AnnotationIntrospector getAnnotationIntrospector() {
        return this._annotationIntrospector;
    }

    @Deprecated
    public AnnotatedMember getAnyGetter() {
        return getAnyGetterMethod();
    }

    public AnnotatedMember getAnyGetterField() {
        if (!this._collected) {
            collectAll();
        }
        LinkedList<AnnotatedMember> linkedList = this._anyGetterField;
        if (linkedList == null) {
            return null;
        }
        if (linkedList.size() > 1) {
            reportProblem("Multiple 'any-getter' fields defined (%s vs %s)", this._anyGetterField.get(0), this._anyGetterField.get(1));
        }
        return this._anyGetterField.getFirst();
    }

    public AnnotatedMember getAnyGetterMethod() {
        if (!this._collected) {
            collectAll();
        }
        LinkedList<AnnotatedMember> linkedList = this._anyGetters;
        if (linkedList == null) {
            return null;
        }
        if (linkedList.size() > 1) {
            reportProblem("Multiple 'any-getter' methods defined (%s vs %s)", this._anyGetters.get(0), this._anyGetters.get(1));
        }
        return this._anyGetters.getFirst();
    }

    public AnnotatedMember getAnySetterField() {
        if (!this._collected) {
            collectAll();
        }
        LinkedList<AnnotatedMember> linkedList = this._anySetterField;
        if (linkedList == null) {
            return null;
        }
        if (linkedList.size() > 1) {
            reportProblem("Multiple 'any-setter' fields defined (%s vs %s)", this._anySetterField.get(0), this._anySetterField.get(1));
        }
        return this._anySetterField.getFirst();
    }

    public AnnotatedMethod getAnySetterMethod() {
        if (!this._collected) {
            collectAll();
        }
        LinkedList<AnnotatedMethod> linkedList = this._anySetters;
        if (linkedList == null) {
            return null;
        }
        if (linkedList.size() > 1) {
            reportProblem("Multiple 'any-setter' methods defined (%s vs %s)", this._anySetters.get(0), this._anySetters.get(1));
        }
        return this._anySetters.getFirst();
    }

    public AnnotatedClass getClassDef() {
        return this._classDef;
    }

    public MapperConfig<?> getConfig() {
        return this._config;
    }

    public Set<String> getIgnoredPropertyNames() {
        return this._ignoredPropertyNames;
    }

    public Map<Object, AnnotatedMember> getInjectables() {
        if (!this._collected) {
            collectAll();
        }
        return this._injectables;
    }

    public AnnotatedMember getJsonKeyAccessor() {
        if (!this._collected) {
            collectAll();
        }
        LinkedList<AnnotatedMember> linkedList = this._jsonKeyAccessors;
        if (linkedList == null) {
            return null;
        }
        if (linkedList.size() > 1) {
            reportProblem("Multiple 'as-key' properties defined (%s vs %s)", this._jsonKeyAccessors.get(0), this._jsonKeyAccessors.get(1));
        }
        return this._jsonKeyAccessors.get(0);
    }

    public AnnotatedMember getJsonValueAccessor() {
        if (!this._collected) {
            collectAll();
        }
        LinkedList<AnnotatedMember> linkedList = this._jsonValueAccessors;
        if (linkedList == null) {
            return null;
        }
        if (linkedList.size() > 1) {
            reportProblem("Multiple 'as-value' properties defined (%s vs %s)", this._jsonValueAccessors.get(0), this._jsonValueAccessors.get(1));
        }
        return this._jsonValueAccessors.get(0);
    }

    @Deprecated
    public AnnotatedMethod getJsonValueMethod() {
        AnnotatedMember jsonValueAccessor = getJsonValueAccessor();
        if (jsonValueAccessor instanceof AnnotatedMethod) {
            return (AnnotatedMethod) jsonValueAccessor;
        }
        return null;
    }

    public ObjectIdInfo getObjectIdInfo() {
        ObjectIdInfo objectIdInfoFindObjectIdInfo = this._annotationIntrospector.findObjectIdInfo(this._classDef);
        return objectIdInfoFindObjectIdInfo != null ? this._annotationIntrospector.findObjectReferenceInfo(this._classDef, objectIdInfoFindObjectIdInfo) : objectIdInfoFindObjectIdInfo;
    }

    public List<BeanPropertyDefinition> getProperties() {
        return new ArrayList(getPropertyMap().values());
    }

    protected Map<String, POJOPropertyBuilder> getPropertyMap() {
        if (!this._collected) {
            collectAll();
        }
        return this._properties;
    }

    public JavaType getType() {
        return this._type;
    }

    protected void reportProblem(String str, Object... objArr) {
        if (objArr.length > 0) {
            str = String.format(str, objArr);
        }
        throw new IllegalArgumentException("Problem with definition of " + this._classDef + ": " + str);
    }

    protected POJOPropertyBuilder _property(Map<String, POJOPropertyBuilder> map, String str) {
        POJOPropertyBuilder pOJOPropertyBuilder = map.get(str);
        if (pOJOPropertyBuilder != null) {
            return pOJOPropertyBuilder;
        }
        POJOPropertyBuilder pOJOPropertyBuilder2 = new POJOPropertyBuilder(this._config, this._annotationIntrospector, this._forSerialization, PropertyName.construct(str));
        map.put(str, pOJOPropertyBuilder2);
        return pOJOPropertyBuilder2;
    }
}
