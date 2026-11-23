.class public Lcom/alibaba/fastjson/serializer/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/j1;
.implements Lcom/alibaba/fastjson/parser/deserializer/x0;


# static fields
.field public static final a:Lcom/alibaba/fastjson/serializer/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/y;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/y;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/serializer/y;->a:Lcom/alibaba/fastjson/serializer/y;

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
    const/16 p3, 0xc

    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    .line 13
    const-string v1, "syntax error"

    .line 14
    .line 15
    if-eq p2, p3, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-ne p2, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 25
    .line 26
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 31
    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    const/4 p3, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/16 v5, 0xd

    .line 42
    .line 43
    if-ne v4, v5, :cond_3

    .line 44
    .line 45
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 46
    .line 47
    .line 48
    new-instance p1, Ljava/awt/Color;

    .line 49
    .line 50
    invoke-direct {p1, p2, p3, v2, v3}, Ljava/awt/Color;-><init>(IIII)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_3
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const/4 v5, 0x4

    .line 59
    if-ne v4, v5, :cond_9

    .line 60
    .line 61
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const/4 v6, 0x2

    .line 66
    invoke-interface {p1, v6}, Lcom/alibaba/fastjson/parser/d;->L(I)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-ne v7, v6, :cond_8

    .line 74
    .line 75
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->I()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 80
    .line 81
    .line 82
    const-string v7, "r"

    .line 83
    .line 84
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_4

    .line 89
    .line 90
    move p2, v6

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    const-string v7, "g"

    .line 93
    .line 94
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_5

    .line 99
    .line 100
    move p3, v6

    .line 101
    goto :goto_2

    .line 102
    :cond_5
    const-string v7, "b"

    .line 103
    .line 104
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_6

    .line 109
    .line 110
    move v2, v6

    .line 111
    goto :goto_2

    .line 112
    :cond_6
    const-string v3, "alpha"

    .line 113
    .line 114
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_7

    .line 119
    .line 120
    move v3, v6

    .line 121
    :goto_2
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-ne v4, v0, :cond_2

    .line 126
    .line 127
    invoke-interface {p1, v5}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 132
    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string p3, "syntax error, "

    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 155
    .line 156
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p1

    .line 160
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 161
    .line 162
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
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
    check-cast p2, Ljava/awt/Color;

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
    const-class p3, Ljava/awt/Color;

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
    const-string p3, "r"

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/awt/Color;->getRed()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p1, p4, p3, v0}, Lcom/alibaba/fastjson/serializer/v1;->P(CLjava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    const-string p3, "g"

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/awt/Color;->getGreen()I

    .line 56
    .line 57
    .line 58
    move-result p4

    .line 59
    invoke-virtual {p1, p5, p3, p4}, Lcom/alibaba/fastjson/serializer/v1;->P(CLjava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    const-string p3, "b"

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/awt/Color;->getBlue()I

    .line 65
    .line 66
    .line 67
    move-result p4

    .line 68
    invoke-virtual {p1, p5, p3, p4}, Lcom/alibaba/fastjson/serializer/v1;->P(CLjava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/awt/Color;->getAlpha()I

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    if-lez p3, :cond_2

    .line 76
    .line 77
    const-string p3, "alpha"

    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/awt/Color;->getAlpha()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    invoke-virtual {p1, p5, p3, p2}, Lcom/alibaba/fastjson/serializer/v1;->P(CLjava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    :cond_2
    const/16 p2, 0x7d

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
