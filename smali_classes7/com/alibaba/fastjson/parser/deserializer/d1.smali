.class public Lcom/alibaba/fastjson/parser/deserializer/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/x0;


# static fields
.field public static final a:Lcom/alibaba/fastjson/parser/deserializer/d1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/d1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/d1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/d1;->a:Lcom/alibaba/fastjson/parser/deserializer/d1;

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
    const/4 v0, 0x2

    return v0
.end method

.method public c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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
    const/16 v0, 0x10

    .line 10
    .line 11
    if-ne p3, v0, :cond_3

    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    const-string v1, "syntax error"

    .line 22
    .line 23
    if-ne p3, p1, :cond_2

    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/parser/d;->L(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    if-ne p3, p1, :cond_1

    .line 34
    .line 35
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/d;->y()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    const/16 p1, 0xd

    .line 40
    .line 41
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-ne p3, p1, :cond_0

    .line 49
    .line 50
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Ljava/sql/Time;

    .line 54
    .line 55
    invoke-direct {p1, v2, v3}, Ljava/sql/Time;-><init>(J)V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 60
    .line 61
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 66
    .line 67
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 72
    .line 73
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const/4 p2, 0x0

    .line 82
    if-nez p1, :cond_4

    .line 83
    .line 84
    return-object p2

    .line 85
    :cond_4
    instance-of p3, p1, Ljava/sql/Time;

    .line 86
    .line 87
    if-eqz p3, :cond_5

    .line 88
    .line 89
    return-object p1

    .line 90
    :cond_5
    instance-of p3, p1, Ljava/lang/Number;

    .line 91
    .line 92
    if-eqz p3, :cond_6

    .line 93
    .line 94
    new-instance p2, Ljava/sql/Time;

    .line 95
    .line 96
    check-cast p1, Ljava/lang/Number;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    invoke-direct {p2, v0, v1}, Ljava/sql/Time;-><init>(J)V

    .line 103
    .line 104
    .line 105
    return-object p2

    .line 106
    :cond_6
    instance-of p3, p1, Ljava/lang/String;

    .line 107
    .line 108
    if-eqz p3, :cond_9

    .line 109
    .line 110
    check-cast p1, Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 113
    .line 114
    .line 115
    move-result p3

    .line 116
    if-nez p3, :cond_7

    .line 117
    .line 118
    return-object p2

    .line 119
    :cond_7
    new-instance p2, Lcom/alibaba/fastjson/parser/g;

    .line 120
    .line 121
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/parser/g;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/g;->V0()Z

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    if-eqz p3, :cond_8

    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/e;->j0()Ljava/util/Calendar;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    goto :goto_0

    .line 139
    :cond_8
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    :goto_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/e;->close()V

    .line 144
    .line 145
    .line 146
    new-instance p1, Ljava/sql/Time;

    .line 147
    .line 148
    invoke-direct {p1, v0, v1}, Ljava/sql/Time;-><init>(J)V

    .line 149
    .line 150
    .line 151
    return-object p1

    .line 152
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 153
    .line 154
    const-string p2, "parse error"

    .line 155
    .line 156
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p1
.end method
