.class public Lcom/byazt/zk/t;
.super Lcom/byazt/zk/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x38d,
        0x42
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/zk/t$c;
    }
.end annotation


# instance fields
.field public final da:Landroid/graphics/Paint;

.field public gr:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public gt:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public gu:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/String;

.field public final i:Landroid/graphics/Matrix;

.field public final m:Lcom/byazt/dg/z;

.field public md:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "Landroid/graphics/Typeface;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public my:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final nu:Lcom/byazt/ga/x;

.field public p:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public qy:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final rh:Lcom/byazt/ga/a;

.field public rl:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final sl:Landroid/graphics/Paint;

.field public final sp:Ljava/lang/StringBuilder;

.field public final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/byazt/nb/uj;",
            "Ljava/util/List<",
            "Lcom/byazt/zy/uj;",
            ">;>;"
        }
    .end annotation
.end field

.field public final u:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Landroid/graphics/RectF;

.field public final yp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/zk/t$c;",
            ">;"
        }
    .end annotation
.end field

.field public yv:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public z:I

.field public zm:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/zk/ve;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/zk/t;->sp:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/RectF;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/zk/t;->x:Landroid/graphics/RectF;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/byazt/zk/t;->i:Landroid/graphics/Matrix;

    .line 25
    .line 26
    new-instance v0, Lcom/byazt/zk/t$1;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/byazt/zk/t$1;-><init>(Lcom/byazt/zk/t;I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/byazt/zk/t;->da:Landroid/graphics/Paint;

    .line 33
    .line 34
    new-instance v0, Lcom/byazt/zk/t$2;

    .line 35
    .line 36
    invoke-direct {v0, p0, v1}, Lcom/byazt/zk/t$2;-><init>(Lcom/byazt/zk/t;I)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/byazt/zk/t;->sl:Landroid/graphics/Paint;

    .line 40
    .line 41
    new-instance v0, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/byazt/zk/t;->t:Ljava/util/Map;

    .line 47
    .line 48
    new-instance v0, Landroid/util/LongSparseArray;

    .line 49
    .line 50
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/byazt/zk/t;->u:Landroid/util/LongSparseArray;

    .line 54
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/byazt/zk/t;->yp:Ljava/util/List;

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/byazt/zk/t;->z:I

    .line 64
    .line 65
    iput-object p1, p0, Lcom/byazt/zk/t;->nu:Lcom/byazt/ga/x;

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/byazt/zk/x;->c()Lcom/byazt/ga/a;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/byazt/zk/t;->rh:Lcom/byazt/ga/a;

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/byazt/zk/x;->my()Lcom/byazt/kd/da;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/byazt/kd/da;->uj()Lcom/byazt/dg/z;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/byazt/zk/t;->m:Lcom/byazt/dg/z;

    .line 82
    .line 83
    invoke-virtual {p1, p0}, Lcom/byazt/dg/c;->c(Lcom/byazt/dg/c$c;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/byazt/zk/ve;->c(Lcom/byazt/dg/c;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/byazt/zk/x;->gt()Lcom/byazt/kd/sl;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_0

    .line 94
    .line 95
    iget-object p2, p1, Lcom/byazt/kd/sl;->c:Lcom/byazt/kd/c;

    .line 96
    .line 97
    if-eqz p2, :cond_0

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/byazt/kd/c;->c()Lcom/byazt/dg/c;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    iput-object p2, p0, Lcom/byazt/zk/t;->my:Lcom/byazt/dg/c;

    .line 104
    .line 105
    invoke-virtual {p2, p0}, Lcom/byazt/dg/c;->c(Lcom/byazt/dg/c$c;)V

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Lcom/byazt/zk/t;->my:Lcom/byazt/dg/c;

    .line 109
    .line 110
    invoke-virtual {p0, p2}, Lcom/byazt/zk/ve;->c(Lcom/byazt/dg/c;)V

    .line 111
    .line 112
    .line 113
    :cond_0
    if-eqz p1, :cond_1

    .line 114
    .line 115
    iget-object p2, p1, Lcom/byazt/kd/sl;->tt:Lcom/byazt/kd/c;

    .line 116
    .line 117
    if-eqz p2, :cond_1

    .line 118
    .line 119
    invoke-virtual {p2}, Lcom/byazt/kd/c;->c()Lcom/byazt/dg/c;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    iput-object p2, p0, Lcom/byazt/zk/t;->rl:Lcom/byazt/dg/c;

    .line 124
    .line 125
    invoke-virtual {p2, p0}, Lcom/byazt/dg/c;->c(Lcom/byazt/dg/c$c;)V

    .line 126
    .line 127
    .line 128
    iget-object p2, p0, Lcom/byazt/zk/t;->rl:Lcom/byazt/dg/c;

    .line 129
    .line 130
    invoke-virtual {p0, p2}, Lcom/byazt/zk/ve;->c(Lcom/byazt/dg/c;)V

    .line 131
    .line 132
    .line 133
    :cond_1
    if-eqz p1, :cond_2

    .line 134
    .line 135
    iget-object p2, p1, Lcom/byazt/kd/sl;->ve:Lcom/byazt/kd/tt;

    .line 136
    .line 137
    if-eqz p2, :cond_2

    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/byazt/kd/tt;->c()Lcom/byazt/dg/c;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    iput-object p2, p0, Lcom/byazt/zk/t;->gu:Lcom/byazt/dg/c;

    .line 144
    .line 145
    invoke-virtual {p2, p0}, Lcom/byazt/dg/c;->c(Lcom/byazt/dg/c$c;)V

    .line 146
    .line 147
    .line 148
    iget-object p2, p0, Lcom/byazt/zk/t;->gu:Lcom/byazt/dg/c;

    .line 149
    .line 150
    invoke-virtual {p0, p2}, Lcom/byazt/zk/ve;->c(Lcom/byazt/dg/c;)V

    .line 151
    .line 152
    .line 153
    :cond_2
    if-eqz p1, :cond_3

    .line 154
    .line 155
    iget-object p1, p1, Lcom/byazt/kd/sl;->uj:Lcom/byazt/kd/tt;

    .line 156
    .line 157
    if-eqz p1, :cond_3

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/byazt/kd/tt;->c()Lcom/byazt/dg/c;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iput-object p1, p0, Lcom/byazt/zk/t;->zm:Lcom/byazt/dg/c;

    .line 164
    .line 165
    invoke-virtual {p1, p0}, Lcom/byazt/dg/c;->c(Lcom/byazt/dg/c$c;)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/byazt/zk/t;->zm:Lcom/byazt/dg/c;

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Lcom/byazt/zk/ve;->c(Lcom/byazt/dg/c;)V

    .line 171
    .line 172
    .line 173
    :cond_3
    return-void
.end method

.method private c(CLcom/byazt/nb/ve;FFZ)F
    .locals 0

    if-eqz p5, :cond_1

    .line 183
    invoke-virtual {p2}, Lcom/byazt/nb/ve;->c()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2}, Lcom/byazt/nb/ve;->ve()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p5, p2}, Lcom/byazt/nb/uj;->c(CLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 184
    iget-object p2, p0, Lcom/byazt/zk/t;->rh:Lcom/byazt/ga/a;

    invoke-virtual {p2}, Lcom/byazt/ga/a;->z()Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/nb/uj;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 185
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/nb/uj;->tt()D

    move-result-wide p1

    double-to-float p1, p1

    mul-float p1, p1, p3

    invoke-static {}, Lcom/byazt/kk/da;->c()F

    move-result p2

    mul-float p1, p1, p2

    :goto_0
    add-float/2addr p1, p4

    return p1

    .line 186
    :cond_1
    iget-object p2, p0, Lcom/byazt/zk/t;->da:Landroid/graphics/Paint;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    goto :goto_0
.end method

.method private c(Lcom/byazt/nb/ve;)Landroid/graphics/Typeface;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/byazt/zk/t;->md:Lcom/byazt/dg/c;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/byazt/zk/t;->nu:Lcom/byazt/ga/x;

    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->c(Lcom/byazt/nb/ve;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 136
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/nb/ve;->uj()Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;FFLcom/byazt/nb/ve;FFZ)Ljava/lang/String;
    .locals 12

    move-object v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 179
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 180
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move-object v6, p0

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 181
    invoke-direct/range {v6 .. v11}, Lcom/byazt/zk/t;->c(CLcom/byazt/nb/ve;FFZ)F

    move-result v5

    add-float/2addr v1, v5

    cmpl-float v5, v1, p2

    if-gtz v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    move v3, v4

    goto :goto_0

    .line 182
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;FLcom/byazt/nb/ve;FFZ)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 285
    invoke-direct/range {v0 .. v7}, Lcom/byazt/zk/t;->c(Ljava/lang/String;IFLcom/byazt/nb/ve;FFZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;FLcom/byazt/nb/ve;FFZI)Ljava/lang/String;
    .locals 12

    move-object v10, p0

    move-object v11, p1

    if-eqz p6, :cond_2

    .line 279
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    .line 280
    :goto_0
    invoke-virtual {p3}, Lcom/byazt/nb/ve;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/byazt/nb/ve;->ve()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/byazt/nb/uj;->c(CLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 281
    iget-object v1, v10, Lcom/byazt/zk/t;->rh:Lcom/byazt/ga/a;

    invoke-virtual {v1}, Lcom/byazt/ga/a;->z()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/nb/uj;

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Lcom/byazt/nb/uj;->tt()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v0, v0, p4

    invoke-static {}, Lcom/byazt/kk/da;->c()F

    move-result v1

    mul-float v0, v0, v1

    add-float v0, v0, p5

    goto :goto_1

    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    :goto_1
    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    goto :goto_2

    .line 283
    :cond_2
    iget-object v0, v10, Lcom/byazt/zk/t;->da:Landroid/graphics/Paint;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, p5

    add-float/2addr v0, v1

    :goto_2
    move v4, v0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 284
    invoke-direct/range {v0 .. v9}, Lcom/byazt/zk/t;->c(Ljava/lang/String;IFFLcom/byazt/nb/ve;FFZI)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    return-object v11
.end method

.method private c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 219
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 220
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, p2

    .line 221
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 222
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 223
    invoke-direct {p0, v2}, Lcom/byazt/zk/t;->tt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    goto :goto_0

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/byazt/zk/t;->u:Landroid/util/LongSparseArray;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_1

    .line 226
    iget-object p1, p0, Lcom/byazt/zk/t;->u:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/byazt/zk/t;->sp:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_1
    if-ge p2, v1, :cond_2

    .line 228
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 229
    iget-object v2, p0, Lcom/byazt/zk/t;->sp:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 230
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_1

    .line 231
    :cond_2
    iget-object p1, p0, Lcom/byazt/zk/t;->sp:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 232
    iget-object p2, p0, Lcom/byazt/zk/t;->u:Landroid/util/LongSparseArray;

    invoke-virtual {p2, v3, v4, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object p1
.end method

.method private c(Ljava/lang/String;IFFLcom/byazt/nb/ve;FFZI)Ljava/lang/String;
    .locals 8

    move/from16 v0, p9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 168
    invoke-direct/range {v0 .. v7}, Lcom/byazt/zk/t;->c(Ljava/lang/String;IFLcom/byazt/nb/ve;FFZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sub-float v2, p3, p4

    const/4 v1, 0x0

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    move-object v0, p0

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 170
    invoke-direct/range {v0 .. v7}, Lcom/byazt/zk/t;->c(Ljava/lang/String;FFLcom/byazt/nb/ve;FFZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v0, p0

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 171
    invoke-direct/range {v0 .. v7}, Lcom/byazt/zk/t;->ve(Ljava/lang/String;FFLcom/byazt/nb/ve;FFZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v0, p0

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 172
    invoke-direct/range {v0 .. v7}, Lcom/byazt/zk/t;->tt(Ljava/lang/String;FFLcom/byazt/nb/ve;FFZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v0, p0

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 173
    invoke-direct/range {v0 .. v7}, Lcom/byazt/zk/t;->c(Ljava/lang/String;FFLcom/byazt/nb/ve;FFZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;IFLcom/byazt/nb/ve;FFZ)Ljava/lang/String;
    .locals 12

    .line 174
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 175
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 176
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move-object v6, p0

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 177
    invoke-direct/range {v6 .. v11}, Lcom/byazt/zk/t;->c(CLcom/byazt/nb/ve;FFZ)F

    move-result v5

    add-float/2addr v1, v5

    cmpl-float v5, v1, p3

    if-gtz v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    move v3, v4

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/zk/t$c;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/zk/t$c;

    .line 273
    invoke-static {v1}, Lcom/byazt/zk/t$c;->tt(Lcom/byazt/zk/t$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/util/List;II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/zk/t$c;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge p2, p3, :cond_0

    .line 276
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 277
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/zk/t$c;

    invoke-static {v1}, Lcom/byazt/zk/t$c;->tt(Lcom/byazt/zk/t$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/byazt/nb/uj;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/nb/uj;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/zy/uj;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/byazt/zk/t;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/byazt/zk/t;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/nb/uj;->c()Ljava/util/List;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 215
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 216
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/jx/m;

    .line 217
    new-instance v5, Lcom/byazt/zy/uj;

    iget-object v6, p0, Lcom/byazt/zk/t;->nu:Lcom/byazt/ga/x;

    iget-object v7, p0, Lcom/byazt/zk/t;->rh:Lcom/byazt/ga/a;

    invoke-direct {v5, v6, p0, v4, v7}, Lcom/byazt/zy/uj;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/ve;Lcom/byazt/jx/m;Lcom/byazt/ga/a;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/byazt/zk/t;->t:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private c(Ljava/lang/String;FLcom/byazt/nb/ve;FFZII)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Lcom/byazt/nb/ve;",
            "FFZII)",
            "Ljava/util/List<",
            "Lcom/byazt/zk/t$c;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p7

    .line 143
    iget v14, v10, Lcom/byazt/zk/t;->z:I

    const/16 v16, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 144
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v9, v3, :cond_c

    .line 145
    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eqz p6, :cond_1

    .line 146
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/nb/ve;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/nb/ve;->ve()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/byazt/nb/uj;->c(CLjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 147
    iget-object v5, v10, Lcom/byazt/zk/t;->rh:Lcom/byazt/ga/a;

    invoke-virtual {v5}, Lcom/byazt/ga/a;->z()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/nb/uj;

    if-eqz v4, :cond_0

    .line 148
    invoke-virtual {v4}, Lcom/byazt/nb/uj;->tt()D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, p4

    invoke-static {}, Lcom/byazt/kk/da;->c()F

    move-result v5

    mul-float v4, v4, v5

    goto :goto_1

    :cond_0
    move/from16 v20, v2

    move v15, v9

    move v2, v13

    goto/16 :goto_6

    .line 149
    :cond_1
    iget-object v4, v10, Lcom/byazt/zk/t;->da:Landroid/graphics/Paint;

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v11, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    :goto_1
    add-float v4, v4, p5

    move/from16 v19, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2

    move/from16 v20, v19

    goto :goto_2

    :cond_2
    move/from16 v20, v2

    :goto_2
    add-float v21, v0, v19

    add-int/lit8 v7, v1, 0x1

    const/4 v0, 0x1

    if-lt v7, v13, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    cmpl-float v5, v12, v16

    if-lez v5, :cond_b

    cmpl-float v5, v21, v12

    if-ltz v5, :cond_b

    if-eq v3, v4, :cond_b

    if-eqz v2, :cond_8

    const/4 v1, 0x3

    move/from16 v6, p8

    if-ne v6, v1, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move v15, v7

    move/from16 v7, p6

    .line 150
    invoke-direct/range {v0 .. v7}, Lcom/byazt/zk/t;->c(Ljava/lang/String;IFLcom/byazt/nb/ve;FFZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 151
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zk/t;->z()Lcom/byazt/zk/t$c;

    move-result-object v1

    .line 152
    invoke-virtual {v1, v0, v12}, Lcom/byazt/zk/t$c;->c(Ljava/lang/String;F)V

    .line 153
    iget-object v0, v10, Lcom/byazt/zk/t;->yp:Ljava/util/List;

    iget v1, v10, Lcom/byazt/zk/t;->z:I

    invoke-interface {v0, v14, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_4
    move v13, v8

    move/from16 v22, v15

    goto :goto_5

    :cond_5
    move v15, v7

    if-nez v17, :cond_7

    if-eqz p6, :cond_6

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v1, v1, v19

    goto :goto_4

    .line 154
    :cond_6
    iget-object v1, v10, Lcom/byazt/zk/t;->da:Landroid/graphics/Paint;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, p5

    add-float/2addr v1, v2

    :goto_4
    move/from16 v18, v1

    const/16 v17, 0x1

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move/from16 v3, p2

    move/from16 v4, v18

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v13, v8

    move/from16 v8, p6

    move/from16 v22, v15

    move v15, v9

    move/from16 v9, p8

    .line 155
    invoke-direct/range {v0 .. v9}, Lcom/byazt/zk/t;->c(Ljava/lang/String;IFFLcom/byazt/nb/ve;FFZI)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zk/t;->z()Lcom/byazt/zk/t$c;

    move-result-object v1

    .line 157
    invoke-virtual {v1, v0, v12}, Lcom/byazt/zk/t$c;->c(Ljava/lang/String;F)V

    .line 158
    iget-object v0, v10, Lcom/byazt/zk/t;->yp:Ljava/util/List;

    iget v1, v10, Lcom/byazt/zk/t;->z:I

    invoke-interface {v0, v14, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_8
    move/from16 v22, v7

    move v13, v8

    :goto_5
    move v15, v9

    .line 159
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zk/t;->z()Lcom/byazt/zk/t$c;

    move-result-object v0

    .line 160
    invoke-virtual {v11, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float v1, v1, v20

    sub-float v21, v21, v19

    sub-float v1, v21, v1

    .line 163
    invoke-virtual {v0, v2, v1}, Lcom/byazt/zk/t$c;->c(Ljava/lang/String;F)V

    move/from16 v2, p7

    move/from16 v1, v22

    if-lt v1, v2, :cond_a

    .line 164
    iget-object v0, v10, Lcom/byazt/zk/t;->yp:Ljava/util/List;

    iget v1, v10, Lcom/byazt/zk/t;->z:I

    invoke-interface {v0, v14, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_a
    move v8, v15

    move/from16 v0, v19

    goto :goto_6

    :cond_b
    move v3, v8

    move v15, v9

    move v2, v13

    move v8, v3

    move/from16 v0, v21

    :goto_6
    add-int/lit8 v9, v15, 0x1

    move v13, v2

    move/from16 v2, v20

    goto/16 :goto_0

    :cond_c
    move v3, v8

    cmpl-float v1, v0, v16

    if-lez v1, :cond_d

    .line 165
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zk/t;->z()Lcom/byazt/zk/t$c;

    move-result-object v1

    .line 166
    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/byazt/zk/t$c;->c(Ljava/lang/String;F)V

    .line 167
    :cond_d
    iget-object v0, v10, Lcom/byazt/zk/t;->yp:Ljava/util/List;

    iget v1, v10, Lcom/byazt/zk/t;->z:I

    invoke-interface {v0, v14, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/util/List;IIFLcom/byazt/nb/ve;FFZ)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/zk/t$c;",
            ">;IIF",
            "Lcom/byazt/nb/ve;",
            "FFZ)",
            "Ljava/util/List<",
            "Lcom/byazt/zk/t$c;",
            ">;"
        }
    .end annotation

    move-object v8, p0

    move-object v9, p1

    move v0, p2

    move/from16 v7, p3

    move/from16 v10, p4

    .line 233
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 234
    invoke-direct {p0, p1}, Lcom/byazt/zk/t;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    if-ne v7, v1, :cond_0

    move-object v0, p0

    move-object v1, v2

    move/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 235
    invoke-direct/range {v0 .. v6}, Lcom/byazt/zk/t;->c(Ljava/lang/String;FLcom/byazt/nb/ve;FFZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, v2

    move/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p3

    .line 236
    invoke-direct/range {v0 .. v7}, Lcom/byazt/zk/t;->c(Ljava/lang/String;FLcom/byazt/nb/ve;FFZI)Ljava/lang/String;

    move-result-object v0

    .line 237
    :goto_0
    invoke-direct {p0}, Lcom/byazt/zk/t;->z()Lcom/byazt/zk/t$c;

    move-result-object v1

    .line 238
    invoke-virtual {v1, v0, v10}, Lcom/byazt/zk/t$c;->c(Ljava/lang/String;F)V

    .line 239
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_1
    const/4 v3, 0x0

    if-eqz v7, :cond_8

    if-eq v7, v2, :cond_7

    const/4 v4, 0x2

    if-eq v7, v4, :cond_4

    if-eq v7, v1, :cond_3

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_2

    .line 240
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 241
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/byazt/zk/t;->c(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    move-object v0, p0

    move/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 242
    invoke-direct/range {v0 .. v7}, Lcom/byazt/zk/t;->c(Ljava/lang/String;FLcom/byazt/nb/ve;FFZI)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-direct {p0}, Lcom/byazt/zk/t;->z()Lcom/byazt/zk/t$c;

    move-result-object v1

    .line 244
    invoke-virtual {v1, v0, v10}, Lcom/byazt/zk/t$c;->c(Ljava/lang/String;F)V

    .line 245
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_3
    :goto_2
    if-ge v3, v0, :cond_a

    .line 246
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 247
    :cond_4
    div-int/lit8 v1, v0, 0x2

    :goto_3
    if-ge v3, v1, :cond_5

    .line 248
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    sub-int/2addr v0, v1

    add-int/lit8 v12, v0, -0x1

    .line 249
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v12

    if-gt v0, v1, :cond_6

    .line 250
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 251
    :cond_6
    invoke-direct {p0, p1, v1, v0}, Lcom/byazt/zk/t;->c(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x2

    move-object v0, p0

    move/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 252
    invoke-direct/range {v0 .. v7}, Lcom/byazt/zk/t;->c(Ljava/lang/String;FLcom/byazt/nb/ve;FFZI)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-direct {p0}, Lcom/byazt/zk/t;->z()Lcom/byazt/zk/t$c;

    move-result-object v1

    .line 254
    invoke-virtual {v1, v0, v10}, Lcom/byazt/zk/t$c;->c(Ljava/lang/String;F)V

    .line 255
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v12

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 257
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 258
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v12, v0, -0x1

    sub-int/2addr v1, v12

    invoke-direct {p0, p1, v3, v1}, Lcom/byazt/zk/t;->c(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x1

    move-object v0, p0

    move/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 259
    invoke-direct/range {v0 .. v7}, Lcom/byazt/zk/t;->c(Ljava/lang/String;FLcom/byazt/nb/ve;FFZI)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-direct {p0}, Lcom/byazt/zk/t;->z()Lcom/byazt/zk/t$c;

    move-result-object v1

    .line 261
    invoke-virtual {v1, v0, v10}, Lcom/byazt/zk/t$c;->c(Ljava/lang/String;F)V

    .line 262
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v12

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 264
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_9

    .line 265
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 266
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/byazt/zk/t;->c(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    move-object v0, p0

    move/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 267
    invoke-direct/range {v0 .. v7}, Lcom/byazt/zk/t;->c(Ljava/lang/String;FLcom/byazt/nb/ve;FFZI)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-direct {p0}, Lcom/byazt/zk/t;->z()Lcom/byazt/zk/t$c;

    move-result-object v1

    .line 269
    invoke-virtual {v1, v0, v10}, Lcom/byazt/zk/t$c;->c(Ljava/lang/String;F)V

    .line 270
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_7
    return-object v11
.end method

.method private c(Landroid/graphics/Canvas;Lcom/byazt/nb/tt;IF)V
    .locals 6

    .line 122
    iget-object v0, p2, Lcom/byazt/nb/tt;->t:Landroid/graphics/PointF;

    .line 123
    iget-object v1, p2, Lcom/byazt/nb/tt;->u:Landroid/graphics/PointF;

    .line 124
    invoke-static {}, Lcom/byazt/kk/da;->c()F

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 125
    :cond_0
    iget v4, p2, Lcom/byazt/nb/tt;->a:F

    const v5, 0x3f19999a    # 0.6f

    mul-float v4, v4, v5

    mul-float v4, v4, v2

    iget v5, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    :goto_0
    int-to-float p3, p3

    .line 126
    iget v5, p2, Lcom/byazt/nb/tt;->a:F

    mul-float p3, p3, v5

    mul-float p3, p3, v2

    add-float/2addr p3, v4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 127
    :cond_1
    iget v0, v0, Landroid/graphics/PointF;->x:F

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    .line 128
    :cond_2
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 129
    :goto_2
    sget-object v1, Lcom/byazt/zk/t$3;->c:[I

    iget-object p2, p2, Lcom/byazt/nb/tt;->uj:Lcom/byazt/nb/tt$c;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    goto :goto_3

    :cond_3
    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v3, p2

    add-float/2addr v0, v3

    div-float/2addr p4, p2

    sub-float/2addr v0, p4

    .line 130
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_3
    return-void

    :cond_4
    add-float/2addr v0, v3

    sub-float/2addr v0, p4

    .line 131
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    .line 132
    :cond_5
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private c(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    .line 200
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    .line 202
    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private c(Lcom/byazt/nb/tt;Landroid/graphics/Matrix;)V
    .locals 1

    .line 3
    iget-object p2, p0, Lcom/byazt/zk/t;->gt:Lcom/byazt/dg/c;

    if-eqz p2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/zk/t;->da:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/byazt/zk/t;->my:Lcom/byazt/dg/c;

    if-eqz p2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/byazt/zk/t;->da:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/byazt/zk/t;->da:Landroid/graphics/Paint;

    iget v0, p1, Lcom/byazt/nb/tt;->x:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    :goto_0
    iget-object p2, p0, Lcom/byazt/zk/t;->qy:Lcom/byazt/dg/c;

    if-eqz p2, :cond_2

    .line 9
    iget-object v0, p0, Lcom/byazt/zk/t;->sl:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/byazt/zk/t;->rl:Lcom/byazt/dg/c;

    if-eqz p2, :cond_3

    .line 11
    iget-object v0, p0, Lcom/byazt/zk/t;->sl:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/byazt/zk/t;->sl:Landroid/graphics/Paint;

    iget v0, p1, Lcom/byazt/nb/tt;->i:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    :goto_1
    iget-object p2, p0, Lcom/byazt/zk/ve;->uj:Lcom/byazt/dg/m;

    invoke-virtual {p2}, Lcom/byazt/dg/m;->c()Lcom/byazt/dg/c;

    move-result-object p2

    const/16 v0, 0x64

    if-nez p2, :cond_4

    const/16 p2, 0x64

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/byazt/zk/ve;->uj:Lcom/byazt/dg/m;

    invoke-virtual {p2}, Lcom/byazt/dg/m;->c()Lcom/byazt/dg/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_2
    mul-int/lit16 p2, p2, 0xff

    .line 14
    div-int/2addr p2, v0

    .line 15
    iget-object v0, p0, Lcom/byazt/zk/t;->da:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16
    iget-object v0, p0, Lcom/byazt/zk/t;->sl:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 17
    iget-object p2, p0, Lcom/byazt/zk/t;->gr:Lcom/byazt/dg/c;

    if-eqz p2, :cond_5

    .line 18
    iget-object p1, p0, Lcom/byazt/zk/t;->sl:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    .line 19
    :cond_5
    iget-object p2, p0, Lcom/byazt/zk/t;->gu:Lcom/byazt/dg/c;

    if-eqz p2, :cond_6

    .line 20
    iget-object p1, p0, Lcom/byazt/zk/t;->sl:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    .line 21
    :cond_6
    iget-object p2, p0, Lcom/byazt/zk/t;->sl:Landroid/graphics/Paint;

    iget p1, p1, Lcom/byazt/nb/tt;->da:F

    invoke-static {}, Lcom/byazt/kk/da;->c()F

    move-result v0

    mul-float p1, p1, v0

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private c(Lcom/byazt/nb/tt;Landroid/graphics/Matrix;Lcom/byazt/nb/ve;Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 22
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zk/t;->yp()V

    .line 23
    iget-object v0, v9, Lcom/byazt/zk/t;->p:Lcom/byazt/dg/c;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, v10, Lcom/byazt/nb/tt;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 26
    iget-object v0, v9, Lcom/byazt/zk/t;->nu:Lcom/byazt/ga/x;

    invoke-virtual {v0}, Lcom/byazt/ga/x;->zm()Lcom/byazt/ga/gt;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/zk/ve;->sl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v10, Lcom/byazt/nb/tt;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/byazt/ga/gt;->ve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :cond_1
    iget v0, v10, Lcom/byazt/nb/tt;->ve:F

    goto :goto_0

    .line 30
    :catch_0
    :cond_2
    iget v0, v10, Lcom/byazt/nb/tt;->ve:F

    :goto_0
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v11, v0, v1

    .line 31
    invoke-static/range {p2 .. p2}, Lcom/byazt/kk/da;->c(Landroid/graphics/Matrix;)F

    move-result v12

    .line 32
    iget-object v0, v9, Lcom/byazt/zk/t;->h:Ljava/lang/String;

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    iget-object v0, v10, Lcom/byazt/nb/tt;->c:Ljava/lang/String;

    .line 35
    iget-object v1, v10, Lcom/byazt/nb/tt;->z:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 36
    iget-object v1, v9, Lcom/byazt/zk/t;->nu:Lcom/byazt/ga/x;

    invoke-virtual {v1}, Lcom/byazt/ga/x;->zm()Lcom/byazt/ga/gt;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/zk/ve;->sl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v10, Lcom/byazt/nb/tt;->z:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/byazt/ga/gt;->ve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v0, v1

    .line 38
    :cond_3
    invoke-direct {v9, v0}, Lcom/byazt/zk/t;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 39
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 40
    iget v0, v10, Lcom/byazt/nb/tt;->n:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    .line 41
    iget-object v1, v9, Lcom/byazt/zk/t;->yv:Lcom/byazt/dg/c;

    if-eqz v1, :cond_4

    .line 42
    invoke-virtual {v1}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_1
    add-float/2addr v0, v1

    goto :goto_2

    .line 43
    :cond_4
    iget-object v1, v9, Lcom/byazt/zk/t;->zm:Lcom/byazt/dg/c;

    if-eqz v1, :cond_5

    .line 44
    invoke-virtual {v1}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1

    :cond_5
    :goto_2
    move v15, v0

    .line 45
    iget-object v0, v10, Lcom/byazt/nb/tt;->yp:Lcom/byazt/nb/n;

    .line 46
    iget-object v1, v10, Lcom/byazt/nb/tt;->u:Landroid/graphics/PointF;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 47
    invoke-static {}, Lcom/byazt/kk/da;->c()F

    move-result v1

    .line 48
    iget-object v4, v10, Lcom/byazt/nb/tt;->u:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 49
    iget v5, v10, Lcom/byazt/nb/tt;->a:F

    mul-float v6, v5, v1

    cmpl-float v7, v6, v2

    if-lez v7, :cond_6

    const v7, 0x3f19999a    # 0.6f

    mul-float v5, v5, v7

    mul-float v5, v5, v1

    sub-float/2addr v4, v5

    cmpl-float v1, v4, v2

    if-lez v1, :cond_6

    div-float/2addr v4, v6

    float-to-int v1, v4

    add-int/2addr v1, v3

    goto :goto_3

    :cond_6
    const v1, 0x7fffffff

    .line 50
    :goto_3
    iget v4, v0, Lcom/byazt/nb/n;->c:I

    if-ne v4, v3, :cond_7

    const/4 v8, 0x1

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    .line 51
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_8
    move v8, v1

    .line 52
    :goto_4
    iget v7, v0, Lcom/byazt/nb/n;->tt:I

    .line 53
    iget-object v0, v10, Lcom/byazt/nb/tt;->u:Landroid/graphics/PointF;

    if-nez v0, :cond_9

    const/16 v16, 0x0

    goto :goto_5

    :cond_9
    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    .line 54
    :goto_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x0

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v14, :cond_a

    .line 55
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const/16 v18, 0x1

    const v19, 0x7fffffff

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v16

    move-object/from16 v3, p3

    move v4, v11

    move/from16 v21, v5

    move v5, v15

    move-object/from16 v22, v6

    move/from16 v6, v18

    move/from16 v18, v7

    move/from16 v7, v19

    move-object/from16 p2, v13

    move v13, v8

    move/from16 v8, v20

    .line 56
    invoke-direct/range {v0 .. v8}, Lcom/byazt/zk/t;->c(Ljava/lang/String;FLcom/byazt/nb/ve;FFZII)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, v22

    .line 57
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v5, v21, 0x1

    move-object v6, v1

    move v8, v13

    move/from16 v7, v18

    move-object/from16 v13, p2

    goto :goto_6

    :cond_a
    move-object v1, v6

    move/from16 v18, v7

    move v13, v8

    .line 58
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v13, :cond_b

    move-object v8, v1

    goto :goto_7

    :cond_b
    const/4 v8, 0x1

    move-object/from16 v0, p0

    move v2, v13

    move/from16 v3, v18

    move/from16 v4, v16

    move-object/from16 v5, p3

    move v6, v11

    move v7, v15

    .line 59
    invoke-direct/range {v0 .. v8}, Lcom/byazt/zk/t;->c(Ljava/util/List;IIFLcom/byazt/nb/ve;FFZ)Ljava/util/List;

    move-result-object v6

    move-object v8, v6

    :goto_7
    const/4 v13, 0x0

    .line 60
    :goto_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_c

    .line 61
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/zk/t$c;

    .line 62
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    .line 63
    invoke-static {v0}, Lcom/byazt/zk/t$c;->c(Lcom/byazt/zk/t$c;)F

    move-result v1

    move-object/from16 v14, p4

    invoke-direct {v9, v14, v10, v13, v1}, Lcom/byazt/zk/t;->c(Landroid/graphics/Canvas;Lcom/byazt/nb/tt;IF)V

    .line 64
    invoke-static {v0}, Lcom/byazt/zk/t$c;->tt(Lcom/byazt/zk/t$c;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v12

    move v6, v11

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/byazt/zk/t;->c(Ljava/lang/String;Lcom/byazt/nb/tt;Lcom/byazt/nb/ve;Landroid/graphics/Canvas;FFF)V

    .line 65
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_c
    return-void
.end method

.method private c(Lcom/byazt/nb/tt;Lcom/byazt/nb/ve;Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zk/t;->yp()V

    move-object/from16 v12, p2

    .line 74
    invoke-direct {v9, v12}, Lcom/byazt/zk/t;->c(Lcom/byazt/nb/ve;)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v1, v9, Lcom/byazt/zk/t;->nu:Lcom/byazt/ga/x;

    invoke-virtual {v1}, Lcom/byazt/ga/x;->zm()Lcom/byazt/ga/gt;

    move-result-object v1

    .line 76
    iget-object v2, v9, Lcom/byazt/zk/t;->h:Ljava/lang/String;

    .line 77
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    iget-object v2, v10, Lcom/byazt/nb/tt;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 79
    iget-object v3, v10, Lcom/byazt/nb/tt;->z:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/zk/ve;->sl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v10, Lcom/byazt/nb/tt;->z:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/byazt/ga/gt;->ve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v2, v3

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/zk/ve;->sl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/byazt/ga/gt;->ve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    :cond_2
    :goto_0
    iget-object v3, v9, Lcom/byazt/zk/t;->da:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 83
    iget-object v0, v9, Lcom/byazt/zk/t;->p:Lcom/byazt/dg/c;

    if-eqz v0, :cond_3

    .line 84
    invoke-virtual {v0}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    .line 85
    :cond_3
    iget-object v0, v10, Lcom/byazt/nb/tt;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/zk/ve;->sl()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v10, Lcom/byazt/nb/tt;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/byazt/ga/gt;->ve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 88
    :cond_4
    iget v0, v10, Lcom/byazt/nb/tt;->ve:F

    goto :goto_1

    .line 89
    :catch_0
    :cond_5
    iget v0, v10, Lcom/byazt/nb/tt;->ve:F

    .line 90
    :goto_1
    iget-object v1, v9, Lcom/byazt/zk/t;->da:Landroid/graphics/Paint;

    invoke-static {}, Lcom/byazt/kk/da;->c()F

    move-result v3

    mul-float v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    iget-object v1, v9, Lcom/byazt/zk/t;->sl:Landroid/graphics/Paint;

    iget-object v3, v9, Lcom/byazt/zk/t;->da:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 92
    iget-object v1, v9, Lcom/byazt/zk/t;->sl:Landroid/graphics/Paint;

    iget-object v3, v9, Lcom/byazt/zk/t;->da:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 93
    iget v1, v10, Lcom/byazt/nb/tt;->n:I

    int-to-float v1, v1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    .line 94
    iget-object v3, v9, Lcom/byazt/zk/t;->yv:Lcom/byazt/dg/c;

    if-eqz v3, :cond_6

    .line 95
    invoke-virtual {v3}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_2
    add-float/2addr v1, v3

    goto :goto_3

    .line 96
    :cond_6
    iget-object v3, v9, Lcom/byazt/zk/t;->zm:Lcom/byazt/dg/c;

    if-eqz v3, :cond_7

    .line 97
    invoke-virtual {v3}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_2

    .line 98
    :cond_7
    :goto_3
    invoke-static {}, Lcom/byazt/kk/da;->c()F

    move-result v3

    mul-float v1, v1, v3

    mul-float v1, v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float v13, v1, v0

    .line 99
    iget-object v0, v10, Lcom/byazt/nb/tt;->yp:Lcom/byazt/nb/n;

    .line 100
    iget-object v1, v10, Lcom/byazt/nb/tt;->u:Landroid/graphics/PointF;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_8

    .line 101
    invoke-static {}, Lcom/byazt/kk/da;->c()F

    move-result v1

    .line 102
    iget-object v5, v10, Lcom/byazt/nb/tt;->u:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 103
    iget v6, v10, Lcom/byazt/nb/tt;->a:F

    mul-float v7, v6, v1

    cmpl-float v8, v7, v3

    if-lez v8, :cond_8

    const v8, 0x3f19999a    # 0.6f

    mul-float v6, v6, v8

    mul-float v6, v6, v1

    sub-float/2addr v5, v6

    cmpl-float v1, v5, v3

    if-lez v1, :cond_8

    div-float/2addr v5, v7

    float-to-int v1, v5

    add-int/2addr v1, v4

    goto :goto_4

    :cond_8
    const v1, 0x7fffffff

    .line 104
    :goto_4
    iget v5, v0, Lcom/byazt/nb/n;->c:I

    if-ne v5, v4, :cond_9

    const/4 v14, 0x1

    goto :goto_5

    :cond_9
    if-eqz v5, :cond_a

    .line 105
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_a
    move v14, v1

    .line 106
    :goto_5
    invoke-direct {v9, v2}, Lcom/byazt/zk/t;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 107
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    .line 108
    iget v7, v0, Lcom/byazt/nb/n;->tt:I

    .line 109
    iget-object v0, v10, Lcom/byazt/nb/tt;->u:Landroid/graphics/PointF;

    if-nez v0, :cond_b

    const/16 v16, 0x0

    goto :goto_6

    :cond_b
    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    .line 110
    :goto_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x0

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v8, :cond_c

    .line 111
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v18, 0x0

    const v19, 0x7fffffff

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v16

    move-object/from16 v3, p2

    move/from16 v21, v5

    move v5, v13

    move-object/from16 v22, v6

    move/from16 v6, v18

    move/from16 v18, v7

    move/from16 v7, v19

    move/from16 v19, v8

    move/from16 v8, v20

    .line 112
    invoke-direct/range {v0 .. v8}, Lcom/byazt/zk/t;->c(Ljava/lang/String;FLcom/byazt/nb/ve;FFZII)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, v22

    .line 113
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v5, v21, 0x1

    move-object v6, v1

    move/from16 v7, v18

    move/from16 v8, v19

    goto :goto_7

    :cond_c
    move-object v1, v6

    move/from16 v18, v7

    .line 114
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v14, :cond_d

    move-object v6, v1

    goto :goto_8

    :cond_d
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v2, v14

    move/from16 v3, v18

    move/from16 v4, v16

    move-object/from16 v5, p2

    move v7, v13

    .line 115
    invoke-direct/range {v0 .. v8}, Lcom/byazt/zk/t;->c(Ljava/util/List;IIFLcom/byazt/nb/ve;FFZ)Ljava/util/List;

    move-result-object v6

    :goto_8
    const/4 v0, 0x0

    .line 116
    :goto_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 117
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/zk/t$c;

    .line 118
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    .line 119
    invoke-static {v1}, Lcom/byazt/zk/t$c;->c(Lcom/byazt/zk/t$c;)F

    move-result v2

    invoke-direct {v9, v11, v10, v0, v2}, Lcom/byazt/zk/t;->c(Landroid/graphics/Canvas;Lcom/byazt/nb/tt;IF)V

    .line 120
    invoke-static {v1}, Lcom/byazt/zk/t$c;->tt(Lcom/byazt/zk/t$c;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1, v10, v11, v13}, Lcom/byazt/zk/t;->c(Ljava/lang/String;Lcom/byazt/nb/tt;Landroid/graphics/Canvas;F)V

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_e
    return-void
.end method

.method private c(Lcom/byazt/nb/uj;FLcom/byazt/nb/tt;Landroid/graphics/Canvas;)V
    .locals 6

    .line 187
    invoke-direct {p0, p1}, Lcom/byazt/zk/t;->c(Lcom/byazt/nb/uj;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 188
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 189
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/zy/uj;

    invoke-virtual {v2}, Lcom/byazt/zy/uj;->uj()Landroid/graphics/Path;

    move-result-object v2

    .line 190
    iget-object v3, p0, Lcom/byazt/zk/t;->x:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 191
    iget-object v3, p0, Lcom/byazt/zk/t;->i:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 192
    iget-object v3, p0, Lcom/byazt/zk/t;->i:Landroid/graphics/Matrix;

    iget v4, p3, Lcom/byazt/nb/tt;->sp:F

    neg-float v4, v4

    invoke-static {}, Lcom/byazt/kk/da;->c()F

    move-result v5

    mul-float v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 193
    iget-object v3, p0, Lcom/byazt/zk/t;->i:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 194
    iget-object v3, p0, Lcom/byazt/zk/t;->i:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 195
    iget-boolean v3, p3, Lcom/byazt/nb/tt;->sl:Z

    if-eqz v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/byazt/zk/t;->da:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p4}, Lcom/byazt/zk/t;->c(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 197
    iget-object v3, p0, Lcom/byazt/zk/t;->sl:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p4}, Lcom/byazt/zk/t;->c(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/byazt/zk/t;->sl:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p4}, Lcom/byazt/zk/t;->c(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 199
    iget-object v3, p0, Lcom/byazt/zk/t;->da:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p4}, Lcom/byazt/zk/t;->c(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    .line 208
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/byazt/nb/tt;Landroid/graphics/Canvas;)V
    .locals 0

    .line 203
    iget-boolean p2, p2, Lcom/byazt/nb/tt;->sl:Z

    if-eqz p2, :cond_0

    .line 204
    iget-object p2, p0, Lcom/byazt/zk/t;->da:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/zk/t;->c(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 205
    iget-object p2, p0, Lcom/byazt/zk/t;->sl:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/zk/t;->c(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    return-void

    .line 206
    :cond_0
    iget-object p2, p0, Lcom/byazt/zk/t;->sl:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/zk/t;->c(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 207
    iget-object p2, p0, Lcom/byazt/zk/t;->da:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/zk/t;->c(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/byazt/nb/tt;Landroid/graphics/Canvas;F)V
    .locals 3

    const/4 v0, 0x0

    .line 137
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 138
    invoke-direct {p0, p1, v0}, Lcom/byazt/zk/t;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 140
    invoke-direct {p0, v1, p2, p3}, Lcom/byazt/zk/t;->c(Ljava/lang/String;Lcom/byazt/nb/tt;Landroid/graphics/Canvas;)V

    .line 141
    iget-object v2, p0, Lcom/byazt/zk/t;->da:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v1, p4

    const/4 v2, 0x0

    .line 142
    invoke-virtual {p3, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;Lcom/byazt/nb/tt;Lcom/byazt/nb/ve;Landroid/graphics/Canvas;FFF)V
    .locals 3

    const/4 p5, 0x0

    .line 66
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p5, v0, :cond_1

    .line 67
    invoke-virtual {p1, p5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 68
    invoke-virtual {p3}, Lcom/byazt/nb/ve;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/byazt/nb/ve;->ve()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/byazt/nb/uj;->c(CLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/byazt/zk/t;->rh:Lcom/byazt/ga/a;

    invoke-virtual {v1}, Lcom/byazt/ga/a;->z()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/nb/uj;

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, v0, p6, p2, p4}, Lcom/byazt/zk/t;->c(Lcom/byazt/nb/uj;FLcom/byazt/nb/tt;Landroid/graphics/Canvas;)V

    .line 71
    invoke-virtual {v0}, Lcom/byazt/nb/uj;->tt()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v0, v0, p6

    invoke-static {}, Lcom/byazt/kk/da;->c()F

    move-result v1

    mul-float v0, v0, v1

    add-float/2addr v0, p7

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private tt(Ljava/lang/String;FFLcom/byazt/nb/ve;FFZ)Ljava/lang/String;
    .locals 11

    move-object v0, p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    move v10, v2

    move v2, v1

    move v1, v10

    if-ltz v1, :cond_0

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move-object v4, p0

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 19
    invoke-direct/range {v4 .. v9}, Lcom/byazt/zk/t;->c(CLcom/byazt/nb/ve;FFZ)F

    move-result v4

    add-float/2addr v3, v4

    cmpl-float v4, v3, p2

    if-gtz v4, :cond_0

    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tt(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\r\n"

    const-string v1, "\r"

    .line 11
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u0003"

    .line 12
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    .line 13
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private tt(I)Z
    .locals 2

    .line 21
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 22
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_1

    .line 23
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 24
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    .line 25
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 26
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private ve(Ljava/lang/String;FFLcom/byazt/nb/ve;FFZ)Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "..."

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-gt v1, v3, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 29
    .line 30
    div-float v1, p2, v1

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v8, 0x0

    .line 37
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    div-int/lit8 v9, v9, 0x2

    .line 42
    .line 43
    if-ge v6, v9, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v11

    .line 49
    move-object/from16 v10, p0

    .line 50
    .line 51
    move-object/from16 v12, p4

    .line 52
    .line 53
    move/from16 v13, p5

    .line 54
    .line 55
    move/from16 v14, p6

    .line 56
    .line 57
    move/from16 v15, p7

    .line 58
    .line 59
    invoke-direct/range {v10 .. v15}, Lcom/byazt/zk/t;->c(CLcom/byazt/nb/ve;FFZ)F

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    add-float/2addr v9, v7

    .line 64
    cmpl-float v10, v9, v1

    .line 65
    .line 66
    if-gtz v10, :cond_1

    .line 67
    .line 68
    add-int/lit8 v8, v6, 0x1

    .line 69
    .line 70
    move v6, v8

    .line 71
    move v7, v9

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    sub-float v6, p2, v7

    .line 78
    .line 79
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    sub-int/2addr v7, v3

    .line 84
    move v3, v1

    .line 85
    move v1, v7

    .line 86
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    div-int/lit8 v7, v7, 0x2

    .line 91
    .line 92
    if-lt v1, v7, :cond_2

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    move-object/from16 v9, p0

    .line 99
    .line 100
    move-object/from16 v11, p4

    .line 101
    .line 102
    move/from16 v12, p5

    .line 103
    .line 104
    move/from16 v13, p6

    .line 105
    .line 106
    move/from16 v14, p7

    .line 107
    .line 108
    invoke-direct/range {v9 .. v14}, Lcom/byazt/zk/t;->c(CLcom/byazt/nb/ve;FFZ)F

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    add-float/2addr v4, v7

    .line 113
    cmpl-float v7, v4, v6

    .line 114
    .line 115
    if-gtz v7, :cond_2

    .line 116
    .line 117
    add-int/lit8 v3, v1, -0x1

    .line 118
    .line 119
    move/from16 v16, v3

    .line 120
    .line 121
    move v3, v1

    .line 122
    move/from16 v1, v16

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    if-eqz v8, :cond_4

    .line 126
    .line 127
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-ne v3, v1, :cond_3

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    return-object v0

    .line 161
    :cond_4
    :goto_2
    invoke-direct/range {p0 .. p7}, Lcom/byazt/zk/t;->c(Ljava/lang/String;FFLcom/byazt/nb/ve;FFZ)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    return-object v0
.end method

.method private yp()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/byazt/zk/t;->z:I

    .line 3
    .line 4
    return-void
.end method

.method private z()Lcom/byazt/zk/t$c;
    .locals 3

    .line 1
    iget v0, p0, Lcom/byazt/zk/t;->z:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/zk/t;->yp:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/zk/t;->yp:Ljava/util/List;

    .line 12
    .line 13
    new-instance v1, Lcom/byazt/zk/t$c;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, v2}, Lcom/byazt/zk/t$c;-><init>(Lcom/byazt/zk/t$1;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/zk/t;->yp:Ljava/util/List;

    .line 23
    .line 24
    iget v1, p0, Lcom/byazt/zk/t;->z:I

    .line 25
    .line 26
    add-int/lit8 v2, v1, 0x1

    .line 27
    .line 28
    iput v2, p0, Lcom/byazt/zk/t;->z:I

    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/byazt/zk/t$c;

    .line 35
    .line 36
    return-object v0
.end method


# virtual methods
.method public c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/zk/ve;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p2, p0, Lcom/byazt/zk/t;->rh:Lcom/byazt/ga/a;

    invoke-virtual {p2}, Lcom/byazt/ga/a;->uj()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/byazt/zk/t;->rh:Lcom/byazt/ga/a;

    invoke-virtual {p3}, Lcom/byazt/ga/a;->uj()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/byazt/zk/t;->h:Ljava/lang/String;

    return-void
.end method

.method public tt(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/zk/ve;->tt(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 2
    iget-object p3, p0, Lcom/byazt/zk/t;->m:Lcom/byazt/dg/z;

    invoke-virtual {p3}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/byazt/nb/tt;

    .line 3
    iget-object v0, p0, Lcom/byazt/zk/t;->rh:Lcom/byazt/ga/a;

    invoke-virtual {v0}, Lcom/byazt/ga/a;->m()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p3, Lcom/byazt/nb/tt;->tt:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/nb/ve;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 6
    invoke-direct {p0, p3, p2}, Lcom/byazt/zk/t;->c(Lcom/byazt/nb/tt;Landroid/graphics/Matrix;)V

    .line 7
    iget-object v1, p0, Lcom/byazt/zk/t;->nu:Lcom/byazt/ga/x;

    invoke-virtual {v1}, Lcom/byazt/ga/x;->yv()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-direct {p0, p3, p2, v0, p1}, Lcom/byazt/zk/t;->c(Lcom/byazt/nb/tt;Landroid/graphics/Matrix;Lcom/byazt/nb/ve;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0, p3, v0, p1}, Lcom/byazt/zk/t;->c(Lcom/byazt/nb/tt;Lcom/byazt/nb/ve;Landroid/graphics/Canvas;)V

    .line 10
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
