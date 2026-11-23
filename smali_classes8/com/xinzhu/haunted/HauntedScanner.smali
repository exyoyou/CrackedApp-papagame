.class public Lcom/xinzhu/haunted/HauntedScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;,
        Lcom/xinzhu/haunted/HauntedScanner$a;,
        Lcom/xinzhu/haunted/HauntedScanner$b;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "initMetaClass"

.field private static final j:Ljava/lang/String; = "getEgo"

.field private static final k:Ljava/lang/String; = "initMetaMethod"

.field private static final l:Ljava/lang/String; = "initMetaField"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

.field public d:Z

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xinzhu/haunted/HauntedScanner$b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xinzhu/haunted/HauntedScanner$b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xinzhu/haunted/HauntedScanner$a;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xinzhu/haunted/HauntedScanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/lang/model/element/Element;Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xinzhu/haunted/HauntedScanner;->e:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/xinzhu/haunted/HauntedScanner;->f:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/xinzhu/haunted/HauntedScanner;->g:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/xinzhu/haunted/HauntedScanner;->h:Ljava/util/List;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/xinzhu/haunted/HauntedScanner;->a:Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iput-object p2, p0, Lcom/xinzhu/haunted/HauntedScanner;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    sget-object v0, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    .line 49
    .line 50
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    iput-boolean p2, p0, Lcom/xinzhu/haunted/HauntedScanner;->d:Z

    .line 55
    .line 56
    move-object p2, p1

    .line 57
    check-cast p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 58
    .line 59
    const-string v0, " "

    .line 60
    .line 61
    if-nez p3, :cond_2

    .line 62
    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v1, "class name "

    .line 69
    .line 70
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/xinzhu/haunted/HauntedScanner;->b:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->outermostClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-static {p2}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-class p2, Lcom/xinzhu/overmind/annotation/Haunted;

    .line 102
    .line 103
    invoke-static {p1, p2}, Lcom/xinzhu/haunted/HauntedScanner;->a(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    const-string p3, "value"

    .line 108
    .line 109
    if-eqz p2, :cond_0

    .line 110
    .line 111
    invoke-static {p2, p3}, Lcom/xinzhu/haunted/HauntedScanner;->b(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-interface {p2}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    .line 120
    .line 121
    invoke-direct {p0, p2}, Lcom/xinzhu/haunted/HauntedScanner;->c(Ljavax/lang/model/type/TypeMirror;)Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    iput-object p2, p0, Lcom/xinzhu/haunted/HauntedScanner;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :cond_0
    const-class p2, Lcom/xinzhu/overmind/annotation/HauntedString;

    .line 130
    .line 131
    invoke-static {p1, p2}, Lcom/xinzhu/haunted/HauntedScanner;->a(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    if-eqz p2, :cond_1

    .line 136
    .line 137
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 138
    .line 139
    invoke-static {p2, p3}, Lcom/xinzhu/haunted/HauntedScanner;->b(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-interface {p2}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    check-cast p2, Ljava/lang/String;

    .line 148
    .line 149
    sget-object p3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->STRING_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    .line 150
    .line 151
    invoke-direct {v0, p2, p3}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;-><init>(Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;)V

    .line 152
    .line 153
    .line 154
    iput-object v0, p0, Lcom/xinzhu/haunted/HauntedScanner;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 158
    .line 159
    new-instance p3, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v0, "Could not determine the ego of the class "

    .line 165
    .line 166
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p2

    .line 184
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v2, "subclass name "

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget-object v2, p0, Lcom/xinzhu/haunted/HauntedScanner;->b:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->outermostClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-static {p2}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    new-instance p2, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 223
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    iget-object p3, p3, Lcom/xinzhu/haunted/HauntedScanner;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 230
    .line 231
    iget-object v1, p3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    .line 232
    .line 233
    sget-object v2, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->STRING_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    .line 234
    .line 235
    if-ne v1, v2, :cond_3

    .line 236
    .line 237
    iget-object p3, p3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->a:Ljava/lang/String;

    .line 238
    .line 239
    goto :goto_0

    .line 240
    :cond_3
    iget-object p3, p3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    .line 241
    .line 242
    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string p3, "$"

    .line 246
    .line 247
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-object p3, p0, Lcom/xinzhu/haunted/HauntedScanner;->b:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p3

    .line 259
    invoke-direct {p2, p3, v2}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;-><init>(Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;)V

    .line 260
    .line 261
    .line 262
    iput-object p2, p0, Lcom/xinzhu/haunted/HauntedScanner;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 263
    .line 264
    :goto_1
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-direct {p0, p1}, Lcom/xinzhu/haunted/HauntedScanner;->g(Ljava/util/List;)V

    .line 269
    .line 270
    .line 271
    return-void
.end method

.method private static a(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 24
    .line 25
    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method private static b(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    .line 30
    .line 31
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Ljavax/lang/model/element/AnnotationValue;

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_1
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method

.method private c(Ljavax/lang/model/type/TypeMirror;)Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/xinzhu/haunted/HauntedScanner;->e(Lcom/sun/tools/javac/code/Type$ClassType;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object v1, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->EGO_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    .line 20
    .line 21
    invoke-direct {v0, p1, v1}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;-><init>(Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    instance-of v0, p1, Lcom/sun/tools/javac/code/Type$JCPrimitiveType;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    check-cast p1, Lcom/sun/tools/javac/code/Type$JCPrimitiveType;

    .line 36
    .line 37
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_2
    instance-of v0, p1, Lcom/sun/tools/javac/code/Type$JCVoidType;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    check-cast p1, Lcom/sun/tools/javac/code/Type$JCVoidType;

    .line 48
    .line 49
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 50
    .line 51
    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_3
    instance-of v0, p1, Lcom/sun/tools/javac/code/Type$ArrayType;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    check-cast p1, Lcom/sun/tools/javac/code/Type$ArrayType;

    .line 60
    .line 61
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 62
    .line 63
    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v1, "getClassDeclFromTypeMirror: "

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Lcom/xinzhu/haunted/a;->b(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/4 p1, 0x0

    .line 96
    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Meta"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    return-object p1
.end method

.method private static e(Lcom/sun/tools/javac/code/Type$ClassType;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "MetaHt"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method private f(Ljavax/lang/model/element/Element;)V
    .locals 2

    .line 1
    const-class v0, Lcom/xinzhu/overmind/annotation/MethodParamTemplate;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/xinzhu/haunted/HauntedScanner;->a(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/xinzhu/overmind/annotation/MethodParamString;

    .line 8
    .line 9
    invoke-static {p1, v1}, Lcom/xinzhu/haunted/HauntedScanner;->a(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0, p1}, Lcom/xinzhu/haunted/HauntedScanner;->i(Ljavax/lang/model/element/Element;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/xinzhu/haunted/HauntedScanner;->j(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 23
    .line 24
    .line 25
    :goto_1
    return-void
.end method

.method private g(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljavax/lang/model/element/Element;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "element "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, " type "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v2, "element class "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    instance-of v1, v0, Ljavax/lang/model/element/VariableElement;

    .line 74
    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    instance-of v1, v0, Ljavax/lang/model/element/ExecutableElement;

    .line 78
    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    instance-of v1, v0, Ljavax/lang/model/element/TypeElement;

    .line 83
    .line 84
    if-eqz v1, :cond_0

    .line 85
    .line 86
    iget-object v1, p0, Lcom/xinzhu/haunted/HauntedScanner;->h:Ljava/util/List;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/xinzhu/haunted/HauntedScanner;->a:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v0, v2, p0}, Lcom/xinzhu/haunted/HauntedScanner;->l(Ljavax/lang/model/element/Element;Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner;)Lcom/xinzhu/haunted/HauntedScanner;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/xinzhu/haunted/HauntedScanner;->f(Ljavax/lang/model/element/Element;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    return-void
.end method

.method private static h(Ljavax/lang/model/element/Element;)Ljava/lang/String;
    .locals 2

    .line 1
    :goto_0
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    check-cast p0, Ljavax/lang/model/element/PackageElement;

    .line 15
    .line 16
    invoke-interface {p0}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method private i(Ljavax/lang/model/element/Element;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "<init>"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner$a;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/xinzhu/haunted/HauntedScanner$a;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    .line 28
    .line 29
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput-boolean v1, v0, Lcom/xinzhu/haunted/HauntedScanner$a;->a:Z

    .line 34
    .line 35
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, v0, Lcom/xinzhu/haunted/HauntedScanner$a;->c:Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {p0, v1}, Lcom/xinzhu/haunted/HauntedScanner;->c(Ljavax/lang/model/type/TypeMirror;)Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, v0, Lcom/xinzhu/haunted/HauntedScanner$a;->b:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/xinzhu/haunted/HauntedScanner;->g:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v2, "Cannot get type of "

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0
.end method

.method private j(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/haunted/HauntedScanner$b;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->b:Z

    .line 8
    .line 9
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-object v3, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    .line 14
    .line 15
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iput-boolean v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->a:Z

    .line 20
    .line 21
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iput-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->d:Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget-object v3, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    .line 36
    .line 37
    if-ne v2, v3, :cond_0

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    iput-boolean v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->b:Z

    .line 41
    .line 42
    iget-object v2, p0, Lcom/xinzhu/haunted/HauntedScanner;->b:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->d:Ljava/lang/String;

    .line 45
    .line 46
    invoke-direct {p0, v2}, Lcom/xinzhu/haunted/HauntedScanner;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iput-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->d:Ljava/lang/String;

    .line 51
    .line 52
    :cond_0
    iget-boolean v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->b:Z

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    iget-object v2, p0, Lcom/xinzhu/haunted/HauntedScanner;->e:Ljava/util/List;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/xinzhu/haunted/HauntedScanner;->f:Ljava/util/List;

    .line 60
    .line 61
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const/4 v3, -0x1

    .line 66
    const/4 v4, -0x1

    .line 67
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_3

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Lcom/xinzhu/haunted/HauntedScanner$b;

    .line 78
    .line 79
    iget-object v5, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->d:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v6, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->d:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_2

    .line 88
    .line 89
    add-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    iget-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->d:Ljava/lang/String;

    .line 93
    .line 94
    iput-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    .line 95
    .line 96
    iput-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->f:Ljava/lang/String;

    .line 97
    .line 98
    if-eq v4, v3, :cond_4

    .line 99
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    iget-object v3, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iput-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    .line 118
    .line 119
    :cond_4
    const-class v2, Lcom/xinzhu/overmind/annotation/ReflectiveName;

    .line 120
    .line 121
    invoke-static {p1, v2}, Lcom/xinzhu/haunted/HauntedScanner;->a(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const-string v3, "value"

    .line 126
    .line 127
    if-eqz v2, :cond_5

    .line 128
    .line 129
    invoke-static {v2, v3}, Lcom/xinzhu/haunted/HauntedScanner;->b(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-interface {v2}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Ljava/lang/String;

    .line 138
    .line 139
    iput-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->f:Ljava/lang/String;

    .line 140
    .line 141
    :cond_5
    instance-of v2, p1, Ljavax/lang/model/element/VariableElement;

    .line 142
    .line 143
    if-eqz v2, :cond_6

    .line 144
    .line 145
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-direct {p0, v2}, Lcom/xinzhu/haunted/HauntedScanner;->c(Ljavax/lang/model/type/TypeMirror;)Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iput-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_6
    instance-of v2, p1, Ljavax/lang/model/element/ExecutableElement;

    .line 157
    .line 158
    if-eqz v2, :cond_7

    .line 159
    .line 160
    move-object v2, p1

    .line 161
    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 162
    .line 163
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-direct {p0, v2}, Lcom/xinzhu/haunted/HauntedScanner;->c(Ljavax/lang/model/type/TypeMirror;)Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    iput-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 172
    .line 173
    :cond_7
    :goto_2
    iget-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 174
    .line 175
    if-nez v2, :cond_9

    .line 176
    .line 177
    iget-boolean v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->b:Z

    .line 178
    .line 179
    if-eqz v2, :cond_8

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_8
    new-instance p2, Ljava/lang/RuntimeException;

    .line 183
    .line 184
    new-instance p3, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v0, "Cannot get type of "

    .line 190
    .line 191
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p2

    .line 209
    :cond_9
    :goto_3
    if-nez p2, :cond_a

    .line 210
    .line 211
    invoke-static {p3, v3}, Lcom/xinzhu/haunted/HauntedScanner;->b(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    check-cast p1, Ljava/util/List;

    .line 220
    .line 221
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result p2

    .line 229
    if-eqz p2, :cond_f

    .line 230
    .line 231
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    check-cast p2, Ljavax/lang/model/element/AnnotationValue;

    .line 236
    .line 237
    invoke-interface {p2}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    check-cast p2, Ljava/lang/String;

    .line 242
    .line 243
    iget-object p3, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    .line 244
    .line 245
    new-instance v1, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 246
    .line 247
    sget-object v2, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->STRING_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    .line 248
    .line 249
    invoke-direct {v1, p2, v2}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;-><init>(Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;)V

    .line 250
    .line 251
    .line 252
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_a
    invoke-static {p2, v3}, Lcom/xinzhu/haunted/HauntedScanner;->b(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    if-eqz p3, :cond_b

    .line 261
    .line 262
    invoke-static {p3, v3}, Lcom/xinzhu/haunted/HauntedScanner;->b(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    .line 263
    .line 264
    .line 265
    move-result-object p3

    .line 266
    invoke-interface {p3}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object p3

    .line 270
    check-cast p3, Ljava/util/List;

    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_b
    const/4 p3, 0x0

    .line 274
    :goto_5
    if-eqz v2, :cond_e

    .line 275
    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string v4, "av class type: "

    .line 282
    .line 283
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-interface {v2}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-static {v3}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-interface {v2}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    check-cast v2, Ljava/util/List;

    .line 313
    .line 314
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-eqz v3, :cond_e

    .line 323
    .line 324
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    check-cast v3, Ljavax/lang/model/element/AnnotationValue;

    .line 329
    .line 330
    invoke-interface {v3}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    check-cast v3, Ljavax/lang/model/type/TypeMirror;

    .line 335
    .line 336
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    const-class v5, Lla/a;

    .line 341
    .line 342
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    if-eqz v4, :cond_d

    .line 351
    .line 352
    if-eqz p3, :cond_c

    .line 353
    .line 354
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-ge v1, v3, :cond_c

    .line 359
    .line 360
    iget-object v3, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    .line 361
    .line 362
    new-instance v4, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 363
    .line 364
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    check-cast v5, Lcom/sun/tools/javac/code/Attribute$Constant;

    .line 369
    .line 370
    iget-object v5, v5, Lcom/sun/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    .line 371
    .line 372
    check-cast v5, Ljava/lang/String;

    .line 373
    .line 374
    sget-object v6, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->STRING_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    .line 375
    .line 376
    invoke-direct {v4, v5, v6}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;-><init>(Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;)V

    .line 377
    .line 378
    .line 379
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    add-int/lit8 v1, v1, 0x1

    .line 383
    .line 384
    goto :goto_6

    .line 385
    :cond_c
    new-instance p2, Ljava/lang/RuntimeException;

    .line 386
    .line 387
    new-instance p3, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .line 391
    .line 392
    const-string v0, "Strings and string stubs mismatch on "

    .line 393
    .line 394
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    throw p2

    .line 412
    :cond_d
    iget-object v4, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    .line 413
    .line 414
    invoke-direct {p0, v3}, Lcom/xinzhu/haunted/HauntedScanner;->c(Ljavax/lang/model/type/TypeMirror;)Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    goto :goto_6

    .line 422
    :cond_e
    const-string p1, "throwz"

    .line 423
    .line 424
    invoke-static {p2, p1}, Lcom/xinzhu/haunted/HauntedScanner;->b(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    if-eqz p1, :cond_f

    .line 429
    .line 430
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    check-cast p1, Ljava/util/List;

    .line 435
    .line 436
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 441
    .line 442
    .line 443
    move-result p2

    .line 444
    if-eqz p2, :cond_f

    .line 445
    .line 446
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object p2

    .line 450
    check-cast p2, Ljavax/lang/model/element/AnnotationValue;

    .line 451
    .line 452
    iget-object p3, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->h:Ljava/util/List;

    .line 453
    .line 454
    invoke-interface {p2}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object p2

    .line 458
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    .line 459
    .line 460
    invoke-direct {p0, p2}, Lcom/xinzhu/haunted/HauntedScanner;->c(Ljavax/lang/model/type/TypeMirror;)Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 461
    .line 462
    .line 463
    move-result-object p2

    .line 464
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    goto :goto_7

    .line 468
    :cond_f
    iget-boolean p1, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->b:Z

    .line 469
    .line 470
    if-eqz p1, :cond_10

    .line 471
    .line 472
    iget-object p1, p0, Lcom/xinzhu/haunted/HauntedScanner;->e:Ljava/util/List;

    .line 473
    .line 474
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    goto :goto_8

    .line 478
    :cond_10
    iget-object p1, p0, Lcom/xinzhu/haunted/HauntedScanner;->f:Ljava/util/List;

    .line 479
    .line 480
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    :goto_8
    return-void
.end method

.method public static k(Ljavax/lang/model/element/Element;)Lcom/xinzhu/haunted/HauntedScanner;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/xinzhu/haunted/HauntedScanner;->h(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p0, v0, v1}, Lcom/xinzhu/haunted/HauntedScanner;->l(Ljavax/lang/model/element/Element;Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner;)Lcom/xinzhu/haunted/HauntedScanner;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static l(Ljavax/lang/model/element/Element;Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner;)Lcom/xinzhu/haunted/HauntedScanner;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "root element "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " type "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1, p2}, Lcom/xinzhu/haunted/HauntedScanner;-><init>(Ljavax/lang/model/element/Element;Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner;)V

    .line 44
    .line 45
    .line 46
    const-string p0, "root over"

    .line 47
    .line 48
    invoke-static {p0}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 53
    .line 54
    const-string p1, "root must be a class!"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method
