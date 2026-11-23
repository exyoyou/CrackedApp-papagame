.class Lcom/alibaba/fastjson/JSONPath$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private final e:I

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$i;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$i;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$i;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$i;->d:[Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/alibaba/fastjson/JSONPath$i;->f:Z

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    add-int/2addr p2, p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p2, 0x0

    .line 24
    :goto_0
    if-eqz p3, :cond_1

    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    add-int/2addr p2, p3

    .line 31
    :cond_1
    if-eqz p4, :cond_2

    .line 32
    .line 33
    array-length p3, p4

    .line 34
    :goto_1
    if-ge p1, p3, :cond_2

    .line 35
    .line 36
    aget-object p5, p4, p1

    .line 37
    .line 38
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result p5

    .line 42
    add-int/2addr p2, p5

    .line 43
    add-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iput p2, p0, Lcom/alibaba/fastjson/JSONPath$i;->e:I

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$i;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    invoke-virtual {p1, p4, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->r(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return p3

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iget p4, p0, Lcom/alibaba/fastjson/JSONPath$i;->e:I

    .line 20
    .line 21
    if-ge p2, p4, :cond_1

    .line 22
    .line 23
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$i;->f:Z

    .line 24
    .line 25
    return p1

    .line 26
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$i;->b:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz p2, :cond_3

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$i;->f:Z

    .line 37
    .line 38
    return p1

    .line 39
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$i;->b:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    add-int/2addr p2, p3

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const/4 p2, 0x0

    .line 48
    :goto_0
    iget-object p4, p0, Lcom/alibaba/fastjson/JSONPath$i;->d:[Ljava/lang/String;

    .line 49
    .line 50
    if-eqz p4, :cond_5

    .line 51
    .line 52
    array-length v0, p4

    .line 53
    :goto_1
    if-ge p3, v0, :cond_5

    .line 54
    .line 55
    aget-object v1, p4, p3

    .line 56
    .line 57
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    const/4 v2, -0x1

    .line 62
    if-ne p2, v2, :cond_4

    .line 63
    .line 64
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$i;->f:Z

    .line 65
    .line 66
    return p1

    .line 67
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    add-int/2addr p2, v1

    .line 72
    add-int/lit8 p3, p3, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$i;->c:Ljava/lang/String;

    .line 76
    .line 77
    if-eqz p2, :cond_6

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_6

    .line 84
    .line 85
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$i;->f:Z

    .line 86
    .line 87
    return p1

    .line 88
    :cond_6
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$i;->f:Z

    .line 89
    .line 90
    xor-int/lit8 p1, p1, 0x1

    .line 91
    .line 92
    return p1
.end method
