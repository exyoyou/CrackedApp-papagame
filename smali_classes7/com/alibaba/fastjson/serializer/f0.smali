.class public Lcom/alibaba/fastjson/serializer/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/j1;


# static fields
.field public static a:Lcom/alibaba/fastjson/serializer/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/f0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/f0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/serializer/f0;->a:Lcom/alibaba/fastjson/serializer/f0;

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
.method public d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 9
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
    move-result-object p5

    .line 5
    if-nez p2, :cond_1

    .line 6
    .line 7
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 8
    .line 9
    invoke-virtual {p5, p1}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p1, "[]"

    .line 16
    .line 17
    invoke-virtual {p5, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p5}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/v0;->y(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    instance-of v0, p4, Ljava/lang/reflect/ParameterizedType;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    .line 39
    .line 40
    invoke-interface {p4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    aget-object p4, p4, v1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 p4, 0x0

    .line 48
    :goto_1
    move-object v0, p2

    .line 49
    check-cast v0, Ljava/util/Enumeration;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/v0;->getContext()Lcom/alibaba/fastjson/serializer/r1;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {p1, v8, p2, p3, v1}, Lcom/alibaba/fastjson/serializer/v0;->D(Lcom/alibaba/fastjson/serializer/r1;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    const/16 p2, 0x5b

    .line 59
    .line 60
    :try_start_0
    invoke-virtual {p5, p2}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;

    .line 61
    .line 62
    .line 63
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_5

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    add-int/lit8 p2, v1, 0x1

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    const/16 p3, 0x2c

    .line 78
    .line 79
    invoke-virtual {p5, p3}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;

    .line 80
    .line 81
    .line 82
    :cond_3
    if-nez v4, :cond_4

    .line 83
    .line 84
    invoke-virtual {p5}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/v0;->o(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    add-int/lit8 p3, p2, -0x1

    .line 97
    .line 98
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    const/4 v7, 0x0

    .line 103
    move-object v3, p1

    .line 104
    move-object v6, p4

    .line 105
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson/serializer/j1;->d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 106
    .line 107
    .line 108
    :goto_3
    move v1, p2

    .line 109
    goto :goto_2

    .line 110
    :cond_5
    const/16 p2, 0x5d

    .line 111
    .line 112
    invoke-virtual {p5, p2}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/serializer/v0;->C(Lcom/alibaba/fastjson/serializer/r1;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :catchall_0
    move-exception p2

    .line 120
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/serializer/v0;->C(Lcom/alibaba/fastjson/serializer/r1;)V

    .line 121
    .line 122
    .line 123
    throw p2
.end method
