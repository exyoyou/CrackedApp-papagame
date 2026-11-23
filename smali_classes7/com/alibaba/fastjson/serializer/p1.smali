.class public Lcom/alibaba/fastjson/serializer/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/j1;
.implements Lcom/alibaba/fastjson/parser/deserializer/x0;


# static fields
.field public static final a:Lcom/alibaba/fastjson/serializer/p1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/p1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/p1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/serializer/p1;->a:Lcom/alibaba/fastjson/serializer/p1;

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
    .locals 8
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
    if-ne p2, p3, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    const/16 p3, 0xc

    .line 23
    .line 24
    const/16 v0, 0x10

    .line 25
    .line 26
    const-string v1, "syntax error"

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
    if-ne p2, v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 38
    .line 39
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

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
    const/4 v2, 0x0

    .line 49
    const/4 v3, 0x0

    .line 50
    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    const/16 v5, 0xd

    .line 55
    .line 56
    if-ne v4, v5, :cond_4

    .line 57
    .line 58
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 59
    .line 60
    .line 61
    new-instance p1, Ljava/awt/Rectangle;

    .line 62
    .line 63
    invoke-direct {p1, p2, p3, v2, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 64
    .line 65
    .line 66
    return-object p1

    .line 67
    :cond_4
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    const/4 v5, 0x4

    .line 72
    if-ne v4, v5, :cond_a

    .line 73
    .line 74
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const/4 v6, 0x2

    .line 79
    invoke-interface {p1, v6}, Lcom/alibaba/fastjson/parser/d;->L(I)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-ne v7, v6, :cond_9

    .line 87
    .line 88
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->I()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 93
    .line 94
    .line 95
    const-string v7, "x"

    .line 96
    .line 97
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_5

    .line 102
    .line 103
    move p2, v6

    .line 104
    goto :goto_2

    .line 105
    :cond_5
    const-string v7, "y"

    .line 106
    .line 107
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-eqz v7, :cond_6

    .line 112
    .line 113
    move p3, v6

    .line 114
    goto :goto_2

    .line 115
    :cond_6
    const-string v7, "width"

    .line 116
    .line 117
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eqz v7, :cond_7

    .line 122
    .line 123
    move v2, v6

    .line 124
    goto :goto_2

    .line 125
    :cond_7
    const-string v3, "height"

    .line 126
    .line 127
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_8

    .line 132
    .line 133
    move v3, v6

    .line 134
    :goto_2
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-ne v4, v0, :cond_3

    .line 139
    .line 140
    invoke-interface {p1, v5}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 145
    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string p3, "syntax error, "

    .line 152
    .line 153
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p1

    .line 167
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 168
    .line 169
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :cond_a
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 174
    .line 175
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
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
    check-cast p2, Ljava/awt/Rectangle;

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
    const-class p3, Ljava/awt/Rectangle;

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
    const-string p3, "x"

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/awt/Rectangle;->getX()D

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    invoke-virtual {p1, p4, p3, v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->M(CLjava/lang/String;D)V

    .line 51
    .line 52
    .line 53
    const-string p3, "y"

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/awt/Rectangle;->getY()D

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    invoke-virtual {p1, p5, p3, v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->M(CLjava/lang/String;D)V

    .line 60
    .line 61
    .line 62
    const-string p3, "width"

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/awt/Rectangle;->getWidth()D

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    invoke-virtual {p1, p5, p3, v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->M(CLjava/lang/String;D)V

    .line 69
    .line 70
    .line 71
    const-string p3, "height"

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/awt/Rectangle;->getHeight()D

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    invoke-virtual {p1, p5, p3, v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->M(CLjava/lang/String;D)V

    .line 78
    .line 79
    .line 80
    const/16 p2, 0x7d

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
