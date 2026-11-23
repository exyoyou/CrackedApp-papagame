.class public Lcom/kongzue/dialogx/util/TextInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kongzue/dialogx/util/TextInfo$FONT_SIZE_UNIT;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/kongzue/dialogx/util/TextInfo$FONT_SIZE_UNIT;

.field private c:I

.field private d:I

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/kongzue/dialogx/util/TextInfo;->a:I

    .line 6
    .line 7
    sget-object v1, Lcom/kongzue/dialogx/util/TextInfo$FONT_SIZE_UNIT;->DP:Lcom/kongzue/dialogx/util/TextInfo$FONT_SIZE_UNIT;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/kongzue/dialogx/util/TextInfo;->b:Lcom/kongzue/dialogx/util/TextInfo$FONT_SIZE_UNIT;

    .line 10
    .line 11
    iput v0, p0, Lcom/kongzue/dialogx/util/TextInfo;->c:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput v1, p0, Lcom/kongzue/dialogx/util/TextInfo;->d:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/kongzue/dialogx/util/TextInfo;->e:Z

    .line 18
    .line 19
    iput v0, p0, Lcom/kongzue/dialogx/util/TextInfo;->f:I

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/kongzue/dialogx/util/TextInfo;->g:Z

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/TextInfo;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/TextInfo;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public c()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/TextInfo;->b:Lcom/kongzue/dialogx/util/TextInfo$FONT_SIZE_UNIT;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget-object v2, Lcom/kongzue/dialogx/util/TextInfo$a;->a:[I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    aget v0, v2, v0

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    return v2

    .line 22
    :cond_2
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public d()Lcom/kongzue/dialogx/util/TextInfo$FONT_SIZE_UNIT;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/TextInfo;->b:Lcom/kongzue/dialogx/util/TextInfo$FONT_SIZE_UNIT;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/TextInfo;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/TextInfo;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public g()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/TextInfo;->h:Landroid/graphics/Typeface;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/TextInfo;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/TextInfo;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public j(Z)Lcom/kongzue/dialogx/util/TextInfo;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/TextInfo;->e:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public k(I)Lcom/kongzue/dialogx/util/TextInfo;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/TextInfo;->d:I

    .line 2
    .line 3
    return-object p0
.end method

.method public l(I)Lcom/kongzue/dialogx/util/TextInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/TextInfo;->a:I

    .line 2
    .line 3
    return-object p0
.end method

.method public m(Lcom/kongzue/dialogx/util/TextInfo$FONT_SIZE_UNIT;)Lcom/kongzue/dialogx/util/TextInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/TextInfo;->b:Lcom/kongzue/dialogx/util/TextInfo$FONT_SIZE_UNIT;

    .line 2
    .line 3
    return-object p0
.end method

.method public n(I)Lcom/kongzue/dialogx/util/TextInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/TextInfo;->c:I

    .line 2
    .line 3
    return-object p0
.end method

.method public o(I)Lcom/kongzue/dialogx/util/TextInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/TextInfo;->f:I

    .line 2
    .line 3
    return-object p0
.end method

.method public p(Z)Lcom/kongzue/dialogx/util/TextInfo;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/TextInfo;->g:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public q(Landroid/graphics/Typeface;)Lcom/kongzue/dialogx/util/TextInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/TextInfo;->h:Landroid/graphics/Typeface;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "TextInfo{fontSize="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/kongzue/dialogx/util/TextInfo;->a:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", gravity="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/kongzue/dialogx/util/TextInfo;->c:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", fontColor="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/kongzue/dialogx/util/TextInfo;->d:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", bold="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/kongzue/dialogx/util/TextInfo;->e:Z

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", maxLines="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/kongzue/dialogx/util/TextInfo;->f:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", showEllipsis="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/kongzue/dialogx/util/TextInfo;->g:Z

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", typeface="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/kongzue/dialogx/util/TextInfo;->h:Landroid/graphics/Typeface;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const/16 v1, 0x7d

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
