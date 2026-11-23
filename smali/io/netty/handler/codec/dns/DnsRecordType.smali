.class public Lio/netty/handler/codec/dns/DnsRecordType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/netty/handler/codec/dns/DnsRecordType;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final AAAA:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final AFSDB:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final ANY:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final APL:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final AXFR:Lio/netty/handler/codec/dns/DnsRecordType;

.field private static final BY_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/handler/codec/dns/DnsRecordType;",
            ">;"
        }
    .end annotation
.end field

.field private static final BY_TYPE:Lio/netty/util/collection/IntObjectHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/IntObjectHashMap<",
            "Lio/netty/handler/codec/dns/DnsRecordType;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAA:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final CERT:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final CNAME:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final DHCID:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final DLV:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final DNAME:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final DNSKEY:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final DS:Lio/netty/handler/codec/dns/DnsRecordType;

.field private static final EXPECTED:Ljava/lang/String;

.field public static final HIP:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final IPSECKEY:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final IXFR:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final KEY:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final KX:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final LOC:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final MX:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final NAPTR:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final NS:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final NSEC:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final NSEC3:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final NSEC3PARAM:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final OPT:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final PTR:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final RP:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final RRSIG:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final SIG:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final SOA:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final SPF:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final SRV:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final SSHFP:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final TA:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final TKEY:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final TLSA:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final TSIG:Lio/netty/handler/codec/dns/DnsRecordType;

.field public static final TXT:Lio/netty/handler/codec/dns/DnsRecordType;


# instance fields
.field private final intValue:I

.field private final name:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 43

    .line 1
    new-instance v0, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 2
    .line 3
    const-string v1, "A"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v2, v1}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/netty/handler/codec/dns/DnsRecordType;->A:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 10
    .line 11
    new-instance v1, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 12
    .line 13
    const-string v3, "NS"

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    invoke-direct {v1, v4, v3}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lio/netty/handler/codec/dns/DnsRecordType;->NS:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 20
    .line 21
    new-instance v3, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 22
    .line 23
    const-string v5, "CNAME"

    .line 24
    .line 25
    const/4 v6, 0x5

    .line 26
    invoke-direct {v3, v6, v5}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lio/netty/handler/codec/dns/DnsRecordType;->CNAME:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 30
    .line 31
    new-instance v5, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 32
    .line 33
    const-string v7, "SOA"

    .line 34
    .line 35
    const/4 v8, 0x6

    .line 36
    invoke-direct {v5, v8, v7}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lio/netty/handler/codec/dns/DnsRecordType;->SOA:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 40
    .line 41
    new-instance v7, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 42
    .line 43
    const-string v9, "PTR"

    .line 44
    .line 45
    const/16 v10, 0xc

    .line 46
    .line 47
    invoke-direct {v7, v10, v9}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sput-object v7, Lio/netty/handler/codec/dns/DnsRecordType;->PTR:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 51
    .line 52
    new-instance v9, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 53
    .line 54
    const-string v11, "MX"

    .line 55
    .line 56
    const/16 v12, 0xf

    .line 57
    .line 58
    invoke-direct {v9, v12, v11}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sput-object v9, Lio/netty/handler/codec/dns/DnsRecordType;->MX:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 62
    .line 63
    new-instance v11, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 64
    .line 65
    const-string v13, "TXT"

    .line 66
    .line 67
    const/16 v14, 0x10

    .line 68
    .line 69
    invoke-direct {v11, v14, v13}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sput-object v11, Lio/netty/handler/codec/dns/DnsRecordType;->TXT:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 73
    .line 74
    new-instance v13, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 75
    .line 76
    const-string v15, "RP"

    .line 77
    .line 78
    const/16 v14, 0x11

    .line 79
    .line 80
    invoke-direct {v13, v14, v15}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v13, Lio/netty/handler/codec/dns/DnsRecordType;->RP:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 84
    .line 85
    new-instance v15, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 86
    .line 87
    const-string v14, "AFSDB"

    .line 88
    .line 89
    const/16 v12, 0x12

    .line 90
    .line 91
    invoke-direct {v15, v12, v14}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sput-object v15, Lio/netty/handler/codec/dns/DnsRecordType;->AFSDB:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 95
    .line 96
    new-instance v14, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 97
    .line 98
    const-string v12, "SIG"

    .line 99
    .line 100
    const/16 v10, 0x18

    .line 101
    .line 102
    invoke-direct {v14, v10, v12}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sput-object v14, Lio/netty/handler/codec/dns/DnsRecordType;->SIG:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 106
    .line 107
    new-instance v12, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 108
    .line 109
    const-string v10, "KEY"

    .line 110
    .line 111
    const/16 v8, 0x19

    .line 112
    .line 113
    invoke-direct {v12, v8, v10}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sput-object v12, Lio/netty/handler/codec/dns/DnsRecordType;->KEY:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 117
    .line 118
    new-instance v10, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 119
    .line 120
    const-string v8, "AAAA"

    .line 121
    .line 122
    const/16 v6, 0x1c

    .line 123
    .line 124
    invoke-direct {v10, v6, v8}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sput-object v10, Lio/netty/handler/codec/dns/DnsRecordType;->AAAA:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 128
    .line 129
    new-instance v8, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 130
    .line 131
    const-string v6, "LOC"

    .line 132
    .line 133
    const/16 v4, 0x1d

    .line 134
    .line 135
    invoke-direct {v8, v4, v6}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    sput-object v8, Lio/netty/handler/codec/dns/DnsRecordType;->LOC:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 139
    .line 140
    new-instance v6, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 141
    .line 142
    const-string v4, "SRV"

    .line 143
    .line 144
    const/16 v2, 0x21

    .line 145
    .line 146
    invoke-direct {v6, v2, v4}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    sput-object v6, Lio/netty/handler/codec/dns/DnsRecordType;->SRV:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 150
    .line 151
    new-instance v4, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 152
    .line 153
    const-string v2, "NAPTR"

    .line 154
    .line 155
    move-object/from16 v16, v6

    .line 156
    .line 157
    const/16 v6, 0x23

    .line 158
    .line 159
    invoke-direct {v4, v6, v2}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    sput-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->NAPTR:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 163
    .line 164
    new-instance v2, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 165
    .line 166
    const-string v6, "KX"

    .line 167
    .line 168
    move-object/from16 v17, v4

    .line 169
    .line 170
    const/16 v4, 0x24

    .line 171
    .line 172
    invoke-direct {v2, v4, v6}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sput-object v2, Lio/netty/handler/codec/dns/DnsRecordType;->KX:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 176
    .line 177
    new-instance v6, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 178
    .line 179
    const-string v4, "CERT"

    .line 180
    .line 181
    move-object/from16 v18, v2

    .line 182
    .line 183
    const/16 v2, 0x25

    .line 184
    .line 185
    invoke-direct {v6, v2, v4}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 186
    .line 187
    .line 188
    sput-object v6, Lio/netty/handler/codec/dns/DnsRecordType;->CERT:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 189
    .line 190
    new-instance v4, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 191
    .line 192
    const-string v2, "DNAME"

    .line 193
    .line 194
    move-object/from16 v19, v6

    .line 195
    .line 196
    const/16 v6, 0x27

    .line 197
    .line 198
    invoke-direct {v4, v6, v2}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    sput-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->DNAME:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 202
    .line 203
    new-instance v2, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 204
    .line 205
    const-string v6, "OPT"

    .line 206
    .line 207
    move-object/from16 v20, v4

    .line 208
    .line 209
    const/16 v4, 0x29

    .line 210
    .line 211
    invoke-direct {v2, v4, v6}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    sput-object v2, Lio/netty/handler/codec/dns/DnsRecordType;->OPT:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 215
    .line 216
    new-instance v6, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 217
    .line 218
    const/16 v4, 0x2a

    .line 219
    .line 220
    move-object/from16 v21, v2

    .line 221
    .line 222
    const-string v2, "APL"

    .line 223
    .line 224
    invoke-direct {v6, v4, v2}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    sput-object v6, Lio/netty/handler/codec/dns/DnsRecordType;->APL:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 228
    .line 229
    new-instance v2, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 230
    .line 231
    const/16 v4, 0x2b

    .line 232
    .line 233
    move-object/from16 v22, v6

    .line 234
    .line 235
    const-string v6, "DS"

    .line 236
    .line 237
    invoke-direct {v2, v4, v6}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    sput-object v2, Lio/netty/handler/codec/dns/DnsRecordType;->DS:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 241
    .line 242
    new-instance v4, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 243
    .line 244
    const/16 v6, 0x2c

    .line 245
    .line 246
    move-object/from16 v23, v2

    .line 247
    .line 248
    const-string v2, "SSHFP"

    .line 249
    .line 250
    invoke-direct {v4, v6, v2}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 251
    .line 252
    .line 253
    sput-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->SSHFP:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 254
    .line 255
    new-instance v2, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 256
    .line 257
    const/16 v6, 0x2d

    .line 258
    .line 259
    move-object/from16 v24, v4

    .line 260
    .line 261
    const-string v4, "IPSECKEY"

    .line 262
    .line 263
    invoke-direct {v2, v6, v4}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    sput-object v2, Lio/netty/handler/codec/dns/DnsRecordType;->IPSECKEY:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 267
    .line 268
    new-instance v4, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 269
    .line 270
    const/16 v6, 0x2e

    .line 271
    .line 272
    move-object/from16 v25, v2

    .line 273
    .line 274
    const-string v2, "RRSIG"

    .line 275
    .line 276
    invoke-direct {v4, v6, v2}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 277
    .line 278
    .line 279
    sput-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->RRSIG:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 280
    .line 281
    new-instance v2, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 282
    .line 283
    const/16 v6, 0x2f

    .line 284
    .line 285
    move-object/from16 v26, v4

    .line 286
    .line 287
    const-string v4, "NSEC"

    .line 288
    .line 289
    invoke-direct {v2, v6, v4}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 290
    .line 291
    .line 292
    sput-object v2, Lio/netty/handler/codec/dns/DnsRecordType;->NSEC:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 293
    .line 294
    new-instance v4, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 295
    .line 296
    const/16 v6, 0x30

    .line 297
    .line 298
    move-object/from16 v27, v2

    .line 299
    .line 300
    const-string v2, "DNSKEY"

    .line 301
    .line 302
    invoke-direct {v4, v6, v2}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 303
    .line 304
    .line 305
    sput-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->DNSKEY:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 306
    .line 307
    new-instance v2, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 308
    .line 309
    const/16 v6, 0x31

    .line 310
    .line 311
    move-object/from16 v28, v4

    .line 312
    .line 313
    const-string v4, "DHCID"

    .line 314
    .line 315
    invoke-direct {v2, v6, v4}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 316
    .line 317
    .line 318
    sput-object v2, Lio/netty/handler/codec/dns/DnsRecordType;->DHCID:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 319
    .line 320
    new-instance v4, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 321
    .line 322
    const/16 v6, 0x32

    .line 323
    .line 324
    move-object/from16 v29, v2

    .line 325
    .line 326
    const-string v2, "NSEC3"

    .line 327
    .line 328
    invoke-direct {v4, v6, v2}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 329
    .line 330
    .line 331
    sput-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->NSEC3:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 332
    .line 333
    new-instance v2, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 334
    .line 335
    const/16 v6, 0x33

    .line 336
    .line 337
    move-object/from16 v30, v4

    .line 338
    .line 339
    const-string v4, "NSEC3PARAM"

    .line 340
    .line 341
    invoke-direct {v2, v6, v4}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 342
    .line 343
    .line 344
    sput-object v2, Lio/netty/handler/codec/dns/DnsRecordType;->NSEC3PARAM:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 345
    .line 346
    new-instance v4, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 347
    .line 348
    const/16 v6, 0x34

    .line 349
    .line 350
    move-object/from16 v31, v2

    .line 351
    .line 352
    const-string v2, "TLSA"

    .line 353
    .line 354
    invoke-direct {v4, v6, v2}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 355
    .line 356
    .line 357
    sput-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->TLSA:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 358
    .line 359
    new-instance v2, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 360
    .line 361
    const/16 v6, 0x37

    .line 362
    .line 363
    move-object/from16 v32, v4

    .line 364
    .line 365
    const-string v4, "HIP"

    .line 366
    .line 367
    invoke-direct {v2, v6, v4}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 368
    .line 369
    .line 370
    sput-object v2, Lio/netty/handler/codec/dns/DnsRecordType;->HIP:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 371
    .line 372
    new-instance v4, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 373
    .line 374
    const/16 v6, 0x63

    .line 375
    .line 376
    move-object/from16 v33, v2

    .line 377
    .line 378
    const-string v2, "SPF"

    .line 379
    .line 380
    invoke-direct {v4, v6, v2}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 381
    .line 382
    .line 383
    sput-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->SPF:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 384
    .line 385
    new-instance v2, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 386
    .line 387
    const/16 v6, 0xf9

    .line 388
    .line 389
    move-object/from16 v34, v4

    .line 390
    .line 391
    const-string v4, "TKEY"

    .line 392
    .line 393
    invoke-direct {v2, v6, v4}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 394
    .line 395
    .line 396
    sput-object v2, Lio/netty/handler/codec/dns/DnsRecordType;->TKEY:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 397
    .line 398
    new-instance v4, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 399
    .line 400
    const/16 v6, 0xfa

    .line 401
    .line 402
    move-object/from16 v35, v2

    .line 403
    .line 404
    const-string v2, "TSIG"

    .line 405
    .line 406
    invoke-direct {v4, v6, v2}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 407
    .line 408
    .line 409
    sput-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->TSIG:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 410
    .line 411
    new-instance v2, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 412
    .line 413
    const/16 v6, 0xfb

    .line 414
    .line 415
    move-object/from16 v36, v4

    .line 416
    .line 417
    const-string v4, "IXFR"

    .line 418
    .line 419
    invoke-direct {v2, v6, v4}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 420
    .line 421
    .line 422
    sput-object v2, Lio/netty/handler/codec/dns/DnsRecordType;->IXFR:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 423
    .line 424
    new-instance v4, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 425
    .line 426
    const/16 v6, 0xfc

    .line 427
    .line 428
    move-object/from16 v37, v2

    .line 429
    .line 430
    const-string v2, "AXFR"

    .line 431
    .line 432
    invoke-direct {v4, v6, v2}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 433
    .line 434
    .line 435
    sput-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->AXFR:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 436
    .line 437
    new-instance v2, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 438
    .line 439
    const/16 v6, 0xff

    .line 440
    .line 441
    move-object/from16 v38, v4

    .line 442
    .line 443
    const-string v4, "ANY"

    .line 444
    .line 445
    invoke-direct {v2, v6, v4}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 446
    .line 447
    .line 448
    sput-object v2, Lio/netty/handler/codec/dns/DnsRecordType;->ANY:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 449
    .line 450
    new-instance v4, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 451
    .line 452
    const/16 v6, 0x101

    .line 453
    .line 454
    move-object/from16 v39, v2

    .line 455
    .line 456
    const-string v2, "CAA"

    .line 457
    .line 458
    invoke-direct {v4, v6, v2}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 459
    .line 460
    .line 461
    sput-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->CAA:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 462
    .line 463
    new-instance v2, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 464
    .line 465
    const v6, 0x8000

    .line 466
    .line 467
    .line 468
    move-object/from16 v40, v4

    .line 469
    .line 470
    const-string v4, "TA"

    .line 471
    .line 472
    invoke-direct {v2, v6, v4}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 473
    .line 474
    .line 475
    sput-object v2, Lio/netty/handler/codec/dns/DnsRecordType;->TA:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 476
    .line 477
    new-instance v4, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 478
    .line 479
    const v6, 0x8001

    .line 480
    .line 481
    .line 482
    move-object/from16 v41, v2

    .line 483
    .line 484
    const-string v2, "DLV"

    .line 485
    .line 486
    invoke-direct {v4, v6, v2}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    .line 487
    .line 488
    .line 489
    sput-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->DLV:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 490
    .line 491
    new-instance v2, Ljava/util/HashMap;

    .line 492
    .line 493
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 494
    .line 495
    .line 496
    sput-object v2, Lio/netty/handler/codec/dns/DnsRecordType;->BY_NAME:Ljava/util/Map;

    .line 497
    .line 498
    new-instance v2, Lio/netty/util/collection/IntObjectHashMap;

    .line 499
    .line 500
    invoke-direct {v2}, Lio/netty/util/collection/IntObjectHashMap;-><init>()V

    .line 501
    .line 502
    .line 503
    sput-object v2, Lio/netty/handler/codec/dns/DnsRecordType;->BY_TYPE:Lio/netty/util/collection/IntObjectHashMap;

    .line 504
    .line 505
    const/16 v2, 0x28

    .line 506
    .line 507
    new-array v6, v2, [Lio/netty/handler/codec/dns/DnsRecordType;

    .line 508
    .line 509
    const/16 v42, 0x0

    .line 510
    .line 511
    aput-object v0, v6, v42

    .line 512
    .line 513
    const/4 v0, 0x1

    .line 514
    aput-object v1, v6, v0

    .line 515
    .line 516
    const/4 v0, 0x2

    .line 517
    aput-object v3, v6, v0

    .line 518
    .line 519
    const/4 v0, 0x3

    .line 520
    aput-object v5, v6, v0

    .line 521
    .line 522
    const/4 v0, 0x4

    .line 523
    aput-object v7, v6, v0

    .line 524
    .line 525
    const/4 v0, 0x5

    .line 526
    aput-object v9, v6, v0

    .line 527
    .line 528
    const/4 v0, 0x6

    .line 529
    aput-object v11, v6, v0

    .line 530
    .line 531
    const/4 v0, 0x7

    .line 532
    aput-object v13, v6, v0

    .line 533
    .line 534
    const/16 v0, 0x8

    .line 535
    .line 536
    aput-object v15, v6, v0

    .line 537
    .line 538
    const/16 v0, 0x9

    .line 539
    .line 540
    aput-object v14, v6, v0

    .line 541
    .line 542
    const/16 v0, 0xa

    .line 543
    .line 544
    aput-object v12, v6, v0

    .line 545
    .line 546
    const/16 v0, 0xb

    .line 547
    .line 548
    aput-object v10, v6, v0

    .line 549
    .line 550
    const/16 v0, 0xc

    .line 551
    .line 552
    aput-object v8, v6, v0

    .line 553
    .line 554
    const/16 v0, 0xd

    .line 555
    .line 556
    aput-object v16, v6, v0

    .line 557
    .line 558
    const/16 v0, 0xe

    .line 559
    .line 560
    aput-object v17, v6, v0

    .line 561
    .line 562
    const/16 v0, 0xf

    .line 563
    .line 564
    aput-object v18, v6, v0

    .line 565
    .line 566
    const/16 v0, 0x10

    .line 567
    .line 568
    aput-object v19, v6, v0

    .line 569
    .line 570
    const/16 v0, 0x11

    .line 571
    .line 572
    aput-object v20, v6, v0

    .line 573
    .line 574
    const/16 v0, 0x12

    .line 575
    .line 576
    aput-object v21, v6, v0

    .line 577
    .line 578
    const/16 v0, 0x13

    .line 579
    .line 580
    aput-object v22, v6, v0

    .line 581
    .line 582
    const/16 v0, 0x14

    .line 583
    .line 584
    aput-object v23, v6, v0

    .line 585
    .line 586
    const/16 v0, 0x15

    .line 587
    .line 588
    aput-object v24, v6, v0

    .line 589
    .line 590
    const/16 v0, 0x16

    .line 591
    .line 592
    aput-object v25, v6, v0

    .line 593
    .line 594
    const/16 v0, 0x17

    .line 595
    .line 596
    aput-object v26, v6, v0

    .line 597
    .line 598
    const/16 v0, 0x18

    .line 599
    .line 600
    aput-object v27, v6, v0

    .line 601
    .line 602
    const/16 v0, 0x19

    .line 603
    .line 604
    aput-object v28, v6, v0

    .line 605
    .line 606
    const/16 v0, 0x1a

    .line 607
    .line 608
    aput-object v29, v6, v0

    .line 609
    .line 610
    const/16 v0, 0x1b

    .line 611
    .line 612
    aput-object v30, v6, v0

    .line 613
    .line 614
    const/16 v0, 0x1c

    .line 615
    .line 616
    aput-object v31, v6, v0

    .line 617
    .line 618
    const/16 v0, 0x1d

    .line 619
    .line 620
    aput-object v32, v6, v0

    .line 621
    .line 622
    const/16 v0, 0x1e

    .line 623
    .line 624
    aput-object v33, v6, v0

    .line 625
    .line 626
    const/16 v0, 0x1f

    .line 627
    .line 628
    aput-object v34, v6, v0

    .line 629
    .line 630
    const/16 v0, 0x20

    .line 631
    .line 632
    aput-object v35, v6, v0

    .line 633
    .line 634
    const/16 v0, 0x21

    .line 635
    .line 636
    aput-object v36, v6, v0

    .line 637
    .line 638
    const/16 v0, 0x22

    .line 639
    .line 640
    aput-object v37, v6, v0

    .line 641
    .line 642
    const/16 v0, 0x23

    .line 643
    .line 644
    aput-object v38, v6, v0

    .line 645
    .line 646
    const/16 v0, 0x24

    .line 647
    .line 648
    aput-object v39, v6, v0

    .line 649
    .line 650
    const/16 v0, 0x25

    .line 651
    .line 652
    aput-object v40, v6, v0

    .line 653
    .line 654
    const/16 v0, 0x26

    .line 655
    .line 656
    aput-object v41, v6, v0

    .line 657
    .line 658
    const/16 v0, 0x27

    .line 659
    .line 660
    aput-object v4, v6, v0

    .line 661
    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    .line 663
    .line 664
    const/16 v1, 0x200

    .line 665
    .line 666
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 667
    .line 668
    .line 669
    const-string v1, " (expected: "

    .line 670
    .line 671
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    const/4 v1, 0x0

    .line 675
    :goto_0
    if-ge v1, v2, :cond_0

    .line 676
    .line 677
    aget-object v3, v6, v1

    .line 678
    .line 679
    sget-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->BY_NAME:Ljava/util/Map;

    .line 680
    .line 681
    invoke-virtual {v3}, Lio/netty/handler/codec/dns/DnsRecordType;->name()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v5

    .line 685
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    sget-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->BY_TYPE:Lio/netty/util/collection/IntObjectHashMap;

    .line 689
    .line 690
    invoke-virtual {v3}, Lio/netty/handler/codec/dns/DnsRecordType;->intValue()I

    .line 691
    .line 692
    .line 693
    move-result v5

    .line 694
    invoke-virtual {v4, v5, v3}, Lio/netty/util/collection/IntObjectHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v3}, Lio/netty/handler/codec/dns/DnsRecordType;->name()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v4

    .line 701
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    invoke-virtual {v3}, Lio/netty/handler/codec/dns/DnsRecordType;->intValue()I

    .line 708
    .line 709
    .line 710
    move-result v3

    .line 711
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    const-string v3, "), "

    .line 715
    .line 716
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    add-int/lit8 v1, v1, 0x1

    .line 720
    .line 721
    goto :goto_0

    .line 722
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 723
    .line 724
    .line 725
    move-result v1

    .line 726
    const/4 v2, 0x2

    .line 727
    sub-int/2addr v1, v2

    .line 728
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 729
    .line 730
    .line 731
    const/16 v1, 0x29

    .line 732
    .line 733
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    sput-object v0, Lio/netty/handler/codec/dns/DnsRecordType;->EXPECTED:Ljava/lang/String;

    .line 741
    .line 742
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const-string v0, "UNKNOWN"

    .line 1
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    .line 3
    iput p1, p0, Lio/netty/handler/codec/dns/DnsRecordType;->intValue:I

    .line 4
    iput-object p2, p0, Lio/netty/handler/codec/dns/DnsRecordType;->name:Ljava/lang/String;

    return-void

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: 0 ~ 65535)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static valueOf(I)Lio/netty/handler/codec/dns/DnsRecordType;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/codec/dns/DnsRecordType;->BY_TYPE:Lio/netty/util/collection/IntObjectHashMap;

    invoke-virtual {v0, p0}, Lio/netty/util/collection/IntObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/dns/DnsRecordType;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/netty/handler/codec/dns/DnsRecordType;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/dns/DnsRecordType;-><init>(I)V

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/dns/DnsRecordType;
    .locals 3

    .line 3
    sget-object v0, Lio/netty/handler/codec/dns/DnsRecordType;->BY_NAME:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/dns/DnsRecordType;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lio/netty/handler/codec/dns/DnsRecordType;->EXPECTED:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public compareTo(Lio/netty/handler/codec/dns/DnsRecordType;)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/netty/handler/codec/dns/DnsRecordType;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/handler/codec/dns/DnsRecordType;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lio/netty/handler/codec/dns/DnsRecordType;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/dns/DnsRecordType;->compareTo(Lio/netty/handler/codec/dns/DnsRecordType;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lio/netty/handler/codec/dns/DnsRecordType;

    .line 6
    .line 7
    iget p1, p1, Lio/netty/handler/codec/dns/DnsRecordType;->intValue:I

    .line 8
    .line 9
    iget v0, p0, Lio/netty/handler/codec/dns/DnsRecordType;->intValue:I

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/handler/codec/dns/DnsRecordType;->intValue:I

    .line 2
    .line 3
    return v0
.end method

.method public intValue()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/handler/codec/dns/DnsRecordType;->intValue:I

    .line 2
    .line 3
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/dns/DnsRecordType;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/dns/DnsRecordType;->text:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lio/netty/handler/codec/dns/DnsRecordType;->name:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x28

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lio/netty/handler/codec/dns/DnsRecordType;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x29

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lio/netty/handler/codec/dns/DnsRecordType;->text:Ljava/lang/String;

    .line 37
    .line 38
    :cond_0
    return-object v0
.end method
