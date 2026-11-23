.class final Lcom/android/dx/cf/direct/AttributeListParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final attributeFactory:Lcom/android/dx/cf/direct/AttributeFactory;

.field private final cf:Lcom/android/dx/cf/direct/DirectClassFile;

.field private final context:I

.field private endOffset:I

.field private final list:Lcom/android/dx/cf/iface/StdAttributeList;

.field private observer:Lcom/android/dx/cf/iface/ParseObserver;

.field private final offset:I


# direct methods
.method public constructor <init>(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/direct/AttributeFactory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p3}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput-object p1, p0, Lcom/android/dx/cf/direct/AttributeListParser;->cf:Lcom/android/dx/cf/direct/DirectClassFile;

    .line 17
    .line 18
    iput p2, p0, Lcom/android/dx/cf/direct/AttributeListParser;->context:I

    .line 19
    .line 20
    iput p3, p0, Lcom/android/dx/cf/direct/AttributeListParser;->offset:I

    .line 21
    .line 22
    iput-object p4, p0, Lcom/android/dx/cf/direct/AttributeListParser;->attributeFactory:Lcom/android/dx/cf/direct/AttributeFactory;

    .line 23
    .line 24
    new-instance p1, Lcom/android/dx/cf/iface/StdAttributeList;

    .line 25
    .line 26
    invoke-direct {p1, v0}, Lcom/android/dx/cf/iface/StdAttributeList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/dx/cf/direct/AttributeListParser;->list:Lcom/android/dx/cf/iface/StdAttributeList;

    .line 30
    .line 31
    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/android/dx/cf/direct/AttributeListParser;->endOffset:I

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 36
    .line 37
    const-string p2, "attributeFactory == null"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 44
    .line 45
    const-string p2, "cf == null"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method private parse()V
    .locals 11

    .line 1
    const-string v0, "]"

    .line 2
    .line 3
    const-string v1, "...while parsing attributes["

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/dx/cf/direct/AttributeListParser;->list:Lcom/android/dx/cf/iface/StdAttributeList;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/android/dx/util/FixedSizeList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget v3, p0, Lcom/android/dx/cf/direct/AttributeListParser;->offset:I

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    add-int/2addr v3, v4

    .line 15
    iget-object v5, p0, Lcom/android/dx/cf/direct/AttributeListParser;->cf:Lcom/android/dx/cf/direct/DirectClassFile;

    .line 16
    .line 17
    invoke-virtual {v5}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-object v6, p0, Lcom/android/dx/cf/direct/AttributeListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    iget v7, p0, Lcom/android/dx/cf/direct/AttributeListParser;->offset:I

    .line 26
    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v9, "attributes_count: "

    .line 33
    .line 34
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    invoke-interface {v6, v5, v7, v4, v8}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    const/4 v4, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    :goto_0
    if-ge v6, v2, :cond_3

    .line 54
    .line 55
    :try_start_0
    iget-object v7, p0, Lcom/android/dx/cf/direct/AttributeListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    .line 56
    .line 57
    if-eqz v7, :cond_1

    .line 58
    .line 59
    new-instance v8, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v9, "\nattributes["

    .line 65
    .line 66
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v9, "]:\n"

    .line 73
    .line 74
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-interface {v7, v5, v3, v4, v8}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v7, p0, Lcom/android/dx/cf/direct/AttributeListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    .line 85
    .line 86
    const/4 v8, 0x1

    .line 87
    invoke-interface {v7, v8}, Lcom/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object v7, p0, Lcom/android/dx/cf/direct/AttributeListParser;->attributeFactory:Lcom/android/dx/cf/direct/AttributeFactory;

    .line 91
    .line 92
    iget-object v8, p0, Lcom/android/dx/cf/direct/AttributeListParser;->cf:Lcom/android/dx/cf/direct/DirectClassFile;

    .line 93
    .line 94
    iget v9, p0, Lcom/android/dx/cf/direct/AttributeListParser;->context:I

    .line 95
    .line 96
    iget-object v10, p0, Lcom/android/dx/cf/direct/AttributeListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    .line 97
    .line 98
    invoke-virtual {v7, v8, v9, v3, v10}, Lcom/android/dx/cf/direct/AttributeFactory;->parse(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-interface {v7}, Lcom/android/dx/cf/iface/Attribute;->byteLength()I

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    add-int/2addr v3, v8

    .line 107
    iget-object v8, p0, Lcom/android/dx/cf/direct/AttributeListParser;->list:Lcom/android/dx/cf/iface/StdAttributeList;

    .line 108
    .line 109
    invoke-virtual {v8, v6, v7}, Lcom/android/dx/cf/iface/StdAttributeList;->set(ILcom/android/dx/cf/iface/Attribute;)V

    .line 110
    .line 111
    .line 112
    iget-object v7, p0, Lcom/android/dx/cf/direct/AttributeListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    .line 113
    .line 114
    if-eqz v7, :cond_2

    .line 115
    .line 116
    const/4 v8, -0x1

    .line 117
    invoke-interface {v7, v8}, Lcom/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 118
    .line 119
    .line 120
    iget-object v7, p0, Lcom/android/dx/cf/direct/AttributeListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    .line 121
    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v9, "end attributes["

    .line 128
    .line 129
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v9, "]\n"

    .line 136
    .line 137
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-interface {v7, v5, v3, v4, v8}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V
    :try_end_0
    .catch Lcom/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :catch_0
    move-exception v2

    .line 151
    new-instance v3, Lcom/android/dx/cf/iface/ParseException;

    .line 152
    .line 153
    invoke-direct {v3, v2}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v3, v0}, Lcom/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v3

    .line 178
    :catch_1
    move-exception v2

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v2, v0}, Lcom/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw v2

    .line 201
    :cond_3
    iput v3, p0, Lcom/android/dx/cf/direct/AttributeListParser;->endOffset:I

    .line 202
    .line 203
    return-void
.end method

.method private parseIfNecessary()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/cf/direct/AttributeListParser;->endOffset:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/android/dx/cf/direct/AttributeListParser;->parse()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public getEndOffset()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/dx/cf/direct/AttributeListParser;->parseIfNecessary()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/dx/cf/direct/AttributeListParser;->endOffset:I

    .line 5
    .line 6
    return v0
.end method

.method public getList()Lcom/android/dx/cf/iface/StdAttributeList;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/dx/cf/direct/AttributeListParser;->parseIfNecessary()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/dx/cf/direct/AttributeListParser;->list:Lcom/android/dx/cf/iface/StdAttributeList;

    .line 5
    .line 6
    return-object v0
.end method

.method public setObserver(Lcom/android/dx/cf/iface/ParseObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/dx/cf/direct/AttributeListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    .line 2
    .line 3
    return-void
.end method
