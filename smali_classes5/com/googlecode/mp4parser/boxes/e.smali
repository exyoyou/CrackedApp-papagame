.class public Lcom/googlecode/mp4parser/boxes/e;
.super Lcom/googlecode/mp4parser/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/boxes/e$a;
    }
.end annotation


# static fields
.field private static final synthetic A:Lorg/aspectj/lang/c$b; = null

.field public static final r:Ljava/lang/String; = "dec3"

.field private static final synthetic s:Lorg/aspectj/lang/c$b;

.field private static final synthetic t:Lorg/aspectj/lang/c$b;

.field private static final synthetic u:Lorg/aspectj/lang/c$b;

.field private static final synthetic v:Lorg/aspectj/lang/c$b;

.field private static final synthetic w:Lorg/aspectj/lang/c$b;

.field private static final synthetic x:Lorg/aspectj/lang/c$b;

.field private static final synthetic y:Lorg/aspectj/lang/c$b;

.field private static final synthetic z:Lorg/aspectj/lang/c$b;


# instance fields
.field o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/e$a;",
            ">;"
        }
    .end annotation
.end field

.field p:I

.field q:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/googlecode/mp4parser/boxes/e;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "dec3"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/a;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/e;->o:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method private static synthetic t()V
    .locals 10

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/e;

    .line 2
    .line 3
    const-string v0, "EC3SpecificBox.java"

    .line 4
    .line 5
    const-class v1, Lcom/googlecode/mp4parser/boxes/e;

    .line 6
    .line 7
    invoke-direct {v8, v0, v1}, Lorg/aspectj/runtime/reflect/e;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "1"

    .line 11
    .line 12
    const-string v2, "getContentSize"

    .line 13
    .line 14
    const-string v3, "com.googlecode.mp4parser.boxes.EC3SpecificBox"

    .line 15
    .line 16
    const-string v4, ""

    .line 17
    .line 18
    const-string v5, ""

    .line 19
    .line 20
    const-string v6, ""

    .line 21
    .line 22
    const-string v7, "long"

    .line 23
    .line 24
    move-object v0, v8

    .line 25
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/16 v1, 0x19

    .line 30
    .line 31
    const-string v9, "method-execution"

    .line 32
    .line 33
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/googlecode/mp4parser/boxes/e;->s:Lorg/aspectj/lang/c$b;

    .line 38
    .line 39
    const-string v1, "1"

    .line 40
    .line 41
    const-string v2, "getContent"

    .line 42
    .line 43
    const-string v3, "com.googlecode.mp4parser.boxes.EC3SpecificBox"

    .line 44
    .line 45
    const-string v4, "java.nio.ByteBuffer"

    .line 46
    .line 47
    const-string v5, "byteBuffer"

    .line 48
    .line 49
    const-string v6, ""

    .line 50
    .line 51
    const-string v7, "void"

    .line 52
    .line 53
    move-object v0, v8

    .line 54
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/16 v1, 0x41

    .line 59
    .line 60
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lcom/googlecode/mp4parser/boxes/e;->t:Lorg/aspectj/lang/c$b;

    .line 65
    .line 66
    const-string v1, "1"

    .line 67
    .line 68
    const-string v2, "getEntries"

    .line 69
    .line 70
    const-string v3, "com.googlecode.mp4parser.boxes.EC3SpecificBox"

    .line 71
    .line 72
    const-string v4, ""

    .line 73
    .line 74
    const-string v5, ""

    .line 75
    .line 76
    const-string v6, ""

    .line 77
    .line 78
    const-string v7, "java.util.List"

    .line 79
    .line 80
    move-object v0, v8

    .line 81
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/16 v1, 0x56

    .line 86
    .line 87
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/googlecode/mp4parser/boxes/e;->u:Lorg/aspectj/lang/c$b;

    .line 92
    .line 93
    const-string v1, "1"

    .line 94
    .line 95
    const-string v2, "setEntries"

    .line 96
    .line 97
    const-string v3, "com.googlecode.mp4parser.boxes.EC3SpecificBox"

    .line 98
    .line 99
    const-string v4, "java.util.List"

    .line 100
    .line 101
    const-string v5, "entries"

    .line 102
    .line 103
    const-string v6, ""

    .line 104
    .line 105
    const-string v7, "void"

    .line 106
    .line 107
    move-object v0, v8

    .line 108
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const/16 v1, 0x5a

    .line 113
    .line 114
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lcom/googlecode/mp4parser/boxes/e;->v:Lorg/aspectj/lang/c$b;

    .line 119
    .line 120
    const-string v1, "1"

    .line 121
    .line 122
    const-string v2, "addEntry"

    .line 123
    .line 124
    const-string v3, "com.googlecode.mp4parser.boxes.EC3SpecificBox"

    .line 125
    .line 126
    const-string v4, "com.googlecode.mp4parser.boxes.EC3SpecificBox$Entry"

    .line 127
    .line 128
    const-string v5, "entry"

    .line 129
    .line 130
    const-string v6, ""

    .line 131
    .line 132
    const-string v7, "void"

    .line 133
    .line 134
    move-object v0, v8

    .line 135
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const/16 v1, 0x5e

    .line 140
    .line 141
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sput-object v0, Lcom/googlecode/mp4parser/boxes/e;->w:Lorg/aspectj/lang/c$b;

    .line 146
    .line 147
    const-string v1, "1"

    .line 148
    .line 149
    const-string v2, "getDataRate"

    .line 150
    .line 151
    const-string v3, "com.googlecode.mp4parser.boxes.EC3SpecificBox"

    .line 152
    .line 153
    const-string v4, ""

    .line 154
    .line 155
    const-string v5, ""

    .line 156
    .line 157
    const-string v6, ""

    .line 158
    .line 159
    const-string v7, "int"

    .line 160
    .line 161
    move-object v0, v8

    .line 162
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const/16 v1, 0x62

    .line 167
    .line 168
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    sput-object v0, Lcom/googlecode/mp4parser/boxes/e;->x:Lorg/aspectj/lang/c$b;

    .line 173
    .line 174
    const-string v1, "1"

    .line 175
    .line 176
    const-string v2, "setDataRate"

    .line 177
    .line 178
    const-string v3, "com.googlecode.mp4parser.boxes.EC3SpecificBox"

    .line 179
    .line 180
    const-string v4, "int"

    .line 181
    .line 182
    const-string v5, "dataRate"

    .line 183
    .line 184
    const-string v6, ""

    .line 185
    .line 186
    const-string v7, "void"

    .line 187
    .line 188
    move-object v0, v8

    .line 189
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    const/16 v1, 0x66

    .line 194
    .line 195
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sput-object v0, Lcom/googlecode/mp4parser/boxes/e;->y:Lorg/aspectj/lang/c$b;

    .line 200
    .line 201
    const-string v1, "1"

    .line 202
    .line 203
    const-string v2, "getNumIndSub"

    .line 204
    .line 205
    const-string v3, "com.googlecode.mp4parser.boxes.EC3SpecificBox"

    .line 206
    .line 207
    const-string v4, ""

    .line 208
    .line 209
    const-string v5, ""

    .line 210
    .line 211
    const-string v6, ""

    .line 212
    .line 213
    const-string v7, "int"

    .line 214
    .line 215
    move-object v0, v8

    .line 216
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    const/16 v1, 0x6a

    .line 221
    .line 222
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    sput-object v0, Lcom/googlecode/mp4parser/boxes/e;->z:Lorg/aspectj/lang/c$b;

    .line 227
    .line 228
    const-string v1, "1"

    .line 229
    .line 230
    const-string v2, "setNumIndSub"

    .line 231
    .line 232
    const-string v3, "com.googlecode.mp4parser.boxes.EC3SpecificBox"

    .line 233
    .line 234
    const-string v4, "int"

    .line 235
    .line 236
    const-string v5, "numIndSub"

    .line 237
    .line 238
    const-string v6, ""

    .line 239
    .line 240
    const-string v7, "void"

    .line 241
    .line 242
    move-object v0, v8

    .line 243
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    const/16 v1, 0x6e

    .line 248
    .line 249
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    sput-object v0, Lcom/googlecode/mp4parser/boxes/e;->A:Lorg/aspectj/lang/c$b;

    .line 254
    .line 255
    return-void
.end method


# virtual methods
.method public b(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;-><init>(Ljava/nio/ByteBuffer;)V

    .line 4
    .line 5
    .line 6
    const/16 p1, 0xd

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/e;->p:I

    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    add-int/2addr v1, v2

    .line 21
    iput v1, p0, Lcom/googlecode/mp4parser/boxes/e;->q:I

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/e;->q:I

    .line 25
    .line 26
    if-lt v1, v3, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v3, Lcom/googlecode/mp4parser/boxes/e$a;

    .line 30
    .line 31
    invoke-direct {v3}, Lcom/googlecode/mp4parser/boxes/e$a;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    iput v4, v3, Lcom/googlecode/mp4parser/boxes/e$a;->a:I

    .line 40
    .line 41
    const/4 v4, 0x5

    .line 42
    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    iput v5, v3, Lcom/googlecode/mp4parser/boxes/e$a;->b:I

    .line 47
    .line 48
    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    iput v4, v3, Lcom/googlecode/mp4parser/boxes/e$a;->c:I

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    iput v4, v3, Lcom/googlecode/mp4parser/boxes/e$a;->d:I

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    iput v4, v3, Lcom/googlecode/mp4parser/boxes/e$a;->e:I

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iput v4, v3, Lcom/googlecode/mp4parser/boxes/e$a;->f:I

    .line 71
    .line 72
    const/4 v4, 0x4

    .line 73
    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    iput v4, v3, Lcom/googlecode/mp4parser/boxes/e$a;->g:I

    .line 78
    .line 79
    if-lez v4, :cond_1

    .line 80
    .line 81
    const/16 v4, 0x9

    .line 82
    .line 83
    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    iput v4, v3, Lcom/googlecode/mp4parser/boxes/e$a;->h:I

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    iput v4, v3, Lcom/googlecode/mp4parser/boxes/e$a;->i:I

    .line 95
    .line 96
    :goto_1
    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/e;->o:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_0
.end method

.method public c(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/boxes/e;->t:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/d;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/d;-><init>(Ljava/nio/ByteBuffer;)V

    .line 17
    .line 18
    .line 19
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/e;->p:I

    .line 20
    .line 21
    const/16 v1, 0xd

    .line 22
    .line 23
    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/d;->a(II)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/googlecode/mp4parser/boxes/e;->o:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 v1, 0x1

    .line 33
    sub-int/2addr p1, v1

    .line 34
    const/4 v2, 0x3

    .line 35
    invoke-virtual {v0, p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/d;->a(II)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/googlecode/mp4parser/boxes/e;->o:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_0

    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lcom/googlecode/mp4parser/boxes/e$a;

    .line 56
    .line 57
    iget v4, v3, Lcom/googlecode/mp4parser/boxes/e$a;->a:I

    .line 58
    .line 59
    const/4 v5, 0x2

    .line 60
    invoke-virtual {v0, v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/d;->a(II)V

    .line 61
    .line 62
    .line 63
    iget v4, v3, Lcom/googlecode/mp4parser/boxes/e$a;->b:I

    .line 64
    .line 65
    const/4 v5, 0x5

    .line 66
    invoke-virtual {v0, v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/d;->a(II)V

    .line 67
    .line 68
    .line 69
    iget v4, v3, Lcom/googlecode/mp4parser/boxes/e$a;->c:I

    .line 70
    .line 71
    invoke-virtual {v0, v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/d;->a(II)V

    .line 72
    .line 73
    .line 74
    iget v4, v3, Lcom/googlecode/mp4parser/boxes/e$a;->d:I

    .line 75
    .line 76
    invoke-virtual {v0, v4, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/d;->a(II)V

    .line 77
    .line 78
    .line 79
    iget v4, v3, Lcom/googlecode/mp4parser/boxes/e$a;->e:I

    .line 80
    .line 81
    invoke-virtual {v0, v4, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/d;->a(II)V

    .line 82
    .line 83
    .line 84
    iget v4, v3, Lcom/googlecode/mp4parser/boxes/e$a;->f:I

    .line 85
    .line 86
    invoke-virtual {v0, v4, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/d;->a(II)V

    .line 87
    .line 88
    .line 89
    iget v4, v3, Lcom/googlecode/mp4parser/boxes/e$a;->g:I

    .line 90
    .line 91
    const/4 v5, 0x4

    .line 92
    invoke-virtual {v0, v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/d;->a(II)V

    .line 93
    .line 94
    .line 95
    iget v4, v3, Lcom/googlecode/mp4parser/boxes/e$a;->g:I

    .line 96
    .line 97
    if-lez v4, :cond_1

    .line 98
    .line 99
    iget v3, v3, Lcom/googlecode/mp4parser/boxes/e$a;->h:I

    .line 100
    .line 101
    const/16 v4, 0x9

    .line 102
    .line 103
    invoke-virtual {v0, v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/d;->a(II)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    iget v3, v3, Lcom/googlecode/mp4parser/boxes/e$a;->i:I

    .line 108
    .line 109
    invoke-virtual {v0, v3, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/d;->a(II)V

    .line 110
    .line 111
    .line 112
    goto :goto_0
.end method

.method public g()J
    .locals 5

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/boxes/e;->s:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/e;->o:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-wide/16 v1, 0x2

    .line 21
    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    return-wide v1

    .line 29
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/googlecode/mp4parser/boxes/e$a;

    .line 34
    .line 35
    iget v3, v3, Lcom/googlecode/mp4parser/boxes/e$a;->g:I

    .line 36
    .line 37
    if-lez v3, :cond_1

    .line 38
    .line 39
    const-wide/16 v3, 0x4

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-wide/16 v3, 0x3

    .line 43
    .line 44
    :goto_1
    add-long/2addr v1, v3

    .line 45
    goto :goto_0
.end method

.method public s(Lcom/googlecode/mp4parser/boxes/e$a;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/boxes/e;->w:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/e;->o:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public u()I
    .locals 2

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/boxes/e;->x:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/e;->p:I

    .line 15
    .line 16
    return v0
.end method

.method public v()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/e$a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/boxes/e;->u:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/e;->o:Ljava/util/List;

    .line 15
    .line 16
    return-object v0
.end method

.method public w()I
    .locals 2

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/boxes/e;->z:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/e;->q:I

    .line 15
    .line 16
    return v0
.end method

.method public x(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/boxes/e;->y:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/aspectj/runtime/internal/e;->k(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 16
    .line 17
    .line 18
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/e;->p:I

    .line 19
    .line 20
    return-void
.end method

.method public y(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/e$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/boxes/e;->v:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/e;->o:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method

.method public z(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/boxes/e;->A:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/aspectj/runtime/internal/e;->k(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 16
    .line 17
    .line 18
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/e;->q:I

    .line 19
    .line 20
    return-void
.end method
