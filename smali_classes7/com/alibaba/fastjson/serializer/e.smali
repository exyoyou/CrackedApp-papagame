.class public Lcom/alibaba/fastjson/serializer/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/j1;


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/alibaba/fastjson/serializer/j1;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/j1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/serializer/j1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/e;->a:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/e;->b:Lcom/alibaba/fastjson/serializer/j1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
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
    move-result-object p4

    .line 5
    if-nez p2, :cond_1

    .line 6
    .line 7
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 8
    .line 9
    invoke-virtual {p4, p1}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

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
    invoke-virtual {p4, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    move-object p5, p2

    .line 26
    check-cast p5, [Ljava/lang/Object;

    .line 27
    .line 28
    array-length v0, p5

    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/v0;->getContext()Lcom/alibaba/fastjson/serializer/r1;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p1, v1, p2, p3, v2}, Lcom/alibaba/fastjson/serializer/v0;->D(Lcom/alibaba/fastjson/serializer/r1;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    const/16 p2, 0x5b

    .line 38
    .line 39
    :try_start_0
    invoke-virtual {p4, p2}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;

    .line 40
    .line 41
    .line 42
    :goto_1
    if-ge v2, v0, :cond_5

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    const/16 p2, 0x2c

    .line 47
    .line 48
    invoke-virtual {p4, p2}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;

    .line 49
    .line 50
    .line 51
    :cond_2
    aget-object v5, p5, v2

    .line 52
    .line 53
    if-nez v5, :cond_3

    .line 54
    .line 55
    const-string p2, "null"

    .line 56
    .line 57
    invoke-virtual {p4, p2}, Lcom/alibaba/fastjson/serializer/v1;->b(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/v1;

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object p3, p0, Lcom/alibaba/fastjson/serializer/e;->a:Ljava/lang/Class;

    .line 66
    .line 67
    if-ne p2, p3, :cond_4

    .line 68
    .line 69
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/e;->b:Lcom/alibaba/fastjson/serializer/j1;

    .line 70
    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v8, 0x0

    .line 77
    move-object v4, p1

    .line 78
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson/serializer/j1;->d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/v0;->o(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    const/4 v7, 0x0

    .line 95
    const/4 v8, 0x0

    .line 96
    move-object v4, p1

    .line 97
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson/serializer/j1;->d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 98
    .line 99
    .line 100
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    const/16 p2, 0x5d

    .line 104
    .line 105
    invoke-virtual {p4, p2}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/v0;->C(Lcom/alibaba/fastjson/serializer/r1;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :catchall_0
    move-exception p2

    .line 113
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/v0;->C(Lcom/alibaba/fastjson/serializer/r1;)V

    .line 114
    .line 115
    .line 116
    throw p2
.end method
