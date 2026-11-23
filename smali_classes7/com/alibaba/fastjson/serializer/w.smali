.class public Lcom/alibaba/fastjson/serializer/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/j1;


# static fields
.field public static final a:Lcom/alibaba/fastjson/serializer/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/w;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/w;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/serializer/w;->a:Lcom/alibaba/fastjson/serializer/w;

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/v0;->N()V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    check-cast p2, Ljava/sql/Clob;

    .line 8
    .line 9
    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance p3, Ljava/io/StringWriter;

    .line 14
    .line 15
    invoke-direct {p3}, Ljava/io/StringWriter;-><init>()V

    .line 16
    .line 17
    .line 18
    const/16 p4, 0x400

    .line 19
    .line 20
    new-array p4, p4, [C

    .line 21
    .line 22
    :goto_0
    invoke-virtual {p2, p4}, Ljava/io/Reader;->read([C)I

    .line 23
    .line 24
    .line 25
    move-result p5

    .line 26
    const/4 v0, -0x1

    .line 27
    if-eq p5, v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p3, p4, v0, p5}, Ljava/io/StringWriter;->write([CII)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p2}, Ljava/io/Reader;->close()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/v0;->L(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catch_0
    move-exception p1

    .line 46
    new-instance p2, Ljava/io/IOException;

    .line 47
    .line 48
    const-string p3, "write clob error"

    .line 49
    .line 50
    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p2
.end method
