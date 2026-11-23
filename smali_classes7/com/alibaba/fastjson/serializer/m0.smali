.class public Lcom/alibaba/fastjson/serializer/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/j1;
.implements Lcom/alibaba/fastjson/parser/deserializer/x0;


# static fields
.field public static final a:Lcom/alibaba/fastjson/serializer/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/m0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/m0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/serializer/m0;->a:Lcom/alibaba/fastjson/serializer/m0;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    const/16 v0, 0xc

    return v0
.end method

.method public c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/16 p3, 0x8

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/16 v1, 0x10

    .line 13
    .line 14
    if-ne p2, p3, :cond_0

    .line 15
    .line 16
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const/16 p3, 0xc

    .line 25
    .line 26
    const-string v2, "syntax error"

    .line 27
    .line 28
    if-eq p2, p3, :cond_2

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-ne p2, v1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 38
    .line 39
    invoke-direct {p1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 44
    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    const/4 p3, 0x0

    .line 48
    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/16 v4, 0xd

    .line 53
    .line 54
    if-ne v3, v4, :cond_4

    .line 55
    .line 56
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 57
    .line 58
    .line 59
    new-instance p1, Ljava/awt/Font;

    .line 60
    .line 61
    invoke-direct {p1, v0, p2, p3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 62
    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_4
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const/4 v4, 0x4

    .line 70
    if-ne v3, v4, :cond_b

    .line 71
    .line 72
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const/4 v5, 0x2

    .line 77
    invoke-interface {p1, v5}, Lcom/alibaba/fastjson/parser/d;->L(I)V

    .line 78
    .line 79
    .line 80
    const-string v6, "name"

    .line 81
    .line 82
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_6

    .line 87
    .line 88
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-ne v0, v4, :cond_5

    .line 93
    .line 94
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 103
    .line 104
    invoke-direct {p1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_6
    const-string v6, "style"

    .line 109
    .line 110
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_8

    .line 115
    .line 116
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-ne p2, v5, :cond_7

    .line 121
    .line 122
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->I()I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 131
    .line 132
    invoke-direct {p1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1

    .line 136
    :cond_8
    const-string p3, "size"

    .line 137
    .line 138
    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result p3

    .line 142
    if-eqz p3, :cond_a

    .line 143
    .line 144
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 145
    .line 146
    .line 147
    move-result p3

    .line 148
    if-ne p3, v5, :cond_9

    .line 149
    .line 150
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->I()I

    .line 151
    .line 152
    .line 153
    move-result p3

    .line 154
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 155
    .line 156
    .line 157
    :goto_2
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-ne v3, v1, :cond_3

    .line 162
    .line 163
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 168
    .line 169
    invoke-direct {p1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :cond_a
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 174
    .line 175
    new-instance p2, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string p3, "syntax error, "

    .line 181
    .line 182
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p1

    .line 196
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 197
    .line 198
    invoke-direct {p1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p1
.end method

.method public d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/v0;->w()Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p2, Ljava/awt/Font;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 14
    .line 15
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    const/16 p4, 0x7b

    .line 20
    .line 21
    const/16 p5, 0x2c

    .line 22
    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 26
    .line 27
    .line 28
    sget-object p3, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-class p3, Ljava/awt/Font;

    .line 34
    .line 35
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/v1;->q0(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/16 p4, 0x2c

    .line 43
    .line 44
    :cond_1
    const-string p3, "name"

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/awt/Font;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, p4, p3, v0}, Lcom/alibaba/fastjson/serializer/v1;->a0(CLjava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p3, "style"

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/awt/Font;->getStyle()I

    .line 56
    .line 57
    .line 58
    move-result p4

    .line 59
    invoke-virtual {p1, p5, p3, p4}, Lcom/alibaba/fastjson/serializer/v1;->P(CLjava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    const-string p3, "size"

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/awt/Font;->getSize()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-virtual {p1, p5, p3, p2}, Lcom/alibaba/fastjson/serializer/v1;->P(CLjava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    const/16 p2, 0x7d

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
