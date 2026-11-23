.class public Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TARGET_TYPE_COUNT:I

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _defaultAction:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

.field protected final _defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

.field protected _perClassCoercions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;",
            ">;"
        }
    .end annotation
.end field

.field protected _perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/LogicalType;->values()[Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    sput v0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->TARGET_TYPE_COUNT:I

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->TryConvert:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;-><init>(Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;Ljava/util/Map;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;",
            "[",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 4
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultAction:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 5
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 6
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    return-void
.end method

.method private static _copy(Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->copy()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public copy()Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v2, v1

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    array-length v0, v0

    .line 9
    new-array v2, v0, [Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v0, :cond_1

    .line 13
    .line 14
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 15
    .line 16
    aget-object v4, v4, v3

    .line 17
    .line 18
    invoke-static {v4}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_copy(Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    aput-object v4, v2, v3

    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/util/Map$Entry;

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->copy()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    :goto_3
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultAction:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 80
    .line 81
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->copy()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-direct {v0, v3, v4, v2, v1}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;-><init>(Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;Ljava/util/Map;)V

    .line 88
    .line 89
    .line 90
    return-object v0
.end method

.method public defaultCoercions()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public findCoercion(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;",
            ")",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    check-cast p3, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    return-object p3

    .line 22
    :cond_0
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 23
    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    aget-object p3, p3, v0

    .line 33
    .line 34
    if-eqz p3, :cond_1

    .line 35
    .line 36
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    if-eqz p3, :cond_1

    .line 41
    .line 42
    return-object p3

    .line 43
    :cond_1
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 44
    .line 45
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    if-eqz p3, :cond_2

    .line 50
    .line 51
    return-object p3

    .line 52
    :cond_2
    sget-object p3, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs$1;->$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionInputShape:[I

    .line 53
    .line 54
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    aget p3, p3, v0

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    if-eq p3, v0, :cond_e

    .line 62
    .line 63
    const/4 v1, 0x2

    .line 64
    if-eq p3, v1, :cond_4

    .line 65
    .line 66
    const/4 v1, 0x3

    .line 67
    if-eq p3, v1, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    sget-object p3, Lcom/fasterxml/jackson/databind/type/LogicalType;->Enum:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 71
    .line 72
    if-ne p2, p3, :cond_6

    .line 73
    .line 74
    sget-object p3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 75
    .line 76
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    if-eqz p3, :cond_6

    .line 81
    .line 82
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_4
    sget-object p3, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 86
    .line 87
    if-ne p2, p3, :cond_6

    .line 88
    .line 89
    sget-object p2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_FLOAT_AS_INT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->TryConvert:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 101
    .line 102
    :goto_0
    return-object p1

    .line 103
    :cond_6
    :goto_1
    sget-object p3, Lcom/fasterxml/jackson/databind/type/LogicalType;->Float:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 104
    .line 105
    if-eq p2, p3, :cond_8

    .line 106
    .line 107
    sget-object p3, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 108
    .line 109
    if-eq p2, p3, :cond_8

    .line 110
    .line 111
    sget-object p3, Lcom/fasterxml/jackson/databind/type/LogicalType;->Boolean:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 112
    .line 113
    if-eq p2, p3, :cond_8

    .line 114
    .line 115
    sget-object p3, Lcom/fasterxml/jackson/databind/type/LogicalType;->DateTime:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 116
    .line 117
    if-ne p2, p3, :cond_7

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_7
    const/4 v0, 0x0

    .line 121
    :cond_8
    :goto_2
    if-eqz v0, :cond_9

    .line 122
    .line 123
    sget-object p3, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 124
    .line 125
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    if-nez p3, :cond_9

    .line 130
    .line 131
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 132
    .line 133
    return-object p1

    .line 134
    :cond_9
    sget-object p3, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    .line 135
    .line 136
    if-ne p4, p3, :cond_d

    .line 137
    .line 138
    if-nez v0, :cond_c

    .line 139
    .line 140
    sget-object p3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 141
    .line 142
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_a

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_a
    sget-object p1, Lcom/fasterxml/jackson/databind/type/LogicalType;->OtherScalar:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 150
    .line 151
    if-ne p2, p1, :cond_b

    .line 152
    .line 153
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->TryConvert:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 154
    .line 155
    return-object p1

    .line 156
    :cond_b
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 157
    .line 158
    return-object p1

    .line 159
    :cond_c
    :goto_3
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 160
    .line 161
    return-object p1

    .line 162
    :cond_d
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultAction:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 163
    .line 164
    return-object p1

    .line 165
    :cond_e
    sget-object p2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_f

    .line 172
    .line 173
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_f
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 177
    .line 178
    :goto_4
    return-object p1
.end method

.method public findCoercionFromBlankString(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;",
            ")",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    check-cast p3, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->getAcceptBlankAsEmpty()Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    .line 20
    .line 21
    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    move-object p3, v0

    .line 28
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    aget-object p2, v1, p2

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->getAcceptBlankAsEmpty()Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_1
    if-nez p3, :cond_2

    .line 49
    .line 50
    sget-object p3, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    .line 51
    .line 52
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    :cond_2
    if-nez v0, :cond_3

    .line 57
    .line 58
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->getAcceptBlankAsEmpty()Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :cond_3
    if-nez p3, :cond_4

    .line 65
    .line 66
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 67
    .line 68
    sget-object p3, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    .line 69
    .line 70
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    :cond_4
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-nez p2, :cond_5

    .line 81
    .line 82
    return-object p4

    .line 83
    :cond_5
    if-eqz p3, :cond_6

    .line 84
    .line 85
    return-object p3

    .line 86
    :cond_6
    sget-object p2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_7

    .line 93
    .line 94
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_7
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 98
    .line 99
    :goto_1
    return-object p1
.end method

.method public findOrCreateCoercion(Lcom/fasterxml/jackson/databind/type/LogicalType;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->TARGET_TYPE_COUNT:I

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;-><init>()V

    aput-object v1, v0, p1

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public findOrCreateCoercion(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
