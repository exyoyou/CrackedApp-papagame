.class public abstract Lcom/alibaba/fastjson/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/e;
.implements Lcom/alibaba/fastjson/b;


# static fields
.field public static DEFAULT_GENERATE_FEATURE:I = 0x0

.field public static DEFAULT_PARSER_FEATURE:I = 0x0

.field public static DEFAULT_TYPE_KEY:Ljava/lang/String; = "@type"

.field public static DEFFAULT_DATE_FORMAT:Ljava/lang/String; = null

.field public static DUMP_CLASS:Ljava/lang/String; = null

.field public static final VERSION:Ljava/lang/String; = "1.2.0"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    or-int/lit8 v0, v0, 0x0

    .line 8
    .line 9
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InternFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    or-int/2addr v0, v1

    .line 16
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    or-int/2addr v0, v1

    .line 23
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    or-int/2addr v0, v1

    .line 30
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    or-int/2addr v0, v1

    .line 37
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    or-int/2addr v0, v1

    .line 44
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    or-int/2addr v0, v1

    .line 51
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    or-int/2addr v0, v1

    .line 58
    sput v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    .line 59
    .line 60
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 61
    .line 62
    sput-object v0, Lcom/alibaba/fastjson/a;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 63
    .line 64
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    or-int/lit8 v0, v0, 0x0

    .line 71
    .line 72
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    or-int/2addr v0, v1

    .line 79
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    or-int/2addr v0, v1

    .line 86
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    or-int/2addr v0, v1

    .line 93
    sput v0, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    .line 94
    .line 95
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

.method private static a(Lcom/alibaba/fastjson/serializer/v0;Lcom/alibaba/fastjson/serializer/u1;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/o1;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v0;->r()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    move-object v1, p1

    .line 13
    check-cast v1, Lcom/alibaba/fastjson/serializer/o1;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/f1;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v0;->m()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v1, p1

    .line 27
    check-cast v1, Lcom/alibaba/fastjson/serializer/f1;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_2
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/e2;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v0;->u()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v1, p1

    .line 41
    check-cast v1, Lcom/alibaba/fastjson/serializer/e2;

    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_3
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/n1;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v0;->p()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    move-object v1, p1

    .line 55
    check-cast v1, Lcom/alibaba/fastjson/serializer/n1;

    .line 56
    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_4
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/l;

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v0;->g()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    move-object v1, p1

    .line 69
    check-cast v1, Lcom/alibaba/fastjson/serializer/l;

    .line 70
    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_5
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/c;

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v0;->e()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p1, Lcom/alibaba/fastjson/serializer/c;

    .line 83
    .line 84
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_6
    return-void
.end method

.method private static varargs b(Lcom/alibaba/fastjson/serializer/v0;[Lcom/alibaba/fastjson/serializer/u1;)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    invoke-static {p0, v2}, Lcom/alibaba/fastjson/a;->a(Lcom/alibaba/fastjson/serializer/v0;Lcom/alibaba/fastjson/serializer/u1;)V

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method public static final parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final parse(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/c;

    invoke-static {}, Lcom/alibaba/fastjson/parser/k;->k()Lcom/alibaba/fastjson/parser/k;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/fastjson/parser/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/k;I)V

    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    move-result-object p0

    .line 4
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/parser/c;->O(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/c;->close()V

    return-object p0
.end method

.method public static final varargs parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5

    .line 23
    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    .line 24
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    const/4 v4, 0x1

    .line 25
    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final parse([BIILjava/nio/charset/CharsetDecoder;I)Ljava/lang/Object;
    .locals 4

    .line 12
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    int-to-double v0, p2

    .line 13
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v2

    float-to-double v2, v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 14
    invoke-static {v0}, Lcom/alibaba/fastjson/util/j;->g(I)[C

    move-result-object v0

    .line 15
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 16
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 17
    invoke-static {p3, p0, p1}, Lcom/alibaba/fastjson/util/f;->b(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    .line 18
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    .line 19
    new-instance p1, Lcom/alibaba/fastjson/parser/c;

    invoke-static {}, Lcom/alibaba/fastjson/parser/k;->k()Lcom/alibaba/fastjson/parser/k;

    move-result-object p2

    invoke-direct {p1, v0, p0, p2, p4}, Lcom/alibaba/fastjson/parser/c;-><init>([CILcom/alibaba/fastjson/parser/k;I)V

    .line 20
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    move-result-object p0

    .line 21
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/parser/c;->O(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->close()V

    return-object p0
.end method

.method public static final varargs parse([BIILjava/nio/charset/CharsetDecoder;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5

    if-eqz p0, :cond_2

    .line 7
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    .line 9
    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p4, v2

    const/4 v4, 0x1

    .line 10
    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/a;->parse([BIILjava/nio/charset/CharsetDecoder;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final varargs parse([B[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 3

    .line 6
    array-length v0, p0

    invoke-static {}, Lcom/alibaba/fastjson/util/j;->h()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, p1}, Lcom/alibaba/fastjson/a;->parse([BIILjava/nio/charset/CharsetDecoder;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/c;

    invoke-static {}, Lcom/alibaba/fastjson/parser/k;->k()Lcom/alibaba/fastjson/parser/k;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/parser/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/k;)V

    .line 2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/d;->b()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 4
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/d;->j()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/d;->b()I

    move-result p0

    const/16 v2, 0x14

    if-ne p0, v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 7
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/c;->f0(Ljava/util/Collection;)V

    .line 8
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/c;->O(Ljava/lang/Object;)V

    .line 9
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/c;->close()V

    return-object v0
.end method

.method public static final parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 10
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/c;

    invoke-static {}, Lcom/alibaba/fastjson/parser/k;->k()Lcom/alibaba/fastjson/parser/k;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/parser/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/k;)V

    .line 11
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    move-result-object p0

    .line 12
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/d;->b()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 13
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/d;->j()V

    goto :goto_0

    .line 14
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson/parser/c;->c0(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 16
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/c;->O(Ljava/lang/Object;)V

    .line 17
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/c;->close()V

    return-object v0
.end method

.method public static final parseArray(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 18
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/c;

    invoke-static {}, Lcom/alibaba/fastjson/parser/k;->k()Lcom/alibaba/fastjson/parser/k;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/parser/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/k;)V

    .line 19
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/parser/c;->i0([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 21
    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/c;->O(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/c;->close()V

    return-object v0
.end method

.method public static final parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONObject;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/h;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/h<",
            "TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Lcom/alibaba/fastjson/h;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {}, Lcom/alibaba/fastjson/parser/k;->k()Lcom/alibaba/fastjson/parser/k;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/k;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    .line 45
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/deserializer/y0;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/deserializer/y0;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 8
    invoke-static {}, Lcom/alibaba/fastjson/parser/k;->k()Lcom/alibaba/fastjson/parser/k;

    move-result-object v2

    sget v4, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/k;Lcom/alibaba/fastjson/parser/deserializer/y0;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/alibaba/fastjson/parser/k;->k()Lcom/alibaba/fastjson/parser/k;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/k;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    const/4 v3, 0x1

    .line 12
    invoke-static {p2, v2, v3}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_1
    new-instance p3, Lcom/alibaba/fastjson/parser/c;

    invoke-static {}, Lcom/alibaba/fastjson/parser/k;->k()Lcom/alibaba/fastjson/parser/k;

    move-result-object v0

    invoke-direct {p3, p0, v0, p2}, Lcom/alibaba/fastjson/parser/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/k;I)V

    .line 14
    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson/parser/c;->n0(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 15
    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson/parser/c;->O(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/c;->close()V

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/y0;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/y0;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/alibaba/fastjson/parser/k;->k()Lcom/alibaba/fastjson/parser/k;

    move-result-object p2

    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, p2, v0, p3}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/k;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/k;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/k;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 17
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/k;Lcom/alibaba/fastjson/parser/deserializer/y0;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/k;Lcom/alibaba/fastjson/parser/deserializer/y0;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/k;",
            "Lcom/alibaba/fastjson/parser/deserializer/y0;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 18
    :cond_0
    array-length v0, p5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p5, v1

    const/4 v3, 0x1

    .line 19
    invoke-static {p4, v2, v3}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result p4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_1
    new-instance p5, Lcom/alibaba/fastjson/parser/c;

    invoke-direct {p5, p0, p2, p4}, Lcom/alibaba/fastjson/parser/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/k;I)V

    .line 21
    instance-of p0, p3, Lcom/alibaba/fastjson/parser/deserializer/q;

    if-eqz p0, :cond_2

    .line 22
    invoke-virtual {p5}, Lcom/alibaba/fastjson/parser/c;->q()Ljava/util/List;

    move-result-object p0

    move-object p2, p3

    check-cast p2, Lcom/alibaba/fastjson/parser/deserializer/q;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_2
    instance-of p0, p3, Lcom/alibaba/fastjson/parser/deserializer/p;

    if-eqz p0, :cond_3

    .line 24
    invoke-virtual {p5}, Lcom/alibaba/fastjson/parser/c;->o()Ljava/util/List;

    move-result-object p0

    check-cast p3, Lcom/alibaba/fastjson/parser/deserializer/p;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_3
    invoke-virtual {p5, p1}, Lcom/alibaba/fastjson/parser/c;->n0(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 26
    invoke-virtual {p5, p0}, Lcom/alibaba/fastjson/parser/c;->O(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p5}, Lcom/alibaba/fastjson/parser/c;->close()V

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/alibaba/fastjson/parser/k;->k()Lcom/alibaba/fastjson/parser/k;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/k;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject([BIILjava/nio/charset/CharsetDecoder;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 29
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    int-to-double v0, p2

    .line 30
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v2

    float-to-double v2, v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 31
    invoke-static {v0}, Lcom/alibaba/fastjson/util/j;->g(I)[C

    move-result-object v0

    .line 32
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 33
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 34
    invoke-static {p3, p0, p1}, Lcom/alibaba/fastjson/util/f;->b(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    .line 35
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    .line 36
    invoke-static {v0, p0, p4, p5}, Lcom/alibaba/fastjson/a;->parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 28
    array-length v2, p0

    invoke-static {}, Lcom/alibaba/fastjson/util/j;->h()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/a;->parseObject([BIILjava/nio/charset/CharsetDecoder;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([CI",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 37
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    .line 39
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    const/4 v4, 0x1

    .line 40
    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_1
    new-instance p3, Lcom/alibaba/fastjson/parser/c;

    invoke-static {}, Lcom/alibaba/fastjson/parser/k;->k()Lcom/alibaba/fastjson/parser/k;

    move-result-object v1

    invoke-direct {p3, p0, p1, v1, v0}, Lcom/alibaba/fastjson/parser/c;-><init>([CILcom/alibaba/fastjson/parser/k;I)V

    .line 42
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/parser/c;->n0(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 43
    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson/parser/c;->O(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/c;->close()V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/alibaba/fastjson/parser/k;->k()Lcom/alibaba/fastjson/parser/k;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/k;)Ljava/lang/Object;
    .locals 4

    const-string v0, "toJSON error"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v2, p0, Lcom/alibaba/fastjson/a;

    if-eqz v2, :cond_1

    .line 3
    check-cast p0, Lcom/alibaba/fastjson/a;

    return-object p0

    .line 4
    :cond_1
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 5
    check-cast p0, Ljava/util/Map;

    .line 6
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    .line 7
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/alibaba/fastjson/util/k;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object p1

    .line 12
    :cond_3
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_5

    .line 13
    check-cast p0, Ljava/util/Collection;

    .line 14
    new-instance p1, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object p1

    .line 18
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 20
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 21
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 22
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    .line 23
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_7

    .line 24
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 25
    invoke-static {v2}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-object v0

    .line 27
    :cond_8
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/k;->n(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-object p0

    .line 28
    :cond_9
    :try_start_0
    invoke-static {v2, v1}, Lcom/alibaba/fastjson/util/k;->y(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 29
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/e;

    .line 31
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/util/e;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 32
    invoke-static {v3}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 33
    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_a
    return-object v1

    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 35
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/t1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 5

    .line 8
    new-instance v0, Lcom/alibaba/fastjson/serializer/v1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/v1;-><init>()V

    .line 9
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/v0;

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;Lcom/alibaba/fastjson/serializer/t1;)V

    .line 10
    array-length p1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p2, v2

    const/4 v4, 0x1

    .line 11
    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/serializer/v0;->b(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    const-string p0, "UTF-8"

    .line 13
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/serializer/v1;->k(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    throw p0
.end method

.method public static final varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 6

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/v1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/v1;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/v0;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;)V

    .line 3
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    const/4 v5, 0x1

    .line 4
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson/serializer/v0;->b(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    const-string p0, "UTF-8"

    .line 6
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/serializer/v1;->k(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    throw p0
.end method

.method public static final toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/t1;Lcom/alibaba/fastjson/serializer/u1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 5

    .line 28
    new-instance v0, Lcom/alibaba/fastjson/serializer/v1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/v1;-><init>()V

    .line 29
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/v0;

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;Lcom/alibaba/fastjson/serializer/t1;)V

    .line 30
    array-length p1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p3, v2

    const/4 v4, 0x1

    .line 31
    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/serializer/v0;->b(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v1, p2}, Lcom/alibaba/fastjson/a;->a(Lcom/alibaba/fastjson/serializer/v0;Lcom/alibaba/fastjson/serializer/u1;)V

    .line 33
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    throw p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/t1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/t1;Lcom/alibaba/fastjson/serializer/u1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/t1;[Lcom/alibaba/fastjson/serializer/u1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 5

    .line 36
    new-instance v0, Lcom/alibaba/fastjson/serializer/v1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/v1;-><init>()V

    .line 37
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/v0;

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;Lcom/alibaba/fastjson/serializer/t1;)V

    .line 38
    array-length p1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p3, v2

    const/4 v4, 0x1

    .line 39
    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/serializer/v0;->b(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v1, p2}, Lcom/alibaba/fastjson/a;->b(Lcom/alibaba/fastjson/serializer/v0;[Lcom/alibaba/fastjson/serializer/u1;)V

    .line 41
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    throw p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/u1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    .line 9
    new-instance v0, Lcom/alibaba/fastjson/serializer/v1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/v1;-><init>()V

    .line 10
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/v0;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;)V

    .line 11
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_0

    aget-object v5, p2, v3

    .line 12
    invoke-virtual {v1, v5, v4}, Lcom/alibaba/fastjson/serializer/v0;->b(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_0
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1, p2, v4}, Lcom/alibaba/fastjson/serializer/v0;->b(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 14
    invoke-static {v1, p1}, Lcom/alibaba/fastjson/a;->a(Lcom/alibaba/fastjson/serializer/v0;Lcom/alibaba/fastjson/serializer/u1;)V

    .line 15
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    throw p0
.end method

.method public static final toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 44
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v0, 0x0

    .line 45
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, p1, v0

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    .line 2
    new-instance v0, Lcom/alibaba/fastjson/serializer/v1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/v1;-><init>()V

    .line 3
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/v0;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;)V

    .line 4
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    const/4 v5, 0x1

    .line 5
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson/serializer/v0;->b(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    throw p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/u1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    .line 18
    new-instance v0, Lcom/alibaba/fastjson/serializer/v1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/v1;-><init>()V

    .line 19
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/v0;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;)V

    .line 20
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_0

    aget-object v5, p2, v3

    .line 21
    invoke-virtual {v1, v5, v4}, Lcom/alibaba/fastjson/serializer/v0;->b(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    :cond_0
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1, p2, v4}, Lcom/alibaba/fastjson/serializer/v0;->b(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 23
    invoke-static {v1, p1}, Lcom/alibaba/fastjson/a;->b(Lcom/alibaba/fastjson/serializer/v0;[Lcom/alibaba/fastjson/serializer/u1;)V

    .line 24
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    throw p0
.end method

.method public static final varargs toJSONStringWithDateFormat(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/v1;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/v0;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;)V

    .line 9
    .line 10
    .line 11
    array-length v2, p2

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    const/4 v4, 0x1

    .line 14
    if-ge v3, v2, :cond_0

    .line 15
    .line 16
    aget-object v5, p2, v3

    .line 17
    .line 18
    invoke-virtual {v1, v5, v4}, Lcom/alibaba/fastjson/serializer/v0;->b(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 25
    .line 26
    invoke-virtual {v1, p2, v4}, Lcom/alibaba/fastjson/serializer/v0;->b(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 27
    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/v0;->G(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public static final varargs toJSONStringZ(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/t1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lcom/alibaba/fastjson/serializer/v1;-><init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance p2, Lcom/alibaba/fastjson/serializer/v0;

    .line 7
    .line 8
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;Lcom/alibaba/fastjson/serializer/t1;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public static final toJavaObject(Lcom/alibaba/fastjson/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/alibaba/fastjson/parser/k;->k()Lcom/alibaba/fastjson/parser/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/k;->c(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/k;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final varargs writeJSONStringTo(Ljava/lang/Object;Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/v1;-><init>(Ljava/io/Writer;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance p1, Lcom/alibaba/fastjson/serializer/v0;

    .line 7
    .line 8
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;)V

    .line 9
    .line 10
    .line 11
    array-length v1, p2

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    aget-object v3, p2, v2

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson/serializer/v0;->b(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    .line 33
    .line 34
    .line 35
    throw p0
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Lcom/alibaba/fastjson/serializer/v1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/v1;-><init>()V

    .line 47
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/v0;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;)V

    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public writeJSONString(Ljava/lang/Appendable;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/v1;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/v0;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    :try_start_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v1, v2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    .line 39
    .line 40
    .line 41
    throw p1
.end method
