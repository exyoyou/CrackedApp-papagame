package com.google.protobuf;

import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes5.dex */
public class TypeRegistry {
    private static final Logger logger = Logger.getLogger(TypeRegistry.class.getName());
    private final Map<String, Descriptors.Descriptor> types;

    public static final class Builder {
        private final Set<String> files;
        private Map<String, Descriptors.Descriptor> types;

        private void addFile(Descriptors.FileDescriptor fileDescriptor) {
            if (this.files.add(fileDescriptor.getFullName())) {
                Iterator<Descriptors.FileDescriptor> it2 = fileDescriptor.getDependencies().iterator();
                while (it2.hasNext()) {
                    addFile(it2.next());
                }
                Iterator<Descriptors.Descriptor> it3 = fileDescriptor.getMessageTypes().iterator();
                while (it3.hasNext()) {
                    addMessage(it3.next());
                }
            }
        }

        private void addMessage(Descriptors.Descriptor descriptor) {
            Iterator<Descriptors.Descriptor> it2 = descriptor.getNestedTypes().iterator();
            while (it2.hasNext()) {
                addMessage(it2.next());
            }
            if (!this.types.containsKey(descriptor.getFullName())) {
                this.types.put(descriptor.getFullName(), descriptor);
                return;
            }
            TypeRegistry.logger.warning("Type " + descriptor.getFullName() + " is added multiple times.");
        }

        public Builder add(Descriptors.Descriptor descriptor) {
            if (this.types == null) {
                throw new IllegalStateException("A TypeRegistry.Builder can only be used once.");
            }
            addFile(descriptor.getFile());
            return this;
        }

        public TypeRegistry build() {
            TypeRegistry typeRegistry = new TypeRegistry(this.types);
            this.types = null;
            return typeRegistry;
        }

        private Builder() {
            this.files = new HashSet();
            this.types = new HashMap();
        }

        public Builder add(Iterable<Descriptors.Descriptor> iterable) {
            if (this.types != null) {
                Iterator<Descriptors.Descriptor> it2 = iterable.iterator();
                while (it2.hasNext()) {
                    addFile(it2.next().getFile());
                }
                return this;
            }
            throw new IllegalStateException("A TypeRegistry.Builder can only be used once.");
        }
    }

    private static class EmptyTypeRegistryHolder {
        private static final TypeRegistry EMPTY = new TypeRegistry(Collections.emptyMap());

        private EmptyTypeRegistryHolder() {
        }
    }

    TypeRegistry(Map<String, Descriptors.Descriptor> map) {
        this.types = map;
    }

    public static TypeRegistry getEmptyTypeRegistry() {
        return EmptyTypeRegistryHolder.EMPTY;
    }

    private static String getTypeName(String str) throws InvalidProtocolBufferException {
        String[] strArrSplit = str.split(e.F0);
        if (strArrSplit.length != 1) {
            return strArrSplit[strArrSplit.length - 1];
        }
        throw new InvalidProtocolBufferException("Invalid type url found: " + str);
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public Descriptors.Descriptor find(String str) {
        return this.types.get(str);
    }

    public final Descriptors.Descriptor getDescriptorForTypeUrl(String str) throws InvalidProtocolBufferException {
        return find(getTypeName(str));
    }
}
