.class public Lio/netty/handler/codec/http/HttpMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpMethod$EnumNameMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/netty/handler/codec/http/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONNECT:Lio/netty/handler/codec/http/HttpMethod;

.field public static final DELETE:Lio/netty/handler/codec/http/HttpMethod;

.field public static final GET:Lio/netty/handler/codec/http/HttpMethod;

.field public static final HEAD:Lio/netty/handler/codec/http/HttpMethod;

.field public static final OPTIONS:Lio/netty/handler/codec/http/HttpMethod;

.field public static final PATCH:Lio/netty/handler/codec/http/HttpMethod;

.field public static final POST:Lio/netty/handler/codec/http/HttpMethod;

.field public static final PUT:Lio/netty/handler/codec/http/HttpMethod;

.field public static final TRACE:Lio/netty/handler/codec/http/HttpMethod;

.field private static final methodMap:Lio/netty/handler/codec/http/HttpMethod$EnumNameMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/http/HttpMethod$EnumNameMap<",
            "Lio/netty/handler/codec/http/HttpMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Lio/netty/util/AsciiString;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lio/netty/handler/codec/http/HttpMethod;

    .line 2
    .line 3
    const-string v1, "OPTIONS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lio/netty/handler/codec/http/HttpMethod;->OPTIONS:Lio/netty/handler/codec/http/HttpMethod;

    .line 9
    .line 10
    new-instance v1, Lio/netty/handler/codec/http/HttpMethod;

    .line 11
    .line 12
    const-string v2, "GET"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lio/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lio/netty/handler/codec/http/HttpMethod;->GET:Lio/netty/handler/codec/http/HttpMethod;

    .line 18
    .line 19
    new-instance v2, Lio/netty/handler/codec/http/HttpMethod;

    .line 20
    .line 21
    const-string v3, "HEAD"

    .line 22
    .line 23
    invoke-direct {v2, v3}, Lio/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v2, Lio/netty/handler/codec/http/HttpMethod;->HEAD:Lio/netty/handler/codec/http/HttpMethod;

    .line 27
    .line 28
    new-instance v3, Lio/netty/handler/codec/http/HttpMethod;

    .line 29
    .line 30
    const-string v4, "POST"

    .line 31
    .line 32
    invoke-direct {v3, v4}, Lio/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lio/netty/handler/codec/http/HttpMethod;->POST:Lio/netty/handler/codec/http/HttpMethod;

    .line 36
    .line 37
    new-instance v4, Lio/netty/handler/codec/http/HttpMethod;

    .line 38
    .line 39
    const-string v5, "PUT"

    .line 40
    .line 41
    invoke-direct {v4, v5}, Lio/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v4, Lio/netty/handler/codec/http/HttpMethod;->PUT:Lio/netty/handler/codec/http/HttpMethod;

    .line 45
    .line 46
    new-instance v5, Lio/netty/handler/codec/http/HttpMethod;

    .line 47
    .line 48
    const-string v6, "PATCH"

    .line 49
    .line 50
    invoke-direct {v5, v6}, Lio/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v5, Lio/netty/handler/codec/http/HttpMethod;->PATCH:Lio/netty/handler/codec/http/HttpMethod;

    .line 54
    .line 55
    new-instance v6, Lio/netty/handler/codec/http/HttpMethod;

    .line 56
    .line 57
    const-string v7, "DELETE"

    .line 58
    .line 59
    invoke-direct {v6, v7}, Lio/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sput-object v6, Lio/netty/handler/codec/http/HttpMethod;->DELETE:Lio/netty/handler/codec/http/HttpMethod;

    .line 63
    .line 64
    new-instance v7, Lio/netty/handler/codec/http/HttpMethod;

    .line 65
    .line 66
    const-string v8, "TRACE"

    .line 67
    .line 68
    invoke-direct {v7, v8}, Lio/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v7, Lio/netty/handler/codec/http/HttpMethod;->TRACE:Lio/netty/handler/codec/http/HttpMethod;

    .line 72
    .line 73
    new-instance v8, Lio/netty/handler/codec/http/HttpMethod;

    .line 74
    .line 75
    const-string v9, "CONNECT"

    .line 76
    .line 77
    invoke-direct {v8, v9}, Lio/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sput-object v8, Lio/netty/handler/codec/http/HttpMethod;->CONNECT:Lio/netty/handler/codec/http/HttpMethod;

    .line 81
    .line 82
    new-instance v9, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap;

    .line 83
    .line 84
    const/16 v10, 0x9

    .line 85
    .line 86
    new-array v10, v10, [Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;

    .line 87
    .line 88
    new-instance v11, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;

    .line 89
    .line 90
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    invoke-direct {v11, v12, v0}, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    aput-object v11, v10, v0

    .line 99
    .line 100
    new-instance v0, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;

    .line 101
    .line 102
    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    invoke-direct {v0, v11, v1}, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    const/4 v1, 0x1

    .line 110
    aput-object v0, v10, v1

    .line 111
    .line 112
    new-instance v0, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;

    .line 113
    .line 114
    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    const/4 v1, 0x2

    .line 122
    aput-object v0, v10, v1

    .line 123
    .line 124
    new-instance v0, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;

    .line 125
    .line 126
    invoke-virtual {v3}, Lio/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-direct {v0, v1, v3}, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    const/4 v1, 0x3

    .line 134
    aput-object v0, v10, v1

    .line 135
    .line 136
    new-instance v0, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;

    .line 137
    .line 138
    invoke-virtual {v4}, Lio/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-direct {v0, v1, v4}, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    const/4 v1, 0x4

    .line 146
    aput-object v0, v10, v1

    .line 147
    .line 148
    new-instance v0, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;

    .line 149
    .line 150
    invoke-virtual {v5}, Lio/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-direct {v0, v1, v5}, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    const/4 v1, 0x5

    .line 158
    aput-object v0, v10, v1

    .line 159
    .line 160
    new-instance v0, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;

    .line 161
    .line 162
    invoke-virtual {v6}, Lio/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-direct {v0, v1, v6}, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    const/4 v1, 0x6

    .line 170
    aput-object v0, v10, v1

    .line 171
    .line 172
    new-instance v0, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;

    .line 173
    .line 174
    invoke-virtual {v7}, Lio/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-direct {v0, v1, v7}, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    const/4 v1, 0x7

    .line 182
    aput-object v0, v10, v1

    .line 183
    .line 184
    new-instance v0, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;

    .line 185
    .line 186
    invoke-virtual {v8}, Lio/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-direct {v0, v1, v8}, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    const/16 v1, 0x8

    .line 194
    .line 195
    aput-object v0, v10, v1

    .line 196
    .line 197
    invoke-direct {v9, v10}, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap;-><init>([Lio/netty/handler/codec/http/HttpMethod$EnumNameMap$Node;)V

    .line 198
    .line 199
    .line 200
    sput-object v9, Lio/netty/handler/codec/http/HttpMethod;->methodMap:Lio/netty/handler/codec/http/HttpMethod$EnumNameMap;

    .line 201
    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "name"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ge v0, v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string v0, "invalid character in name"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_1
    invoke-static {p1}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpMethod;->name:Lio/netty/util/AsciiString;

    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    const-string v0, "empty name"

    .line 66
    .line 67
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMethod;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/codec/http/HttpMethod;->methodMap:Lio/netty/handler/codec/http/HttpMethod$EnumNameMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/HttpMethod$EnumNameMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/netty/handler/codec/http/HttpMethod;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/HttpMethod;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lio/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-object v0
.end method


# virtual methods
.method public asciiName()Lio/netty/util/AsciiString;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpMethod;->name:Lio/netty/util/AsciiString;

    .line 2
    .line 3
    return-object v0
.end method

.method public compareTo(Lio/netty/handler/codec/http/HttpMethod;)I
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpMethod;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpMethod;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lio/netty/handler/codec/http/HttpMethod;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpMethod;->compareTo(Lio/netty/handler/codec/http/HttpMethod;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lio/netty/handler/codec/http/HttpMethod;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lio/netty/handler/codec/http/HttpMethod;

    .line 12
    .line 13
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpMethod;->name()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpMethod;->name()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpMethod;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpMethod;->name:Lio/netty/util/AsciiString;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpMethod;->name:Lio/netty/util/AsciiString;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
