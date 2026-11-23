.class public Lcom/j256/ormlite/misc/JavaxPersistenceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private stringNotEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-lez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method


# virtual methods
.method public createFieldConfig(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-class v3, Ljavax/persistence/Column;

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Ljavax/persistence/Column;

    .line 14
    .line 15
    const-class v4, Ljavax/persistence/Basic;

    .line 16
    .line 17
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Ljavax/persistence/Basic;

    .line 22
    .line 23
    const-class v5, Ljavax/persistence/Id;

    .line 24
    .line 25
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Ljavax/persistence/Id;

    .line 30
    .line 31
    const-class v6, Ljavax/persistence/GeneratedValue;

    .line 32
    .line 33
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Ljavax/persistence/GeneratedValue;

    .line 38
    .line 39
    const-class v7, Ljavax/persistence/OneToOne;

    .line 40
    .line 41
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    check-cast v7, Ljavax/persistence/OneToOne;

    .line 46
    .line 47
    const-class v8, Ljavax/persistence/OneToMany;

    .line 48
    .line 49
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    check-cast v8, Ljavax/persistence/OneToMany;

    .line 54
    .line 55
    const-class v9, Ljavax/persistence/ManyToOne;

    .line 56
    .line 57
    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    check-cast v9, Ljavax/persistence/ManyToOne;

    .line 62
    .line 63
    const-class v10, Ljavax/persistence/JoinColumn;

    .line 64
    .line 65
    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    check-cast v10, Ljavax/persistence/JoinColumn;

    .line 70
    .line 71
    const-class v11, Ljavax/persistence/Enumerated;

    .line 72
    .line 73
    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    check-cast v11, Ljavax/persistence/Enumerated;

    .line 78
    .line 79
    const-class v12, Ljavax/persistence/Version;

    .line 80
    .line 81
    invoke-virtual {v2, v12}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    check-cast v12, Ljavax/persistence/Version;

    .line 86
    .line 87
    if-nez v3, :cond_0

    .line 88
    .line 89
    if-nez v4, :cond_0

    .line 90
    .line 91
    if-nez v5, :cond_0

    .line 92
    .line 93
    if-nez v7, :cond_0

    .line 94
    .line 95
    if-nez v8, :cond_0

    .line 96
    .line 97
    if-nez v9, :cond_0

    .line 98
    .line 99
    if-nez v11, :cond_0

    .line 100
    .line 101
    if-nez v12, :cond_0

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    return-object v1

    .line 105
    :cond_0
    new-instance v13, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 106
    .line 107
    invoke-direct {v13}, Lcom/j256/ormlite/field/DatabaseFieldConfig;-><init>()V

    .line 108
    .line 109
    .line 110
    const/4 v14, 0x1

    .line 111
    invoke-virtual {v13, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setJavaxEntity(Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v15

    .line 118
    invoke-interface/range {p1 .. p1}, Lcom/j256/ormlite/db/DatabaseType;->isEntityNamesMustBeUpCase()Z

    .line 119
    .line 120
    .line 121
    move-result v16

    .line 122
    if-eqz v16, :cond_1

    .line 123
    .line 124
    invoke-interface {v1, v15}, Lcom/j256/ormlite/db/DatabaseType;->upCaseEntityName(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v15

    .line 128
    :cond_1
    invoke-virtual {v13, v15}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setFieldName(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    if-eqz v3, :cond_4

    .line 132
    .line 133
    invoke-interface {v3}, Ljavax/persistence/Column;->name()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v15

    .line 137
    invoke-direct {v0, v15}, Lcom/j256/ormlite/misc/JavaxPersistenceImpl;->stringNotEmpty(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v15

    .line 141
    if-eqz v15, :cond_2

    .line 142
    .line 143
    invoke-interface {v3}, Ljavax/persistence/Column;->name()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v15

    .line 147
    invoke-virtual {v13, v15}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnName(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_2
    invoke-interface {v3}, Ljavax/persistence/Column;->columnDefinition()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v15

    .line 154
    invoke-direct {v0, v15}, Lcom/j256/ormlite/misc/JavaxPersistenceImpl;->stringNotEmpty(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v15

    .line 158
    if-eqz v15, :cond_3

    .line 159
    .line 160
    invoke-interface {v3}, Ljavax/persistence/Column;->columnDefinition()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v15

    .line 164
    invoke-virtual {v13, v15}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnDefinition(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_3
    invoke-interface {v3}, Ljavax/persistence/Column;->length()I

    .line 168
    .line 169
    .line 170
    move-result v15

    .line 171
    invoke-virtual {v13, v15}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setWidth(I)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v3}, Ljavax/persistence/Column;->nullable()Z

    .line 175
    .line 176
    .line 177
    move-result v15

    .line 178
    invoke-virtual {v13, v15}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setCanBeNull(Z)V

    .line 179
    .line 180
    .line 181
    invoke-interface {v3}, Ljavax/persistence/Column;->unique()Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    invoke-virtual {v13, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUnique(Z)V

    .line 186
    .line 187
    .line 188
    :cond_4
    if-eqz v4, :cond_5

    .line 189
    .line 190
    invoke-interface {v4}, Ljavax/persistence/Basic;->optional()Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    invoke-virtual {v13, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setCanBeNull(Z)V

    .line 195
    .line 196
    .line 197
    :cond_5
    if-eqz v5, :cond_7

    .line 198
    .line 199
    if-nez v6, :cond_6

    .line 200
    .line 201
    invoke-virtual {v13, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setId(Z)V

    .line 202
    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_6
    invoke-virtual {v13, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setGeneratedId(Z)V

    .line 206
    .line 207
    .line 208
    :cond_7
    :goto_0
    if-eqz v8, :cond_9

    .line 209
    .line 210
    invoke-virtual {v13, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollection(Z)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v8}, Ljavax/persistence/OneToMany;->mappedBy()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-direct {v0, v3}, Lcom/j256/ormlite/misc/JavaxPersistenceImpl;->stringNotEmpty(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    if-eqz v4, :cond_8

    .line 222
    .line 223
    invoke-virtual {v13, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionForeignFieldName(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_8
    invoke-interface {v8}, Ljavax/persistence/OneToMany;->fetch()Ljavax/persistence/FetchType;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    sget-object v4, Ljavax/persistence/FetchType;->EAGER:Ljavax/persistence/FetchType;

    .line 231
    .line 232
    if-ne v3, v4, :cond_f

    .line 233
    .line 234
    invoke-virtual {v13, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionEager(Z)V

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_9
    if-nez v7, :cond_a

    .line 239
    .line 240
    if-eqz v9, :cond_f

    .line 241
    .line 242
    :cond_a
    const-class v3, Ljava/util/Collection;

    .line 243
    .line 244
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    if-nez v3, :cond_d

    .line 253
    .line 254
    const-class v3, Lcom/j256/ormlite/dao/ForeignCollection;

    .line 255
    .line 256
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-eqz v3, :cond_b

    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_b
    invoke-virtual {v13, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeign(Z)V

    .line 268
    .line 269
    .line 270
    if-eqz v10, :cond_f

    .line 271
    .line 272
    invoke-interface {v10}, Ljavax/persistence/JoinColumn;->name()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-direct {v0, v3}, Lcom/j256/ormlite/misc/JavaxPersistenceImpl;->stringNotEmpty(Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    if-eqz v3, :cond_c

    .line 281
    .line 282
    invoke-interface {v10}, Ljavax/persistence/JoinColumn;->name()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-virtual {v13, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnName(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    :cond_c
    invoke-interface {v10}, Ljavax/persistence/JoinColumn;->nullable()Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    invoke-virtual {v13, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setCanBeNull(Z)V

    .line 294
    .line 295
    .line 296
    invoke-interface {v10}, Ljavax/persistence/JoinColumn;->unique()Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    invoke-virtual {v13, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUnique(Z)V

    .line 301
    .line 302
    .line 303
    goto :goto_2

    .line 304
    :cond_d
    :goto_1
    invoke-virtual {v13, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollection(Z)V

    .line 305
    .line 306
    .line 307
    if-eqz v10, :cond_e

    .line 308
    .line 309
    invoke-interface {v10}, Ljavax/persistence/JoinColumn;->name()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    invoke-direct {v0, v3}, Lcom/j256/ormlite/misc/JavaxPersistenceImpl;->stringNotEmpty(Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    if-eqz v3, :cond_e

    .line 318
    .line 319
    invoke-interface {v10}, Ljavax/persistence/JoinColumn;->name()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    invoke-virtual {v13, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionColumnName(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    :cond_e
    if-eqz v9, :cond_f

    .line 327
    .line 328
    invoke-interface {v9}, Ljavax/persistence/ManyToOne;->fetch()Ljavax/persistence/FetchType;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    if-eqz v3, :cond_f

    .line 333
    .line 334
    sget-object v4, Ljavax/persistence/FetchType;->EAGER:Ljavax/persistence/FetchType;

    .line 335
    .line 336
    if-ne v3, v4, :cond_f

    .line 337
    .line 338
    invoke-virtual {v13, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionEager(Z)V

    .line 339
    .line 340
    .line 341
    :cond_f
    :goto_2
    if-eqz v11, :cond_11

    .line 342
    .line 343
    invoke-interface {v11}, Ljavax/persistence/Enumerated;->value()Ljavax/persistence/EnumType;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    if-eqz v3, :cond_10

    .line 348
    .line 349
    sget-object v4, Ljavax/persistence/EnumType;->STRING:Ljavax/persistence/EnumType;

    .line 350
    .line 351
    if-ne v3, v4, :cond_10

    .line 352
    .line 353
    sget-object v3, Lcom/j256/ormlite/field/DataType;->ENUM_STRING:Lcom/j256/ormlite/field/DataType;

    .line 354
    .line 355
    invoke-virtual {v13, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDataType(Lcom/j256/ormlite/field/DataType;)V

    .line 356
    .line 357
    .line 358
    goto :goto_3

    .line 359
    :cond_10
    sget-object v3, Lcom/j256/ormlite/field/DataType;->ENUM_INTEGER:Lcom/j256/ormlite/field/DataType;

    .line 360
    .line 361
    invoke-virtual {v13, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDataType(Lcom/j256/ormlite/field/DataType;)V

    .line 362
    .line 363
    .line 364
    :cond_11
    :goto_3
    if-eqz v12, :cond_12

    .line 365
    .line 366
    invoke-virtual {v13, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setVersion(Z)V

    .line 367
    .line 368
    .line 369
    :cond_12
    invoke-virtual {v13}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    if-nez v3, :cond_13

    .line 374
    .line 375
    invoke-static/range {p2 .. p2}, Lcom/j256/ormlite/field/DataPersisterManager;->lookupForField(Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DataPersister;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-virtual {v13, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDataPersister(Lcom/j256/ormlite/field/DataPersister;)V

    .line 380
    .line 381
    .line 382
    :cond_13
    const/4 v3, 0x0

    .line 383
    invoke-static {v2, v1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findGetMethod(Ljava/lang/reflect/Field;Lcom/j256/ormlite/db/DatabaseType;Z)Ljava/lang/reflect/Method;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    if-eqz v4, :cond_14

    .line 388
    .line 389
    invoke-static {v2, v1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findSetMethod(Ljava/lang/reflect/Field;Lcom/j256/ormlite/db/DatabaseType;Z)Ljava/lang/reflect/Method;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    if-eqz v1, :cond_14

    .line 394
    .line 395
    goto :goto_4

    .line 396
    :cond_14
    const/4 v14, 0x0

    .line 397
    :goto_4
    invoke-virtual {v13, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUseGetSet(Z)V

    .line 398
    .line 399
    .line 400
    return-object v13
.end method

.method public getEntityName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const-class v0, Ljavax/persistence/Entity;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljavax/persistence/Entity;

    .line 8
    .line 9
    const-class v1, Ljavax/persistence/Table;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljavax/persistence/Table;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljavax/persistence/Entity;->name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {p0, v1}, Lcom/j256/ormlite/misc/JavaxPersistenceImpl;->stringNotEmpty(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljavax/persistence/Entity;->name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_0
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-interface {p1}, Ljavax/persistence/Table;->name()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p0, v0}, Lcom/j256/ormlite/misc/JavaxPersistenceImpl;->stringNotEmpty(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-interface {p1}, Ljavax/persistence/Table;->name()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_1
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method
