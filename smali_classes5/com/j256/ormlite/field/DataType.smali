.class public final enum Lcom/j256/ormlite/field/DataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/j256/ormlite/field/DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/j256/ormlite/field/DataType;

.field public static final enum BIG_DECIMAL:Lcom/j256/ormlite/field/DataType;

.field public static final enum BIG_DECIMAL_NUMERIC:Lcom/j256/ormlite/field/DataType;

.field public static final enum BIG_INTEGER:Lcom/j256/ormlite/field/DataType;

.field public static final enum BOOLEAN:Lcom/j256/ormlite/field/DataType;

.field public static final enum BOOLEAN_CHAR:Lcom/j256/ormlite/field/DataType;

.field public static final enum BOOLEAN_INTEGER:Lcom/j256/ormlite/field/DataType;

.field public static final enum BOOLEAN_OBJ:Lcom/j256/ormlite/field/DataType;

.field public static final enum BYTE:Lcom/j256/ormlite/field/DataType;

.field public static final enum BYTE_ARRAY:Lcom/j256/ormlite/field/DataType;

.field public static final enum BYTE_OBJ:Lcom/j256/ormlite/field/DataType;

.field public static final enum CHAR:Lcom/j256/ormlite/field/DataType;

.field public static final enum CHAR_OBJ:Lcom/j256/ormlite/field/DataType;

.field public static final enum CURRENCY:Lcom/j256/ormlite/field/DataType;

.field public static final enum DATE:Lcom/j256/ormlite/field/DataType;

.field public static final enum DATE_INTEGER:Lcom/j256/ormlite/field/DataType;

.field public static final enum DATE_LONG:Lcom/j256/ormlite/field/DataType;

.field public static final enum DATE_STRING:Lcom/j256/ormlite/field/DataType;

.field public static final enum DATE_TIME:Lcom/j256/ormlite/field/DataType;

.field public static final enum DOUBLE:Lcom/j256/ormlite/field/DataType;

.field public static final enum DOUBLE_OBJ:Lcom/j256/ormlite/field/DataType;

.field public static final enum ENUM_INTEGER:Lcom/j256/ormlite/field/DataType;

.field public static final enum ENUM_NAME:Lcom/j256/ormlite/field/DataType;

.field public static final enum ENUM_STRING:Lcom/j256/ormlite/field/DataType;

.field public static final enum ENUM_TO_STRING:Lcom/j256/ormlite/field/DataType;

.field public static final enum FLOAT:Lcom/j256/ormlite/field/DataType;

.field public static final enum FLOAT_OBJ:Lcom/j256/ormlite/field/DataType;

.field public static final enum INTEGER:Lcom/j256/ormlite/field/DataType;

.field public static final enum INTEGER_OBJ:Lcom/j256/ormlite/field/DataType;

.field public static final enum LONG:Lcom/j256/ormlite/field/DataType;

.field public static final enum LONG_OBJ:Lcom/j256/ormlite/field/DataType;

.field public static final enum LONG_STRING:Lcom/j256/ormlite/field/DataType;

.field public static final enum SERIALIZABLE:Lcom/j256/ormlite/field/DataType;

.field public static final enum SHORT:Lcom/j256/ormlite/field/DataType;

.field public static final enum SHORT_OBJ:Lcom/j256/ormlite/field/DataType;

.field public static final enum SQL_DATE:Lcom/j256/ormlite/field/DataType;

.field public static final enum STRING:Lcom/j256/ormlite/field/DataType;

.field public static final enum STRING_BYTES:Lcom/j256/ormlite/field/DataType;

.field public static final enum TIME_STAMP:Lcom/j256/ormlite/field/DataType;

.field public static final enum TIME_STAMP_STRING:Lcom/j256/ormlite/field/DataType;

.field public static final enum UNKNOWN:Lcom/j256/ormlite/field/DataType;

.field public static final enum UUID:Lcom/j256/ormlite/field/DataType;

.field public static final enum UUID_NATIVE:Lcom/j256/ormlite/field/DataType;


# instance fields
.field private final dataPersister:Lcom/j256/ormlite/field/DataPersister;


# direct methods
.method static constructor <clinit>()V
    .locals 45

    .line 1
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    .line 2
    .line 3
    invoke-static {}, Lcom/j256/ormlite/field/types/StringType;->getSingleton()Lcom/j256/ormlite/field/types/StringType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "STRING"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v2, v3, v1}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/j256/ormlite/field/DataType;->STRING:Lcom/j256/ormlite/field/DataType;

    .line 14
    .line 15
    new-instance v1, Lcom/j256/ormlite/field/DataType;

    .line 16
    .line 17
    invoke-static {}, Lcom/j256/ormlite/field/types/LongStringType;->getSingleton()Lcom/j256/ormlite/field/types/LongStringType;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v4, "LONG_STRING"

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    invoke-direct {v1, v4, v5, v2}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lcom/j256/ormlite/field/DataType;->LONG_STRING:Lcom/j256/ormlite/field/DataType;

    .line 28
    .line 29
    new-instance v2, Lcom/j256/ormlite/field/DataType;

    .line 30
    .line 31
    invoke-static {}, Lcom/j256/ormlite/field/types/StringBytesType;->getSingleton()Lcom/j256/ormlite/field/types/StringBytesType;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v6, "STRING_BYTES"

    .line 36
    .line 37
    const/4 v7, 0x2

    .line 38
    invoke-direct {v2, v6, v7, v4}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 39
    .line 40
    .line 41
    sput-object v2, Lcom/j256/ormlite/field/DataType;->STRING_BYTES:Lcom/j256/ormlite/field/DataType;

    .line 42
    .line 43
    new-instance v4, Lcom/j256/ormlite/field/DataType;

    .line 44
    .line 45
    invoke-static {}, Lcom/j256/ormlite/field/types/BooleanType;->getSingleton()Lcom/j256/ormlite/field/types/BooleanType;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    const-string v8, "BOOLEAN"

    .line 50
    .line 51
    const/4 v9, 0x3

    .line 52
    invoke-direct {v4, v8, v9, v6}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 53
    .line 54
    .line 55
    sput-object v4, Lcom/j256/ormlite/field/DataType;->BOOLEAN:Lcom/j256/ormlite/field/DataType;

    .line 56
    .line 57
    new-instance v6, Lcom/j256/ormlite/field/DataType;

    .line 58
    .line 59
    invoke-static {}, Lcom/j256/ormlite/field/types/BooleanObjectType;->getSingleton()Lcom/j256/ormlite/field/types/BooleanObjectType;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    const-string v10, "BOOLEAN_OBJ"

    .line 64
    .line 65
    const/4 v11, 0x4

    .line 66
    invoke-direct {v6, v10, v11, v8}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 67
    .line 68
    .line 69
    sput-object v6, Lcom/j256/ormlite/field/DataType;->BOOLEAN_OBJ:Lcom/j256/ormlite/field/DataType;

    .line 70
    .line 71
    new-instance v8, Lcom/j256/ormlite/field/DataType;

    .line 72
    .line 73
    invoke-static {}, Lcom/j256/ormlite/field/types/BooleanCharType;->getSingleton()Lcom/j256/ormlite/field/types/BooleanCharType;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    const-string v12, "BOOLEAN_CHAR"

    .line 78
    .line 79
    const/4 v13, 0x5

    .line 80
    invoke-direct {v8, v12, v13, v10}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 81
    .line 82
    .line 83
    sput-object v8, Lcom/j256/ormlite/field/DataType;->BOOLEAN_CHAR:Lcom/j256/ormlite/field/DataType;

    .line 84
    .line 85
    new-instance v10, Lcom/j256/ormlite/field/DataType;

    .line 86
    .line 87
    invoke-static {}, Lcom/j256/ormlite/field/types/BooleanIntegerType;->getSingleton()Lcom/j256/ormlite/field/types/BooleanIntegerType;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    const-string v14, "BOOLEAN_INTEGER"

    .line 92
    .line 93
    const/4 v15, 0x6

    .line 94
    invoke-direct {v10, v14, v15, v12}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 95
    .line 96
    .line 97
    sput-object v10, Lcom/j256/ormlite/field/DataType;->BOOLEAN_INTEGER:Lcom/j256/ormlite/field/DataType;

    .line 98
    .line 99
    new-instance v12, Lcom/j256/ormlite/field/DataType;

    .line 100
    .line 101
    invoke-static {}, Lcom/j256/ormlite/field/types/ByteType;->getSingleton()Lcom/j256/ormlite/field/types/ByteType;

    .line 102
    .line 103
    .line 104
    move-result-object v14

    .line 105
    const-string v15, "BYTE"

    .line 106
    .line 107
    const/4 v13, 0x7

    .line 108
    invoke-direct {v12, v15, v13, v14}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 109
    .line 110
    .line 111
    sput-object v12, Lcom/j256/ormlite/field/DataType;->BYTE:Lcom/j256/ormlite/field/DataType;

    .line 112
    .line 113
    new-instance v14, Lcom/j256/ormlite/field/DataType;

    .line 114
    .line 115
    invoke-static {}, Lcom/j256/ormlite/field/types/ByteArrayType;->getSingleton()Lcom/j256/ormlite/field/types/ByteArrayType;

    .line 116
    .line 117
    .line 118
    move-result-object v15

    .line 119
    const-string v13, "BYTE_ARRAY"

    .line 120
    .line 121
    const/16 v11, 0x8

    .line 122
    .line 123
    invoke-direct {v14, v13, v11, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 124
    .line 125
    .line 126
    sput-object v14, Lcom/j256/ormlite/field/DataType;->BYTE_ARRAY:Lcom/j256/ormlite/field/DataType;

    .line 127
    .line 128
    new-instance v13, Lcom/j256/ormlite/field/DataType;

    .line 129
    .line 130
    invoke-static {}, Lcom/j256/ormlite/field/types/ByteObjectType;->getSingleton()Lcom/j256/ormlite/field/types/ByteObjectType;

    .line 131
    .line 132
    .line 133
    move-result-object v15

    .line 134
    const-string v11, "BYTE_OBJ"

    .line 135
    .line 136
    const/16 v9, 0x9

    .line 137
    .line 138
    invoke-direct {v13, v11, v9, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 139
    .line 140
    .line 141
    sput-object v13, Lcom/j256/ormlite/field/DataType;->BYTE_OBJ:Lcom/j256/ormlite/field/DataType;

    .line 142
    .line 143
    new-instance v11, Lcom/j256/ormlite/field/DataType;

    .line 144
    .line 145
    invoke-static {}, Lcom/j256/ormlite/field/types/CharType;->getSingleton()Lcom/j256/ormlite/field/types/CharType;

    .line 146
    .line 147
    .line 148
    move-result-object v15

    .line 149
    const-string v9, "CHAR"

    .line 150
    .line 151
    const/16 v7, 0xa

    .line 152
    .line 153
    invoke-direct {v11, v9, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 154
    .line 155
    .line 156
    sput-object v11, Lcom/j256/ormlite/field/DataType;->CHAR:Lcom/j256/ormlite/field/DataType;

    .line 157
    .line 158
    new-instance v9, Lcom/j256/ormlite/field/DataType;

    .line 159
    .line 160
    invoke-static {}, Lcom/j256/ormlite/field/types/CharacterObjectType;->getSingleton()Lcom/j256/ormlite/field/types/CharacterObjectType;

    .line 161
    .line 162
    .line 163
    move-result-object v15

    .line 164
    const-string v7, "CHAR_OBJ"

    .line 165
    .line 166
    const/16 v5, 0xb

    .line 167
    .line 168
    invoke-direct {v9, v7, v5, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 169
    .line 170
    .line 171
    sput-object v9, Lcom/j256/ormlite/field/DataType;->CHAR_OBJ:Lcom/j256/ormlite/field/DataType;

    .line 172
    .line 173
    new-instance v7, Lcom/j256/ormlite/field/DataType;

    .line 174
    .line 175
    invoke-static {}, Lcom/j256/ormlite/field/types/ShortType;->getSingleton()Lcom/j256/ormlite/field/types/ShortType;

    .line 176
    .line 177
    .line 178
    move-result-object v15

    .line 179
    const-string v5, "SHORT"

    .line 180
    .line 181
    const/16 v3, 0xc

    .line 182
    .line 183
    invoke-direct {v7, v5, v3, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 184
    .line 185
    .line 186
    sput-object v7, Lcom/j256/ormlite/field/DataType;->SHORT:Lcom/j256/ormlite/field/DataType;

    .line 187
    .line 188
    new-instance v5, Lcom/j256/ormlite/field/DataType;

    .line 189
    .line 190
    invoke-static {}, Lcom/j256/ormlite/field/types/ShortObjectType;->getSingleton()Lcom/j256/ormlite/field/types/ShortObjectType;

    .line 191
    .line 192
    .line 193
    move-result-object v15

    .line 194
    const-string v3, "SHORT_OBJ"

    .line 195
    .line 196
    move-object/from16 v16, v7

    .line 197
    .line 198
    const/16 v7, 0xd

    .line 199
    .line 200
    invoke-direct {v5, v3, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 201
    .line 202
    .line 203
    sput-object v5, Lcom/j256/ormlite/field/DataType;->SHORT_OBJ:Lcom/j256/ormlite/field/DataType;

    .line 204
    .line 205
    new-instance v3, Lcom/j256/ormlite/field/DataType;

    .line 206
    .line 207
    invoke-static {}, Lcom/j256/ormlite/field/types/IntType;->getSingleton()Lcom/j256/ormlite/field/types/IntType;

    .line 208
    .line 209
    .line 210
    move-result-object v15

    .line 211
    const-string v7, "INTEGER"

    .line 212
    .line 213
    move-object/from16 v17, v5

    .line 214
    .line 215
    const/16 v5, 0xe

    .line 216
    .line 217
    invoke-direct {v3, v7, v5, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 218
    .line 219
    .line 220
    sput-object v3, Lcom/j256/ormlite/field/DataType;->INTEGER:Lcom/j256/ormlite/field/DataType;

    .line 221
    .line 222
    new-instance v7, Lcom/j256/ormlite/field/DataType;

    .line 223
    .line 224
    invoke-static {}, Lcom/j256/ormlite/field/types/IntegerObjectType;->getSingleton()Lcom/j256/ormlite/field/types/IntegerObjectType;

    .line 225
    .line 226
    .line 227
    move-result-object v15

    .line 228
    const-string v5, "INTEGER_OBJ"

    .line 229
    .line 230
    move-object/from16 v18, v3

    .line 231
    .line 232
    const/16 v3, 0xf

    .line 233
    .line 234
    invoke-direct {v7, v5, v3, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 235
    .line 236
    .line 237
    sput-object v7, Lcom/j256/ormlite/field/DataType;->INTEGER_OBJ:Lcom/j256/ormlite/field/DataType;

    .line 238
    .line 239
    new-instance v5, Lcom/j256/ormlite/field/DataType;

    .line 240
    .line 241
    invoke-static {}, Lcom/j256/ormlite/field/types/LongType;->getSingleton()Lcom/j256/ormlite/field/types/LongType;

    .line 242
    .line 243
    .line 244
    move-result-object v15

    .line 245
    const-string v3, "LONG"

    .line 246
    .line 247
    move-object/from16 v19, v7

    .line 248
    .line 249
    const/16 v7, 0x10

    .line 250
    .line 251
    invoke-direct {v5, v3, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 252
    .line 253
    .line 254
    sput-object v5, Lcom/j256/ormlite/field/DataType;->LONG:Lcom/j256/ormlite/field/DataType;

    .line 255
    .line 256
    new-instance v3, Lcom/j256/ormlite/field/DataType;

    .line 257
    .line 258
    invoke-static {}, Lcom/j256/ormlite/field/types/LongObjectType;->getSingleton()Lcom/j256/ormlite/field/types/LongObjectType;

    .line 259
    .line 260
    .line 261
    move-result-object v15

    .line 262
    const-string v7, "LONG_OBJ"

    .line 263
    .line 264
    move-object/from16 v20, v5

    .line 265
    .line 266
    const/16 v5, 0x11

    .line 267
    .line 268
    invoke-direct {v3, v7, v5, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 269
    .line 270
    .line 271
    sput-object v3, Lcom/j256/ormlite/field/DataType;->LONG_OBJ:Lcom/j256/ormlite/field/DataType;

    .line 272
    .line 273
    new-instance v7, Lcom/j256/ormlite/field/DataType;

    .line 274
    .line 275
    invoke-static {}, Lcom/j256/ormlite/field/types/FloatType;->getSingleton()Lcom/j256/ormlite/field/types/FloatType;

    .line 276
    .line 277
    .line 278
    move-result-object v15

    .line 279
    const-string v5, "FLOAT"

    .line 280
    .line 281
    move-object/from16 v21, v3

    .line 282
    .line 283
    const/16 v3, 0x12

    .line 284
    .line 285
    invoke-direct {v7, v5, v3, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 286
    .line 287
    .line 288
    sput-object v7, Lcom/j256/ormlite/field/DataType;->FLOAT:Lcom/j256/ormlite/field/DataType;

    .line 289
    .line 290
    new-instance v5, Lcom/j256/ormlite/field/DataType;

    .line 291
    .line 292
    invoke-static {}, Lcom/j256/ormlite/field/types/FloatObjectType;->getSingleton()Lcom/j256/ormlite/field/types/FloatObjectType;

    .line 293
    .line 294
    .line 295
    move-result-object v15

    .line 296
    const-string v3, "FLOAT_OBJ"

    .line 297
    .line 298
    move-object/from16 v22, v7

    .line 299
    .line 300
    const/16 v7, 0x13

    .line 301
    .line 302
    invoke-direct {v5, v3, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 303
    .line 304
    .line 305
    sput-object v5, Lcom/j256/ormlite/field/DataType;->FLOAT_OBJ:Lcom/j256/ormlite/field/DataType;

    .line 306
    .line 307
    new-instance v3, Lcom/j256/ormlite/field/DataType;

    .line 308
    .line 309
    invoke-static {}, Lcom/j256/ormlite/field/types/DoubleType;->getSingleton()Lcom/j256/ormlite/field/types/DoubleType;

    .line 310
    .line 311
    .line 312
    move-result-object v15

    .line 313
    const-string v7, "DOUBLE"

    .line 314
    .line 315
    move-object/from16 v23, v5

    .line 316
    .line 317
    const/16 v5, 0x14

    .line 318
    .line 319
    invoke-direct {v3, v7, v5, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 320
    .line 321
    .line 322
    sput-object v3, Lcom/j256/ormlite/field/DataType;->DOUBLE:Lcom/j256/ormlite/field/DataType;

    .line 323
    .line 324
    new-instance v7, Lcom/j256/ormlite/field/DataType;

    .line 325
    .line 326
    invoke-static {}, Lcom/j256/ormlite/field/types/DoubleObjectType;->getSingleton()Lcom/j256/ormlite/field/types/DoubleObjectType;

    .line 327
    .line 328
    .line 329
    move-result-object v15

    .line 330
    const-string v5, "DOUBLE_OBJ"

    .line 331
    .line 332
    move-object/from16 v24, v3

    .line 333
    .line 334
    const/16 v3, 0x15

    .line 335
    .line 336
    invoke-direct {v7, v5, v3, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 337
    .line 338
    .line 339
    sput-object v7, Lcom/j256/ormlite/field/DataType;->DOUBLE_OBJ:Lcom/j256/ormlite/field/DataType;

    .line 340
    .line 341
    new-instance v5, Lcom/j256/ormlite/field/DataType;

    .line 342
    .line 343
    const/16 v15, 0x16

    .line 344
    .line 345
    invoke-static {}, Lcom/j256/ormlite/field/types/SerializableType;->getSingleton()Lcom/j256/ormlite/field/types/SerializableType;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    move-object/from16 v25, v7

    .line 350
    .line 351
    const-string v7, "SERIALIZABLE"

    .line 352
    .line 353
    invoke-direct {v5, v7, v15, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 354
    .line 355
    .line 356
    sput-object v5, Lcom/j256/ormlite/field/DataType;->SERIALIZABLE:Lcom/j256/ormlite/field/DataType;

    .line 357
    .line 358
    new-instance v3, Lcom/j256/ormlite/field/DataType;

    .line 359
    .line 360
    const/16 v7, 0x17

    .line 361
    .line 362
    invoke-static {}, Lcom/j256/ormlite/field/types/EnumStringType;->getSingleton()Lcom/j256/ormlite/field/types/EnumStringType;

    .line 363
    .line 364
    .line 365
    move-result-object v15

    .line 366
    move-object/from16 v26, v5

    .line 367
    .line 368
    const-string v5, "ENUM_STRING"

    .line 369
    .line 370
    invoke-direct {v3, v5, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 371
    .line 372
    .line 373
    sput-object v3, Lcom/j256/ormlite/field/DataType;->ENUM_STRING:Lcom/j256/ormlite/field/DataType;

    .line 374
    .line 375
    new-instance v5, Lcom/j256/ormlite/field/DataType;

    .line 376
    .line 377
    const/16 v7, 0x18

    .line 378
    .line 379
    invoke-static {}, Lcom/j256/ormlite/field/types/EnumStringType;->getSingleton()Lcom/j256/ormlite/field/types/EnumStringType;

    .line 380
    .line 381
    .line 382
    move-result-object v15

    .line 383
    move-object/from16 v27, v3

    .line 384
    .line 385
    const-string v3, "ENUM_NAME"

    .line 386
    .line 387
    invoke-direct {v5, v3, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 388
    .line 389
    .line 390
    sput-object v5, Lcom/j256/ormlite/field/DataType;->ENUM_NAME:Lcom/j256/ormlite/field/DataType;

    .line 391
    .line 392
    new-instance v3, Lcom/j256/ormlite/field/DataType;

    .line 393
    .line 394
    const/16 v7, 0x19

    .line 395
    .line 396
    invoke-static {}, Lcom/j256/ormlite/field/types/EnumToStringType;->getSingleton()Lcom/j256/ormlite/field/types/EnumToStringType;

    .line 397
    .line 398
    .line 399
    move-result-object v15

    .line 400
    move-object/from16 v28, v5

    .line 401
    .line 402
    const-string v5, "ENUM_TO_STRING"

    .line 403
    .line 404
    invoke-direct {v3, v5, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 405
    .line 406
    .line 407
    sput-object v3, Lcom/j256/ormlite/field/DataType;->ENUM_TO_STRING:Lcom/j256/ormlite/field/DataType;

    .line 408
    .line 409
    new-instance v5, Lcom/j256/ormlite/field/DataType;

    .line 410
    .line 411
    const/16 v7, 0x1a

    .line 412
    .line 413
    invoke-static {}, Lcom/j256/ormlite/field/types/EnumIntegerType;->getSingleton()Lcom/j256/ormlite/field/types/EnumIntegerType;

    .line 414
    .line 415
    .line 416
    move-result-object v15

    .line 417
    move-object/from16 v29, v3

    .line 418
    .line 419
    const-string v3, "ENUM_INTEGER"

    .line 420
    .line 421
    invoke-direct {v5, v3, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 422
    .line 423
    .line 424
    sput-object v5, Lcom/j256/ormlite/field/DataType;->ENUM_INTEGER:Lcom/j256/ormlite/field/DataType;

    .line 425
    .line 426
    new-instance v3, Lcom/j256/ormlite/field/DataType;

    .line 427
    .line 428
    const/16 v7, 0x1b

    .line 429
    .line 430
    invoke-static {}, Lcom/j256/ormlite/field/types/UuidType;->getSingleton()Lcom/j256/ormlite/field/types/UuidType;

    .line 431
    .line 432
    .line 433
    move-result-object v15

    .line 434
    move-object/from16 v30, v5

    .line 435
    .line 436
    const-string v5, "UUID"

    .line 437
    .line 438
    invoke-direct {v3, v5, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 439
    .line 440
    .line 441
    sput-object v3, Lcom/j256/ormlite/field/DataType;->UUID:Lcom/j256/ormlite/field/DataType;

    .line 442
    .line 443
    new-instance v5, Lcom/j256/ormlite/field/DataType;

    .line 444
    .line 445
    const/16 v7, 0x1c

    .line 446
    .line 447
    invoke-static {}, Lcom/j256/ormlite/field/types/NativeUuidType;->getSingleton()Lcom/j256/ormlite/field/types/NativeUuidType;

    .line 448
    .line 449
    .line 450
    move-result-object v15

    .line 451
    move-object/from16 v31, v3

    .line 452
    .line 453
    const-string v3, "UUID_NATIVE"

    .line 454
    .line 455
    invoke-direct {v5, v3, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 456
    .line 457
    .line 458
    sput-object v5, Lcom/j256/ormlite/field/DataType;->UUID_NATIVE:Lcom/j256/ormlite/field/DataType;

    .line 459
    .line 460
    new-instance v3, Lcom/j256/ormlite/field/DataType;

    .line 461
    .line 462
    const/16 v7, 0x1d

    .line 463
    .line 464
    invoke-static {}, Lcom/j256/ormlite/field/types/BigIntegerType;->getSingleton()Lcom/j256/ormlite/field/types/BigIntegerType;

    .line 465
    .line 466
    .line 467
    move-result-object v15

    .line 468
    move-object/from16 v32, v5

    .line 469
    .line 470
    const-string v5, "BIG_INTEGER"

    .line 471
    .line 472
    invoke-direct {v3, v5, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 473
    .line 474
    .line 475
    sput-object v3, Lcom/j256/ormlite/field/DataType;->BIG_INTEGER:Lcom/j256/ormlite/field/DataType;

    .line 476
    .line 477
    new-instance v5, Lcom/j256/ormlite/field/DataType;

    .line 478
    .line 479
    const/16 v7, 0x1e

    .line 480
    .line 481
    invoke-static {}, Lcom/j256/ormlite/field/types/BigDecimalStringType;->getSingleton()Lcom/j256/ormlite/field/types/BigDecimalStringType;

    .line 482
    .line 483
    .line 484
    move-result-object v15

    .line 485
    move-object/from16 v33, v3

    .line 486
    .line 487
    const-string v3, "BIG_DECIMAL"

    .line 488
    .line 489
    invoke-direct {v5, v3, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 490
    .line 491
    .line 492
    sput-object v5, Lcom/j256/ormlite/field/DataType;->BIG_DECIMAL:Lcom/j256/ormlite/field/DataType;

    .line 493
    .line 494
    new-instance v3, Lcom/j256/ormlite/field/DataType;

    .line 495
    .line 496
    const/16 v7, 0x1f

    .line 497
    .line 498
    invoke-static {}, Lcom/j256/ormlite/field/types/BigDecimalNumericType;->getSingleton()Lcom/j256/ormlite/field/types/BigDecimalNumericType;

    .line 499
    .line 500
    .line 501
    move-result-object v15

    .line 502
    move-object/from16 v34, v5

    .line 503
    .line 504
    const-string v5, "BIG_DECIMAL_NUMERIC"

    .line 505
    .line 506
    invoke-direct {v3, v5, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 507
    .line 508
    .line 509
    sput-object v3, Lcom/j256/ormlite/field/DataType;->BIG_DECIMAL_NUMERIC:Lcom/j256/ormlite/field/DataType;

    .line 510
    .line 511
    new-instance v5, Lcom/j256/ormlite/field/DataType;

    .line 512
    .line 513
    const/16 v7, 0x20

    .line 514
    .line 515
    invoke-static {}, Lcom/j256/ormlite/field/types/DateType;->getSingleton()Lcom/j256/ormlite/field/types/DateType;

    .line 516
    .line 517
    .line 518
    move-result-object v15

    .line 519
    move-object/from16 v35, v3

    .line 520
    .line 521
    const-string v3, "DATE"

    .line 522
    .line 523
    invoke-direct {v5, v3, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 524
    .line 525
    .line 526
    sput-object v5, Lcom/j256/ormlite/field/DataType;->DATE:Lcom/j256/ormlite/field/DataType;

    .line 527
    .line 528
    new-instance v3, Lcom/j256/ormlite/field/DataType;

    .line 529
    .line 530
    const/16 v7, 0x21

    .line 531
    .line 532
    invoke-static {}, Lcom/j256/ormlite/field/types/DateLongType;->getSingleton()Lcom/j256/ormlite/field/types/DateLongType;

    .line 533
    .line 534
    .line 535
    move-result-object v15

    .line 536
    move-object/from16 v36, v5

    .line 537
    .line 538
    const-string v5, "DATE_LONG"

    .line 539
    .line 540
    invoke-direct {v3, v5, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 541
    .line 542
    .line 543
    sput-object v3, Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;

    .line 544
    .line 545
    new-instance v5, Lcom/j256/ormlite/field/DataType;

    .line 546
    .line 547
    const/16 v7, 0x22

    .line 548
    .line 549
    invoke-static {}, Lcom/j256/ormlite/field/types/DateIntegerType;->getSingleton()Lcom/j256/ormlite/field/types/DateIntegerType;

    .line 550
    .line 551
    .line 552
    move-result-object v15

    .line 553
    move-object/from16 v37, v3

    .line 554
    .line 555
    const-string v3, "DATE_INTEGER"

    .line 556
    .line 557
    invoke-direct {v5, v3, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 558
    .line 559
    .line 560
    sput-object v5, Lcom/j256/ormlite/field/DataType;->DATE_INTEGER:Lcom/j256/ormlite/field/DataType;

    .line 561
    .line 562
    new-instance v3, Lcom/j256/ormlite/field/DataType;

    .line 563
    .line 564
    const/16 v7, 0x23

    .line 565
    .line 566
    invoke-static {}, Lcom/j256/ormlite/field/types/DateStringType;->getSingleton()Lcom/j256/ormlite/field/types/DateStringType;

    .line 567
    .line 568
    .line 569
    move-result-object v15

    .line 570
    move-object/from16 v38, v5

    .line 571
    .line 572
    const-string v5, "DATE_STRING"

    .line 573
    .line 574
    invoke-direct {v3, v5, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 575
    .line 576
    .line 577
    sput-object v3, Lcom/j256/ormlite/field/DataType;->DATE_STRING:Lcom/j256/ormlite/field/DataType;

    .line 578
    .line 579
    new-instance v5, Lcom/j256/ormlite/field/DataType;

    .line 580
    .line 581
    const/16 v7, 0x24

    .line 582
    .line 583
    invoke-static {}, Lcom/j256/ormlite/field/types/DateTimeType;->getSingleton()Lcom/j256/ormlite/field/types/DateTimeType;

    .line 584
    .line 585
    .line 586
    move-result-object v15

    .line 587
    move-object/from16 v39, v3

    .line 588
    .line 589
    const-string v3, "DATE_TIME"

    .line 590
    .line 591
    invoke-direct {v5, v3, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 592
    .line 593
    .line 594
    sput-object v5, Lcom/j256/ormlite/field/DataType;->DATE_TIME:Lcom/j256/ormlite/field/DataType;

    .line 595
    .line 596
    new-instance v3, Lcom/j256/ormlite/field/DataType;

    .line 597
    .line 598
    const/16 v7, 0x25

    .line 599
    .line 600
    invoke-static {}, Lcom/j256/ormlite/field/types/SqlDateType;->getSingleton()Lcom/j256/ormlite/field/types/SqlDateType;

    .line 601
    .line 602
    .line 603
    move-result-object v15

    .line 604
    move-object/from16 v40, v5

    .line 605
    .line 606
    const-string v5, "SQL_DATE"

    .line 607
    .line 608
    invoke-direct {v3, v5, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 609
    .line 610
    .line 611
    sput-object v3, Lcom/j256/ormlite/field/DataType;->SQL_DATE:Lcom/j256/ormlite/field/DataType;

    .line 612
    .line 613
    new-instance v5, Lcom/j256/ormlite/field/DataType;

    .line 614
    .line 615
    const/16 v7, 0x26

    .line 616
    .line 617
    invoke-static {}, Lcom/j256/ormlite/field/types/TimeStampType;->getSingleton()Lcom/j256/ormlite/field/types/TimeStampType;

    .line 618
    .line 619
    .line 620
    move-result-object v15

    .line 621
    move-object/from16 v41, v3

    .line 622
    .line 623
    const-string v3, "TIME_STAMP"

    .line 624
    .line 625
    invoke-direct {v5, v3, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 626
    .line 627
    .line 628
    sput-object v5, Lcom/j256/ormlite/field/DataType;->TIME_STAMP:Lcom/j256/ormlite/field/DataType;

    .line 629
    .line 630
    new-instance v3, Lcom/j256/ormlite/field/DataType;

    .line 631
    .line 632
    const/16 v7, 0x27

    .line 633
    .line 634
    invoke-static {}, Lcom/j256/ormlite/field/types/TimeStampStringType;->getSingleton()Lcom/j256/ormlite/field/types/TimeStampStringType;

    .line 635
    .line 636
    .line 637
    move-result-object v15

    .line 638
    move-object/from16 v42, v5

    .line 639
    .line 640
    const-string v5, "TIME_STAMP_STRING"

    .line 641
    .line 642
    invoke-direct {v3, v5, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 643
    .line 644
    .line 645
    sput-object v3, Lcom/j256/ormlite/field/DataType;->TIME_STAMP_STRING:Lcom/j256/ormlite/field/DataType;

    .line 646
    .line 647
    new-instance v5, Lcom/j256/ormlite/field/DataType;

    .line 648
    .line 649
    const/16 v7, 0x28

    .line 650
    .line 651
    invoke-static {}, Lcom/j256/ormlite/field/types/CurrencyType;->getSingleton()Lcom/j256/ormlite/field/types/CurrencyType;

    .line 652
    .line 653
    .line 654
    move-result-object v15

    .line 655
    move-object/from16 v43, v3

    .line 656
    .line 657
    const-string v3, "CURRENCY"

    .line 658
    .line 659
    invoke-direct {v5, v3, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 660
    .line 661
    .line 662
    sput-object v5, Lcom/j256/ormlite/field/DataType;->CURRENCY:Lcom/j256/ormlite/field/DataType;

    .line 663
    .line 664
    new-instance v3, Lcom/j256/ormlite/field/DataType;

    .line 665
    .line 666
    const/16 v7, 0x29

    .line 667
    .line 668
    const/4 v15, 0x0

    .line 669
    move-object/from16 v44, v5

    .line 670
    .line 671
    const-string v5, "UNKNOWN"

    .line 672
    .line 673
    invoke-direct {v3, v5, v7, v15}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    .line 674
    .line 675
    .line 676
    sput-object v3, Lcom/j256/ormlite/field/DataType;->UNKNOWN:Lcom/j256/ormlite/field/DataType;

    .line 677
    .line 678
    const/16 v5, 0x2a

    .line 679
    .line 680
    new-array v5, v5, [Lcom/j256/ormlite/field/DataType;

    .line 681
    .line 682
    const/4 v7, 0x0

    .line 683
    aput-object v0, v5, v7

    .line 684
    .line 685
    const/4 v0, 0x1

    .line 686
    aput-object v1, v5, v0

    .line 687
    .line 688
    const/4 v0, 0x2

    .line 689
    aput-object v2, v5, v0

    .line 690
    .line 691
    const/4 v0, 0x3

    .line 692
    aput-object v4, v5, v0

    .line 693
    .line 694
    const/4 v0, 0x4

    .line 695
    aput-object v6, v5, v0

    .line 696
    .line 697
    const/4 v0, 0x5

    .line 698
    aput-object v8, v5, v0

    .line 699
    .line 700
    const/4 v0, 0x6

    .line 701
    aput-object v10, v5, v0

    .line 702
    .line 703
    const/4 v0, 0x7

    .line 704
    aput-object v12, v5, v0

    .line 705
    .line 706
    const/16 v0, 0x8

    .line 707
    .line 708
    aput-object v14, v5, v0

    .line 709
    .line 710
    const/16 v0, 0x9

    .line 711
    .line 712
    aput-object v13, v5, v0

    .line 713
    .line 714
    const/16 v0, 0xa

    .line 715
    .line 716
    aput-object v11, v5, v0

    .line 717
    .line 718
    const/16 v0, 0xb

    .line 719
    .line 720
    aput-object v9, v5, v0

    .line 721
    .line 722
    const/16 v0, 0xc

    .line 723
    .line 724
    aput-object v16, v5, v0

    .line 725
    .line 726
    const/16 v0, 0xd

    .line 727
    .line 728
    aput-object v17, v5, v0

    .line 729
    .line 730
    const/16 v0, 0xe

    .line 731
    .line 732
    aput-object v18, v5, v0

    .line 733
    .line 734
    const/16 v0, 0xf

    .line 735
    .line 736
    aput-object v19, v5, v0

    .line 737
    .line 738
    const/16 v0, 0x10

    .line 739
    .line 740
    aput-object v20, v5, v0

    .line 741
    .line 742
    const/16 v0, 0x11

    .line 743
    .line 744
    aput-object v21, v5, v0

    .line 745
    .line 746
    const/16 v0, 0x12

    .line 747
    .line 748
    aput-object v22, v5, v0

    .line 749
    .line 750
    const/16 v0, 0x13

    .line 751
    .line 752
    aput-object v23, v5, v0

    .line 753
    .line 754
    const/16 v0, 0x14

    .line 755
    .line 756
    aput-object v24, v5, v0

    .line 757
    .line 758
    const/16 v0, 0x15

    .line 759
    .line 760
    aput-object v25, v5, v0

    .line 761
    .line 762
    const/16 v0, 0x16

    .line 763
    .line 764
    aput-object v26, v5, v0

    .line 765
    .line 766
    const/16 v0, 0x17

    .line 767
    .line 768
    aput-object v27, v5, v0

    .line 769
    .line 770
    const/16 v0, 0x18

    .line 771
    .line 772
    aput-object v28, v5, v0

    .line 773
    .line 774
    const/16 v0, 0x19

    .line 775
    .line 776
    aput-object v29, v5, v0

    .line 777
    .line 778
    const/16 v0, 0x1a

    .line 779
    .line 780
    aput-object v30, v5, v0

    .line 781
    .line 782
    const/16 v0, 0x1b

    .line 783
    .line 784
    aput-object v31, v5, v0

    .line 785
    .line 786
    const/16 v0, 0x1c

    .line 787
    .line 788
    aput-object v32, v5, v0

    .line 789
    .line 790
    const/16 v0, 0x1d

    .line 791
    .line 792
    aput-object v33, v5, v0

    .line 793
    .line 794
    const/16 v0, 0x1e

    .line 795
    .line 796
    aput-object v34, v5, v0

    .line 797
    .line 798
    const/16 v0, 0x1f

    .line 799
    .line 800
    aput-object v35, v5, v0

    .line 801
    .line 802
    const/16 v0, 0x20

    .line 803
    .line 804
    aput-object v36, v5, v0

    .line 805
    .line 806
    const/16 v0, 0x21

    .line 807
    .line 808
    aput-object v37, v5, v0

    .line 809
    .line 810
    const/16 v0, 0x22

    .line 811
    .line 812
    aput-object v38, v5, v0

    .line 813
    .line 814
    const/16 v0, 0x23

    .line 815
    .line 816
    aput-object v39, v5, v0

    .line 817
    .line 818
    const/16 v0, 0x24

    .line 819
    .line 820
    aput-object v40, v5, v0

    .line 821
    .line 822
    const/16 v0, 0x25

    .line 823
    .line 824
    aput-object v41, v5, v0

    .line 825
    .line 826
    const/16 v0, 0x26

    .line 827
    .line 828
    aput-object v42, v5, v0

    .line 829
    .line 830
    const/16 v0, 0x27

    .line 831
    .line 832
    aput-object v43, v5, v0

    .line 833
    .line 834
    const/16 v0, 0x28

    .line 835
    .line 836
    aput-object v44, v5, v0

    .line 837
    .line 838
    const/16 v0, 0x29

    .line 839
    .line 840
    aput-object v3, v5, v0

    .line 841
    .line 842
    sput-object v5, Lcom/j256/ormlite/field/DataType;->$VALUES:[Lcom/j256/ormlite/field/DataType;

    .line 843
    .line 844
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/field/DataPersister;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/j256/ormlite/field/DataType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/j256/ormlite/field/DataType;
    .locals 1

    .line 1
    const-class v0, Lcom/j256/ormlite/field/DataType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/j256/ormlite/field/DataType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/j256/ormlite/field/DataType;
    .locals 1

    .line 1
    sget-object v0, Lcom/j256/ormlite/field/DataType;->$VALUES:[Lcom/j256/ormlite/field/DataType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/j256/ormlite/field/DataType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/j256/ormlite/field/DataType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getDataPersister()Lcom/j256/ormlite/field/DataPersister;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/field/DataType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    .line 2
    .line 3
    return-object v0
.end method
