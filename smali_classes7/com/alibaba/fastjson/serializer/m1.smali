.class public Lcom/alibaba/fastjson/serializer/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/j1;
.implements Lcom/alibaba/fastjson/parser/deserializer/x0;


# static fields
.field public static final a:Lcom/alibaba/fastjson/serializer/m1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/m1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/m1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/serializer/m1;->a:Lcom/alibaba/fastjson/serializer/m1;

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
    move-result-object p2

    .line 5
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    if-ne p3, v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    const/16 v0, 0xc

    .line 25
    .line 26
    const-string v2, "syntax error"

    .line 27
    .line 28
    if-eq p3, v0, :cond_2

    .line 29
    .line 30
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-ne p3, v1, :cond_1

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
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 44
    .line 45
    .line 46
    const/4 p3, 0x0

    .line 47
    const/4 v0, 0x0

    .line 48
    :cond_3
    :goto_1
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/d;->b()I

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
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 57
    .line 58
    .line 59
    new-instance p1, Ljava/awt/Point;

    .line 60
    .line 61
    invoke-direct {p1, p3, v0}, Ljava/awt/Point;-><init>(II)V

    .line 62
    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_4
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const/4 v4, 0x4

    .line 70
    if-ne v3, v4, :cond_9

    .line 71
    .line 72
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    sget-object v5, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_5

    .line 83
    .line 84
    const-string v3, "java.awt.Point"

    .line 85
    .line 86
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/c;->c(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    const/4 v5, 0x2

    .line 91
    invoke-interface {p2, v5}, Lcom/alibaba/fastjson/parser/d;->L(I)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-ne v6, v5, :cond_8

    .line 99
    .line 100
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/d;->I()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 105
    .line 106
    .line 107
    const-string v6, "x"

    .line 108
    .line 109
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_6

    .line 114
    .line 115
    move p3, v5

    .line 116
    goto :goto_2

    .line 117
    :cond_6
    const-string v0, "y"

    .line 118
    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_7

    .line 124
    .line 125
    move v0, v5

    .line 126
    :goto_2
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-ne v3, v1, :cond_3

    .line 131
    .line 132
    invoke-interface {p2, v4}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 137
    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string p3, "syntax error, "

    .line 144
    .line 145
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1

    .line 159
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 160
    .line 161
    new-instance p3, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v0, "syntax error : "

    .line 167
    .line 168
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/d;->h()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p1

    .line 186
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 187
    .line 188
    invoke-direct {p1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1
.end method

.method public d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 2
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
    check-cast p2, Ljava/awt/Point;

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
    const/16 p4, 0x2c

    .line 20
    .line 21
    const/16 p5, 0x7b

    .line 22
    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

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
    const-class p3, Ljava/awt/Point;

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
    const/16 p5, 0x2c

    .line 43
    .line 44
    :cond_1
    const-string p3, "x"

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/awt/Point;->getX()D

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    invoke-virtual {p1, p5, p3, v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->M(CLjava/lang/String;D)V

    .line 51
    .line 52
    .line 53
    const-string p3, "y"

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/awt/Point;->getY()D

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    invoke-virtual {p1, p4, p3, v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->M(CLjava/lang/String;D)V

    .line 60
    .line 61
    .line 62
    const/16 p2, 0x7d

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
