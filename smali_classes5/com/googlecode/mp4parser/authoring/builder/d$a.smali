.class Lcom/googlecode/mp4parser/authoring/builder/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/mp4parser/authoring/builder/d;->K(Ljava/util/List;ILjava/util/Map;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/googlecode/mp4parser/authoring/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/googlecode/mp4parser/authoring/builder/d;

.field private final synthetic c:Ljava/util/Map;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/authoring/builder/d;Ljava/util/Map;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/d$a;->b:Lcom/googlecode/mp4parser/authoring/builder/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/builder/d$a;->c:Ljava/util/Map;

    .line 4
    .line 5
    iput p3, p0, Lcom/googlecode/mp4parser/authoring/builder/d$a;->d:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/h;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/builder/d$a;->c:Ljava/util/Map;

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, [J

    .line 12
    .line 13
    iget v3, v0, Lcom/googlecode/mp4parser/authoring/builder/d$a;->d:I

    .line 14
    .line 15
    aget-wide v3, v1, v3

    .line 16
    .line 17
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/builder/d$a;->c:Ljava/util/Map;

    .line 18
    .line 19
    move-object/from16 v5, p2

    .line 20
    .line 21
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, [J

    .line 26
    .line 27
    iget v6, v0, Lcom/googlecode/mp4parser/authoring/builder/d$a;->d:I

    .line 28
    .line 29
    aget-wide v6, v1, v6

    .line 30
    .line 31
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/h;->Z()[J

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/h;->Z()[J

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    const/4 v11, 0x1

    .line 40
    const/4 v12, 0x1

    .line 41
    const-wide/16 v13, 0x0

    .line 42
    .line 43
    :goto_0
    int-to-long v9, v12

    .line 44
    cmp-long v15, v9, v3

    .line 45
    .line 46
    if-ltz v15, :cond_1

    .line 47
    .line 48
    const-wide/16 v9, 0x0

    .line 49
    .line 50
    :goto_1
    int-to-long v3, v11

    .line 51
    cmp-long v1, v3, v6

    .line 52
    .line 53
    if-ltz v1, :cond_0

    .line 54
    .line 55
    long-to-double v3, v13

    .line 56
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/i;->i()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    long-to-double v1, v1

    .line 65
    div-double/2addr v3, v1

    .line 66
    long-to-double v1, v9

    .line 67
    invoke-interface/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/i;->i()J

    .line 72
    .line 73
    .line 74
    move-result-wide v5

    .line 75
    long-to-double v5, v5

    .line 76
    div-double/2addr v1, v5

    .line 77
    sub-double/2addr v3, v1

    .line 78
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    .line 79
    .line 80
    mul-double v3, v3, v1

    .line 81
    .line 82
    double-to-int v1, v3

    .line 83
    return v1

    .line 84
    :cond_0
    add-int/lit8 v1, v11, -0x1

    .line 85
    .line 86
    aget-wide v3, v8, v1

    .line 87
    .line 88
    add-long/2addr v9, v3

    .line 89
    add-int/lit8 v11, v11, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    add-int/lit8 v9, v12, -0x1

    .line 93
    .line 94
    aget-wide v9, v1, v9

    .line 95
    .line 96
    add-long/2addr v13, v9

    .line 97
    add-int/lit8 v12, v12, 0x1

    .line 98
    .line 99
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    check-cast p2, Lcom/googlecode/mp4parser/authoring/h;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/d$a;->a(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/h;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
