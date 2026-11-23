.class public Lcom/android/dx/dex/cf/CfTranslator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static coerceConstant(Lcom/android/dx/rop/cst/TypedConstant;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/TypedConstant;
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/rop/type/Type;->getBasicType()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq v0, v1, :cond_4

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-eq v0, v1, :cond_3

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    if-eq v0, v1, :cond_2

    .line 24
    .line 25
    const/16 v1, 0x8

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    check-cast p0, Lcom/android/dx/rop/cst/CstInteger;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-static {p0}, Lcom/android/dx/rop/cst/CstShort;->make(I)Lcom/android/dx/rop/cst/CstShort;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "can\'t coerce "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, " to "

    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_2
    check-cast p0, Lcom/android/dx/rop/cst/CstInteger;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    invoke-static {p0}, Lcom/android/dx/rop/cst/CstChar;->make(I)Lcom/android/dx/rop/cst/CstChar;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_3
    check-cast p0, Lcom/android/dx/rop/cst/CstInteger;

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    invoke-static {p0}, Lcom/android/dx/rop/cst/CstByte;->make(I)Lcom/android/dx/rop/cst/CstByte;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :cond_4
    check-cast p0, Lcom/android/dx/rop/cst/CstInteger;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    invoke-static {p0}, Lcom/android/dx/rop/cst/CstBoolean;->make(I)Lcom/android/dx/rop/cst/CstBoolean;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method

.method private static processFields(Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/dex/file/ClassDefItem;Lcom/android/dx/dex/file/DexFile;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/dx/cf/direct/DirectClassFile;->getFields()Lcom/android/dx/cf/iface/FieldList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Lcom/android/dx/cf/iface/FieldList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_3

    .line 15
    .line 16
    invoke-interface {p0, v2}, Lcom/android/dx/cf/iface/FieldList;->get(I)Lcom/android/dx/cf/iface/Field;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    :try_start_0
    new-instance v4, Lcom/android/dx/rop/cst/CstFieldRef;

    .line 21
    .line 22
    invoke-interface {v3}, Lcom/android/dx/cf/iface/Member;->getNat()Lcom/android/dx/rop/cst/CstNat;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-direct {v4, v0, v5}, Lcom/android/dx/rop/cst/CstFieldRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v3}, Lcom/android/dx/cf/iface/Member;->getAccessFlags()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-static {v5}, Lcom/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    invoke-interface {v3}, Lcom/android/dx/cf/iface/Field;->getConstantValue()Lcom/android/dx/rop/cst/TypedConstant;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    new-instance v7, Lcom/android/dx/dex/file/EncodedField;

    .line 44
    .line 45
    invoke-direct {v7, v4, v5}, Lcom/android/dx/dex/file/EncodedField;-><init>(Lcom/android/dx/rop/cst/CstFieldRef;I)V

    .line 46
    .line 47
    .line 48
    if-eqz v6, :cond_0

    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstFieldRef;->getType()Lcom/android/dx/rop/type/Type;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-static {v6, v5}, Lcom/android/dx/dex/cf/CfTranslator;->coerceConstant(Lcom/android/dx/rop/cst/TypedConstant;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/TypedConstant;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    :cond_0
    invoke-virtual {p1, v7, v6}, Lcom/android/dx/dex/file/ClassDefItem;->addStaticField(Lcom/android/dx/dex/file/EncodedField;Lcom/android/dx/rop/cst/Constant;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    new-instance v6, Lcom/android/dx/dex/file/EncodedField;

    .line 63
    .line 64
    invoke-direct {v6, v4, v5}, Lcom/android/dx/dex/file/EncodedField;-><init>(Lcom/android/dx/rop/cst/CstFieldRef;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v6}, Lcom/android/dx/dex/file/ClassDefItem;->addInstanceField(Lcom/android/dx/dex/file/EncodedField;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-interface {v3}, Lcom/android/dx/cf/iface/Member;->getAttributes()Lcom/android/dx/cf/iface/AttributeList;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-static {v5}, Lcom/android/dx/dex/cf/AttributeTranslator;->getAnnotations(Lcom/android/dx/cf/iface/AttributeList;)Lcom/android/dx/rop/annotation/Annotations;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v5}, Lcom/android/dx/rop/annotation/Annotations;->size()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_2

    .line 83
    .line 84
    invoke-virtual {p1, v4, v5, p2}, Lcom/android/dx/dex/file/ClassDefItem;->addFieldAnnotations(Lcom/android/dx/rop/cst/CstFieldRef;Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/dex/file/DexFile;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {p2}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v5, v4}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception p0

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string p2, "...while processing "

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-interface {v3}, Lcom/android/dx/cf/iface/Member;->getName()Lcom/android/dx/rop/cst/CstString;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p2}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p2, " "

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-interface {v3}, Lcom/android/dx/cf/iface/Member;->getDescriptor()Lcom/android/dx/rop/cst/CstString;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p2}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {p0, p1}, Lcom/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    throw p0

    .line 144
    :cond_3
    return-void
.end method

.method private static processMethods(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/file/ClassDefItem;Lcom/android/dx/dex/file/DexFile;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    move-object/from16 v10, p3

    .line 6
    .line 7
    move-object/from16 v11, p4

    .line 8
    .line 9
    move-object/from16 v12, p5

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    .line 12
    .line 13
    .line 14
    move-result-object v13

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/android/dx/cf/iface/MethodList;

    .line 16
    .line 17
    .line 18
    move-result-object v14

    .line 19
    invoke-interface {v14}, Lcom/android/dx/cf/iface/MethodList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v15

    .line 23
    const/16 v16, 0x0

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    :goto_0
    if-ge v8, v15, :cond_f

    .line 27
    .line 28
    invoke-interface {v14, v8}, Lcom/android/dx/cf/iface/MethodList;->get(I)Lcom/android/dx/cf/iface/Method;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    :try_start_0
    new-instance v6, Lcom/android/dx/rop/cst/CstMethodRef;

    .line 33
    .line 34
    invoke-interface {v7}, Lcom/android/dx/cf/iface/Member;->getNat()Lcom/android/dx/rop/cst/CstNat;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v6, v13, v1}, Lcom/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v7}, Lcom/android/dx/cf/iface/Member;->getAccessFlags()I

    .line 42
    .line 43
    .line 44
    move-result v17

    .line 45
    invoke-static/range {v17 .. v17}, Lcom/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-static/range {v17 .. v17}, Lcom/android/dx/rop/code/AccessFlags;->isPrivate(I)Z

    .line 50
    .line 51
    .line 52
    move-result v18

    .line 53
    invoke-static/range {v17 .. v17}, Lcom/android/dx/rop/code/AccessFlags;->isNative(I)Z

    .line 54
    .line 55
    .line 56
    move-result v19

    .line 57
    invoke-static/range {v17 .. v17}, Lcom/android/dx/rop/code/AccessFlags;->isAbstract(I)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v6}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->isInstanceInit()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/4 v3, 0x1

    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    invoke-virtual {v6}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->isClassInit()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_0

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    const/16 v20, 0x0

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_1
    :goto_1
    const/16 v20, 0x1

    .line 79
    .line 80
    :goto_2
    if-nez v19, :cond_8

    .line 81
    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    goto/16 :goto_7

    .line 85
    .line 86
    :cond_2
    new-instance v1, Lcom/android/dx/cf/code/ConcreteMethod;

    .line 87
    .line 88
    iget v4, v9, Lcom/android/dx/dex/cf/CfOptions;->positionInfo:I

    .line 89
    .line 90
    if-eq v4, v3, :cond_3

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_3
    const/4 v3, 0x0

    .line 94
    :goto_3
    iget-boolean v4, v9, Lcom/android/dx/dex/cf/CfOptions;->localInfo:Z

    .line 95
    .line 96
    move/from16 v21, v15

    .line 97
    .line 98
    move-object/from16 v15, p1

    .line 99
    .line 100
    invoke-direct {v1, v7, v15, v3, v4}, Lcom/android/dx/cf/code/ConcreteMethod;-><init>(Lcom/android/dx/cf/iface/Method;Lcom/android/dx/cf/iface/ClassFile;ZZ)V

    .line 101
    .line 102
    .line 103
    sget-object v3, Lcom/android/dx/rop/code/DexTranslationAdvice;->THE_ONE:Lcom/android/dx/rop/code/DexTranslationAdvice;

    .line 104
    .line 105
    invoke-static {v1, v3, v14, v10}, Lcom/android/dx/cf/code/Ropper;->convert(Lcom/android/dx/cf/code/ConcreteMethod;Lcom/android/dx/rop/code/TranslationAdvice;Lcom/android/dx/cf/iface/MethodList;Lcom/android/dx/dex/DexOptions;)Lcom/android/dx/rop/code/RopMethod;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    move/from16 v22, v8

    .line 110
    .line 111
    invoke-virtual {v6, v5}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getParameterWordCount(Z)I

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v13}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    .line 121
    .line 122
    .line 123
    move-result-object v24

    .line 124
    move-object/from16 v25, v6

    .line 125
    .line 126
    invoke-virtual/range {v24 .. v24}, Lcom/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v6, "."

    .line 134
    .line 135
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-interface {v7}, Lcom/android/dx/cf/iface/Member;->getName()Lcom/android/dx/rop/cst/CstString;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v6}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iget-boolean v6, v9, Lcom/android/dx/dex/cf/CfOptions;->optimize:Z

    .line 154
    .line 155
    if-eqz v6, :cond_5

    .line 156
    .line 157
    iget-object v6, v0, Lcom/android/dx/command/dexer/DxContext;->optimizerOptions:Lcom/android/dx/dex/cf/OptimizerOptions;

    .line 158
    .line 159
    invoke-virtual {v6, v2}, Lcom/android/dx/dex/cf/OptimizerOptions;->shouldOptimize(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_5

    .line 164
    .line 165
    iget-boolean v2, v9, Lcom/android/dx/dex/cf/CfOptions;->localInfo:Z

    .line 166
    .line 167
    invoke-static {v4, v8, v5, v2, v3}, Lcom/android/dx/ssa/Optimizer;->optimize(Lcom/android/dx/rop/code/RopMethod;IZZLcom/android/dx/rop/code/TranslationAdvice;)Lcom/android/dx/rop/code/RopMethod;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    iget-boolean v3, v9, Lcom/android/dx/dex/cf/CfOptions;->statistics:Z

    .line 172
    .line 173
    if-eqz v3, :cond_4

    .line 174
    .line 175
    iget-object v3, v0, Lcom/android/dx/command/dexer/DxContext;->codeStatistics:Lcom/android/dx/dex/cf/CodeStatistics;

    .line 176
    .line 177
    invoke-virtual {v3, v4, v2}, Lcom/android/dx/dex/cf/CodeStatistics;->updateRopStatistics(Lcom/android/dx/rop/code/RopMethod;Lcom/android/dx/rop/code/RopMethod;)V

    .line 178
    .line 179
    .line 180
    :cond_4
    move-object v6, v4

    .line 181
    move-object v4, v2

    .line 182
    goto :goto_4

    .line 183
    :cond_5
    const/4 v6, 0x0

    .line 184
    :goto_4
    iget-boolean v2, v9, Lcom/android/dx/dex/cf/CfOptions;->localInfo:Z

    .line 185
    .line 186
    if-eqz v2, :cond_6

    .line 187
    .line 188
    invoke-static {v4}, Lcom/android/dx/rop/code/LocalVariableExtractor;->extract(Lcom/android/dx/rop/code/RopMethod;)Lcom/android/dx/rop/code/LocalVariableInfo;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    move-object v3, v2

    .line 193
    goto :goto_5

    .line 194
    :cond_6
    const/4 v3, 0x0

    .line 195
    :goto_5
    iget v2, v9, Lcom/android/dx/dex/cf/CfOptions;->positionInfo:I

    .line 196
    .line 197
    invoke-static {v4, v2, v3, v8, v10}, Lcom/android/dx/dex/code/RopTranslator;->translate(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/DalvCode;

    .line 198
    .line 199
    .line 200
    move-result-object v23

    .line 201
    iget-boolean v2, v9, Lcom/android/dx/dex/cf/CfOptions;->statistics:Z

    .line 202
    .line 203
    if-eqz v2, :cond_7

    .line 204
    .line 205
    if-eqz v6, :cond_7

    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/android/dx/cf/code/BytecodeArray;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1}, Lcom/android/dx/cf/code/BytecodeArray;->size()I

    .line 212
    .line 213
    .line 214
    move-result v24
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    move-object/from16 v1, p0

    .line 216
    .line 217
    move-object/from16 v2, p2

    .line 218
    .line 219
    move-object/from16 v26, v3

    .line 220
    .line 221
    move-object/from16 v3, p3

    .line 222
    .line 223
    move/from16 v27, v5

    .line 224
    .line 225
    move-object v5, v6

    .line 226
    move-object/from16 v0, v25

    .line 227
    .line 228
    move-object/from16 v6, v26

    .line 229
    .line 230
    move-object/from16 v25, v7

    .line 231
    .line 232
    move v7, v8

    .line 233
    move/from16 v8, v24

    .line 234
    .line 235
    :try_start_1
    invoke-static/range {v1 .. v8}, Lcom/android/dx/dex/cf/CfTranslator;->updateDexStatistics(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/rop/code/RopMethod;Lcom/android/dx/rop/code/RopMethod;Lcom/android/dx/rop/code/LocalVariableInfo;II)V

    .line 236
    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_7
    move/from16 v27, v5

    .line 240
    .line 241
    move-object/from16 v0, v25

    .line 242
    .line 243
    move-object/from16 v25, v7

    .line 244
    .line 245
    :goto_6
    move-object/from16 v2, v23

    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_8
    :goto_7
    move/from16 v27, v5

    .line 249
    .line 250
    move-object v0, v6

    .line 251
    move-object/from16 v25, v7

    .line 252
    .line 253
    move/from16 v22, v8

    .line 254
    .line 255
    move/from16 v21, v15

    .line 256
    .line 257
    move-object/from16 v15, p1

    .line 258
    .line 259
    const/4 v2, 0x0

    .line 260
    :goto_8
    invoke-static/range {v17 .. v17}, Lcom/android/dx/rop/code/AccessFlags;->isSynchronized(I)Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-eqz v1, :cond_9

    .line 265
    .line 266
    const/high16 v1, 0x20000

    .line 267
    .line 268
    or-int v17, v17, v1

    .line 269
    .line 270
    if-nez v19, :cond_9

    .line 271
    .line 272
    and-int/lit8 v17, v17, -0x21

    .line 273
    .line 274
    :cond_9
    if-eqz v20, :cond_a

    .line 275
    .line 276
    const/high16 v1, 0x10000

    .line 277
    .line 278
    or-int v17, v17, v1

    .line 279
    .line 280
    :cond_a
    move/from16 v1, v17

    .line 281
    .line 282
    invoke-static/range {v25 .. v25}, Lcom/android/dx/dex/cf/AttributeTranslator;->getExceptions(Lcom/android/dx/cf/iface/Method;)Lcom/android/dx/rop/type/TypeList;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    new-instance v4, Lcom/android/dx/dex/file/EncodedMethod;

    .line 287
    .line 288
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/dx/dex/file/EncodedMethod;-><init>(Lcom/android/dx/rop/cst/CstMethodRef;ILcom/android/dx/dex/code/DalvCode;Lcom/android/dx/rop/type/TypeList;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->isInstanceInit()Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-nez v1, :cond_c

    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->isClassInit()Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    if-nez v1, :cond_c

    .line 302
    .line 303
    if-nez v27, :cond_c

    .line 304
    .line 305
    if-eqz v18, :cond_b

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_b
    invoke-virtual {v11, v4}, Lcom/android/dx/dex/file/ClassDefItem;->addVirtualMethod(Lcom/android/dx/dex/file/EncodedMethod;)V

    .line 309
    .line 310
    .line 311
    goto :goto_a

    .line 312
    :cond_c
    :goto_9
    invoke-virtual {v11, v4}, Lcom/android/dx/dex/file/ClassDefItem;->addDirectMethod(Lcom/android/dx/dex/file/EncodedMethod;)V

    .line 313
    .line 314
    .line 315
    :goto_a
    invoke-static/range {v25 .. v25}, Lcom/android/dx/dex/cf/AttributeTranslator;->getMethodAnnotations(Lcom/android/dx/cf/iface/Method;)Lcom/android/dx/rop/annotation/Annotations;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {v1}, Lcom/android/dx/rop/annotation/Annotations;->size()I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    if-eqz v2, :cond_d

    .line 324
    .line 325
    invoke-virtual {v11, v0, v1, v12}, Lcom/android/dx/dex/file/ClassDefItem;->addMethodAnnotations(Lcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/dex/file/DexFile;)V

    .line 326
    .line 327
    .line 328
    :cond_d
    invoke-static/range {v25 .. v25}, Lcom/android/dx/dex/cf/AttributeTranslator;->getParameterAnnotations(Lcom/android/dx/cf/iface/Method;)Lcom/android/dx/rop/annotation/AnnotationsList;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-virtual {v1}, Lcom/android/dx/util/FixedSizeList;->size()I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-eqz v2, :cond_e

    .line 337
    .line 338
    invoke-virtual {v11, v0, v1, v12}, Lcom/android/dx/dex/file/ClassDefItem;->addParameterAnnotations(Lcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/rop/annotation/AnnotationsList;Lcom/android/dx/dex/file/DexFile;)V

    .line 339
    .line 340
    .line 341
    :cond_e
    invoke-virtual/range {p5 .. p5}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v1, v0}, Lcom/android/dx/dex/file/MethodIdsSection;->intern(Lcom/android/dx/rop/cst/CstBaseMethodRef;)Lcom/android/dx/dex/file/MethodIdItem;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 346
    .line 347
    .line 348
    add-int/lit8 v8, v22, 0x1

    .line 349
    .line 350
    move-object/from16 v0, p0

    .line 351
    .line 352
    move/from16 v15, v21

    .line 353
    .line 354
    goto/16 :goto_0

    .line 355
    .line 356
    :catch_0
    move-exception v0

    .line 357
    goto :goto_b

    .line 358
    :catch_1
    move-exception v0

    .line 359
    move-object/from16 v25, v7

    .line 360
    .line 361
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .line 365
    .line 366
    const-string v2, "...while processing "

    .line 367
    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-interface/range {v25 .. v25}, Lcom/android/dx/cf/iface/Member;->getName()Lcom/android/dx/rop/cst/CstString;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v2, " "

    .line 383
    .line 384
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-interface/range {v25 .. v25}, Lcom/android/dx/cf/iface/Member;->getDescriptor()Lcom/android/dx/rop/cst/CstString;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-static {v0, v1}, Lcom/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    throw v0

    .line 407
    :cond_f
    return-void
.end method

.method public static translate(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/cf/direct/DirectClassFile;[BLcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/file/DexFile;)Lcom/android/dx/dex/file/ClassDefItem;
    .locals 0

    .line 1
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/android/dx/dex/cf/CfTranslator;->translate0(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/cf/direct/DirectClassFile;[BLcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/file/DexFile;)Lcom/android/dx/dex/file/ClassDefItem;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string p3, "...while processing "

    .line 13
    .line 14
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getFilePath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p0, p1}, Lcom/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    throw p0
.end method

.method private static translate0(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/cf/direct/DirectClassFile;[BLcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/file/DexFile;)Lcom/android/dx/dex/file/ClassDefItem;
    .locals 14

    .line 1
    move-object v6, p1

    .line 2
    move-object/from16 v2, p3

    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move-object/from16 v5, p5

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/dx/command/dexer/DxContext;->optimizerOptions:Lcom/android/dx/dex/cf/OptimizerOptions;

    .line 8
    .line 9
    iget-object v3, v2, Lcom/android/dx/dex/cf/CfOptions;->optimizeListFile:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, v2, Lcom/android/dx/dex/cf/CfOptions;->dontOptimizeListFile:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1, v3, v4}, Lcom/android/dx/dex/cf/OptimizerOptions;->loadOptimizeLists(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    .line 17
    .line 18
    .line 19
    move-result-object v8

    .line 20
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getAccessFlags()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    and-int/lit8 v9, v1, -0x21

    .line 25
    .line 26
    iget v1, v2, Lcom/android/dx/dex/cf/CfOptions;->positionInfo:I

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    if-ne v1, v3, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getSourceFile()Lcom/android/dx/rop/cst/CstString;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_0
    move-object v12, v1

    .line 38
    new-instance v13, Lcom/android/dx/dex/file/ClassDefItem;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getSuperclass()Lcom/android/dx/rop/cst/CstType;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getInterfaces()Lcom/android/dx/rop/type/TypeList;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    move-object v7, v13

    .line 49
    invoke-direct/range {v7 .. v12}, Lcom/android/dx/dex/file/ClassDefItem;-><init>(Lcom/android/dx/rop/cst/CstType;ILcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/CstString;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v2}, Lcom/android/dx/dex/cf/AttributeTranslator;->getClassAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/dex/cf/CfOptions;)Lcom/android/dx/rop/annotation/Annotations;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/android/dx/rop/annotation/Annotations;->size()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    invoke-virtual {v13, v1, v5}, Lcom/android/dx/dex/file/ClassDefItem;->setClassAnnotations(Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/dex/file/DexFile;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual/range {p5 .. p5}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual/range {p5 .. p5}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-virtual/range {p5 .. p5}, Lcom/android/dx/dex/file/DexFile;->getMethodHandles()Lcom/android/dx/dex/file/MethodHandlesSection;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    invoke-virtual/range {p5 .. p5}, Lcom/android/dx/dex/file/DexFile;->getCallSiteIds()Lcom/android/dx/dex/file/CallSiteIdsSection;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    invoke-static {p1, v13, v5}, Lcom/android/dx/dex/cf/CfTranslator;->processFields(Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/dex/file/ClassDefItem;Lcom/android/dx/dex/file/DexFile;)V

    .line 82
    .line 83
    .line 84
    move-object v0, p0

    .line 85
    move-object v1, p1

    .line 86
    move-object/from16 v2, p3

    .line 87
    .line 88
    move-object/from16 v3, p4

    .line 89
    .line 90
    move-object v4, v13

    .line 91
    move-object/from16 v5, p5

    .line 92
    .line 93
    invoke-static/range {v0 .. v5}, Lcom/android/dx/dex/cf/CfTranslator;->processMethods(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/file/ClassDefItem;Lcom/android/dx/dex/file/DexFile;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0}, Lcom/android/dx/rop/cst/ConstantPool;->size()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const/4 v2, 0x0

    .line 105
    :goto_1
    if-ge v2, v1, :cond_8

    .line 106
    .line 107
    invoke-interface {v0, v2}, Lcom/android/dx/rop/cst/ConstantPool;->getOrNull(I)Lcom/android/dx/rop/cst/Constant;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstMethodRef;

    .line 112
    .line 113
    if-eqz v4, :cond_2

    .line 114
    .line 115
    check-cast v3, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    .line 116
    .line 117
    invoke-virtual {v8, v3}, Lcom/android/dx/dex/file/MethodIdsSection;->intern(Lcom/android/dx/rop/cst/CstBaseMethodRef;)Lcom/android/dx/dex/file/MethodIdItem;

    .line 118
    .line 119
    .line 120
    goto/16 :goto_3

    .line 121
    .line 122
    :cond_2
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;

    .line 123
    .line 124
    if-eqz v4, :cond_3

    .line 125
    .line 126
    check-cast v3, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;

    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;->toMethodRef()Lcom/android/dx/rop/cst/CstMethodRef;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v8, v3}, Lcom/android/dx/dex/file/MethodIdsSection;->intern(Lcom/android/dx/rop/cst/CstBaseMethodRef;)Lcom/android/dx/dex/file/MethodIdItem;

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_3
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstFieldRef;

    .line 137
    .line 138
    if-eqz v4, :cond_4

    .line 139
    .line 140
    check-cast v3, Lcom/android/dx/rop/cst/CstFieldRef;

    .line 141
    .line 142
    invoke-virtual {v7, v3}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_4
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstEnumRef;

    .line 147
    .line 148
    if-eqz v4, :cond_5

    .line 149
    .line 150
    check-cast v3, Lcom/android/dx/rop/cst/CstEnumRef;

    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/android/dx/rop/cst/CstFieldRef;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v7, v3}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_5
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstMethodHandle;

    .line 161
    .line 162
    if-eqz v4, :cond_6

    .line 163
    .line 164
    check-cast v3, Lcom/android/dx/rop/cst/CstMethodHandle;

    .line 165
    .line 166
    invoke-virtual {v9, v3}, Lcom/android/dx/dex/file/MethodHandlesSection;->intern(Lcom/android/dx/rop/cst/CstMethodHandle;)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_6
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstInvokeDynamic;

    .line 171
    .line 172
    if-eqz v4, :cond_7

    .line 173
    .line 174
    check-cast v3, Lcom/android/dx/rop/cst/CstInvokeDynamic;

    .line 175
    .line 176
    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstInvokeDynamic;->getBootstrapMethodIndex()I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBootstrapMethods()Lcom/android/dx/cf/code/BootstrapMethodsList;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v5, v4}, Lcom/android/dx/cf/code/BootstrapMethodsList;->get(I)Lcom/android/dx/cf/code/BootstrapMethodsList$Item;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v4}, Lcom/android/dx/cf/code/BootstrapMethodsList$Item;->getBootstrapMethodHandle()Lcom/android/dx/rop/cst/CstMethodHandle;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstInvokeDynamic;->getNat()Lcom/android/dx/rop/cst/CstNat;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    invoke-virtual {v4}, Lcom/android/dx/cf/code/BootstrapMethodsList$Item;->getBootstrapMethodArguments()Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-static {v5, v11, v4}, Lcom/android/dx/rop/cst/CstCallSite;->make(Lcom/android/dx/rop/cst/CstMethodHandle;Lcom/android/dx/rop/cst/CstNat;Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;)Lcom/android/dx/rop/cst/CstCallSite;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {v3, v5}, Lcom/android/dx/rop/cst/CstInvokeDynamic;->setDeclaringClass(Lcom/android/dx/rop/cst/CstType;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, v4}, Lcom/android/dx/rop/cst/CstInvokeDynamic;->setCallSite(Lcom/android/dx/rop/cst/CstCallSite;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstInvokeDynamic;->getReferences()Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    if-eqz v4, :cond_7

    .line 227
    .line 228
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    check-cast v4, Lcom/android/dx/rop/cst/CstCallSiteRef;

    .line 233
    .line 234
    invoke-virtual {v10, v4}, Lcom/android/dx/dex/file/CallSiteIdsSection;->intern(Lcom/android/dx/rop/cst/CstCallSiteRef;)V

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 239
    .line 240
    goto/16 :goto_1

    .line 241
    .line 242
    :cond_8
    return-object v13
.end method

.method private static updateDexStatistics(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/rop/code/RopMethod;Lcom/android/dx/rop/code/RopMethod;Lcom/android/dx/rop/code/LocalVariableInfo;II)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/android/dx/dex/cf/CfOptions;->positionInfo:I

    .line 2
    .line 3
    invoke-static {p3, v0, p5, p6, p2}, Lcom/android/dx/dex/code/RopTranslator;->translate(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/DalvCode;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    iget p1, p1, Lcom/android/dx/dex/cf/CfOptions;->positionInfo:I

    .line 8
    .line 9
    invoke-static {p4, p1, p5, p6, p2}, Lcom/android/dx/dex/code/RopTranslator;->translate(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/DalvCode;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance p2, Lcom/android/dx/dex/cf/CfTranslator$1;

    .line 14
    .line 15
    invoke-direct {p2}, Lcom/android/dx/dex/cf/CfTranslator$1;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, p2}, Lcom/android/dx/dex/code/DalvCode;->assignIndices(Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/android/dx/dex/code/DalvCode;->assignIndices(Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/android/dx/command/dexer/DxContext;->codeStatistics:Lcom/android/dx/dex/cf/CodeStatistics;

    .line 25
    .line 26
    invoke-virtual {p2, p1, p3}, Lcom/android/dx/dex/cf/CodeStatistics;->updateDexStatistics(Lcom/android/dx/dex/code/DalvCode;Lcom/android/dx/dex/code/DalvCode;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/dx/command/dexer/DxContext;->codeStatistics:Lcom/android/dx/dex/cf/CodeStatistics;

    .line 30
    .line 31
    invoke-virtual {p0, p7}, Lcom/android/dx/dex/cf/CodeStatistics;->updateOriginalByteCount(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
