.class public Lcom/alibaba/fastjson/parser/deserializer/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/j1;
.implements Lcom/alibaba/fastjson/parser/deserializer/x0;


# static fields
.field public static final a:Lcom/alibaba/fastjson/parser/deserializer/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/r0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/r0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/r0;->a:Lcom/alibaba/fastjson/parser/deserializer/r0;

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
    const/4 v0, 0x4

    return v0
.end method

.method public c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
    move-result p3

    .line 9
    const/4 v0, 0x4

    .line 10
    if-ne p3, v0, :cond_a

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/x;->a()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-ne p2, p1, :cond_0

    .line 24
    .line 25
    invoke-static {p3}, Lcom/alibaba/fastjson/parser/deserializer/z;->a(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a0;->a()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-ne p2, p1, :cond_1

    .line 35
    .line 36
    invoke-static {p3}, Lcom/alibaba/fastjson/parser/deserializer/b0;->a(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_1
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/c0;->a()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-ne p2, p1, :cond_2

    .line 46
    .line 47
    invoke-static {p3}, Lcom/alibaba/fastjson/parser/deserializer/d0;->a(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_2
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/e0;->a()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-ne p2, p1, :cond_3

    .line 57
    .line 58
    invoke-static {p3}, Lcom/alibaba/fastjson/parser/deserializer/f0;->a(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :cond_3
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/g0;->a()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-ne p2, p1, :cond_4

    .line 68
    .line 69
    invoke-static {p3}, Lcom/alibaba/fastjson/parser/deserializer/h0;->a(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :cond_4
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/i0;->a()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p2, p1, :cond_5

    .line 79
    .line 80
    invoke-static {p3}, Lcom/alibaba/fastjson/parser/deserializer/j0;->a(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1

    .line 85
    :cond_5
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/k0;->a()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-ne p2, p1, :cond_6

    .line 90
    .line 91
    invoke-static {p3}, Lcom/alibaba/fastjson/parser/deserializer/l0;->a(Ljava/lang/String;)Ljava/time/ZoneId;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :cond_6
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/m0;->a()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-ne p2, p1, :cond_7

    .line 101
    .line 102
    invoke-static {p3}, Lcom/alibaba/fastjson/parser/deserializer/n0;->a(Ljava/lang/CharSequence;)Ljava/time/Period;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    return-object p1

    .line 107
    :cond_7
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/o0;->a()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-ne p2, p1, :cond_8

    .line 112
    .line 113
    invoke-static {p3}, Lcom/alibaba/fastjson/parser/deserializer/p0;->a(Ljava/lang/CharSequence;)Ljava/time/Duration;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    return-object p1

    .line 118
    :cond_8
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/q0;->a()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-ne p2, p1, :cond_9

    .line 123
    .line 124
    invoke-static {p3}, Lcom/alibaba/fastjson/parser/deserializer/y;->a(Ljava/lang/CharSequence;)Ljava/time/Instant;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    return-object p1

    .line 129
    :cond_9
    const/4 p1, 0x0

    .line 130
    return-object p1

    .line 131
    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 132
    .line 133
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 134
    .line 135
    .line 136
    throw p1
.end method

.method public d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0
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
    if-nez p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->q0(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
