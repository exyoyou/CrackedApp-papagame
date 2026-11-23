.class Lorg/jsoup/parser/CharacterReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final EOF:C = '\uffff'


# instance fields
.field private final input:[C

.field private final length:I

.field private mark:I

.field private pos:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 6
    .line 7
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    .line 8
    .line 9
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 17
    .line 18
    array-length p1, p1

    .line 19
    iput p1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method advance()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 6
    .line 7
    return-void
.end method

.method consume()C
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const v0, 0xffff

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 12
    .line 13
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 14
    .line 15
    aget-char v0, v0, v1

    .line 16
    .line 17
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 22
    .line 23
    return v0
.end method

.method consumeAsString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 4
    .line 5
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 6
    .line 7
    add-int/lit8 v3, v2, 0x1

    .line 8
    .line 9
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method consumeDigitSequence()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 4
    .line 5
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 6
    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 10
    .line 11
    aget-char v2, v2, v1

    .line 12
    .line 13
    const/16 v3, 0x30

    .line 14
    .line 15
    if-lt v2, v3, :cond_0

    .line 16
    .line 17
    const/16 v3, 0x39

    .line 18
    .line 19
    if-gt v2, v3, :cond_0

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v2, Ljava/lang/String;

    .line 27
    .line 28
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 29
    .line 30
    sub-int/2addr v1, v0

    .line 31
    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 32
    .line 33
    .line 34
    return-object v2
.end method

.method consumeHexSequence()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 4
    .line 5
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 6
    .line 7
    if-ge v1, v2, :cond_3

    .line 8
    .line 9
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 10
    .line 11
    aget-char v2, v2, v1

    .line 12
    .line 13
    const/16 v3, 0x30

    .line 14
    .line 15
    if-lt v2, v3, :cond_0

    .line 16
    .line 17
    const/16 v3, 0x39

    .line 18
    .line 19
    if-le v2, v3, :cond_2

    .line 20
    .line 21
    :cond_0
    const/16 v3, 0x41

    .line 22
    .line 23
    if-lt v2, v3, :cond_1

    .line 24
    .line 25
    const/16 v3, 0x46

    .line 26
    .line 27
    if-le v2, v3, :cond_2

    .line 28
    .line 29
    :cond_1
    const/16 v3, 0x61

    .line 30
    .line 31
    if-lt v2, v3, :cond_3

    .line 32
    .line 33
    const/16 v3, 0x66

    .line 34
    .line 35
    if-gt v2, v3, :cond_3

    .line 36
    .line 37
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    new-instance v2, Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 45
    .line 46
    sub-int/2addr v1, v0

    .line 47
    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 48
    .line 49
    .line 50
    return-object v2
.end method

.method consumeLetterSequence()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 4
    .line 5
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 6
    .line 7
    if-ge v1, v2, :cond_2

    .line 8
    .line 9
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 10
    .line 11
    aget-char v2, v2, v1

    .line 12
    .line 13
    const/16 v3, 0x41

    .line 14
    .line 15
    if-lt v2, v3, :cond_0

    .line 16
    .line 17
    const/16 v3, 0x5a

    .line 18
    .line 19
    if-le v2, v3, :cond_1

    .line 20
    .line 21
    :cond_0
    const/16 v3, 0x61

    .line 22
    .line 23
    if-lt v2, v3, :cond_2

    .line 24
    .line 25
    const/16 v3, 0x7a

    .line 26
    .line 27
    if-gt v2, v3, :cond_2

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    new-instance v2, Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 37
    .line 38
    sub-int/2addr v1, v0

    .line 39
    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 40
    .line 41
    .line 42
    return-object v2
.end method

.method consumeLetterThenDigitSequence()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 4
    .line 5
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 6
    .line 7
    if-ge v1, v2, :cond_2

    .line 8
    .line 9
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 10
    .line 11
    aget-char v2, v2, v1

    .line 12
    .line 13
    const/16 v3, 0x41

    .line 14
    .line 15
    if-lt v2, v3, :cond_0

    .line 16
    .line 17
    const/16 v3, 0x5a

    .line 18
    .line 19
    if-le v2, v3, :cond_1

    .line 20
    .line 21
    :cond_0
    const/16 v3, 0x61

    .line 22
    .line 23
    if-lt v2, v3, :cond_2

    .line 24
    .line 25
    const/16 v3, 0x7a

    .line 26
    .line 27
    if-gt v2, v3, :cond_2

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 41
    .line 42
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 43
    .line 44
    aget-char v1, v1, v2

    .line 45
    .line 46
    const/16 v3, 0x30

    .line 47
    .line 48
    if-lt v1, v3, :cond_3

    .line 49
    .line 50
    const/16 v3, 0x39

    .line 51
    .line 52
    if-gt v1, v3, :cond_3

    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    new-instance v1, Ljava/lang/String;

    .line 60
    .line 61
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 62
    .line 63
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 64
    .line 65
    sub-int/2addr v3, v0

    .line 66
    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    .line 67
    .line 68
    .line 69
    return-object v1
.end method

.method consumeTo(C)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(C)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    .line 3
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 5
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    .line 7
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method varargs consumeToAny([C)Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 4
    .line 5
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 6
    .line 7
    if-ge v1, v2, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_1
    array-length v2, p1

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 14
    .line 15
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 16
    .line 17
    aget-char v2, v2, v3

    .line 18
    .line 19
    aget-char v3, p1, v1

    .line 20
    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    :goto_2
    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 35
    .line 36
    if-le p1, v0, :cond_3

    .line 37
    .line 38
    new-instance v1, Ljava/lang/String;

    .line 39
    .line 40
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 41
    .line 42
    sub-int/2addr p1, v0

    .line 43
    invoke-direct {v1, v2, v0, p1}, Ljava/lang/String;-><init>([CII)V

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_3
    const-string v1, ""

    .line 48
    .line 49
    :goto_3
    return-object v1
.end method

.method consumeToEnd()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 4
    .line 5
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 6
    .line 7
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 8
    .line 9
    sub-int/2addr v3, v2

    .line 10
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 14
    .line 15
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 16
    .line 17
    return-object v0
.end method

.method containsIgnoreCase(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-gt v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-le p1, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 28
    :goto_1
    return p1
.end method

.method current()C
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const v0, 0xffff

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 12
    .line 13
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 14
    .line 15
    aget-char v0, v0, v1

    .line 16
    .line 17
    :goto_0
    return v0
.end method

.method isEmpty()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 2
    .line 3
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method mark()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 2
    .line 3
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    .line 4
    .line 5
    return-void
.end method

.method matchConsume(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matches(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    add-int/2addr v0, p1

    .line 14
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method matchConsumeIgnoreCase(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    add-int/2addr v0, p1

    .line 14
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method matches(C)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method matches(Ljava/lang/String;)Z
    .locals 6

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method varargs matchesAny([C)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 10
    .line 11
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 12
    .line 13
    aget-char v0, v0, v2

    .line 14
    .line 15
    array-length v2, p1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_2

    .line 18
    .line 19
    aget-char v4, p1, v3

    .line 20
    .line 21
    if-ne v4, v0, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    return v1
.end method

.method matchesDigit()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 10
    .line 11
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 12
    .line 13
    aget-char v0, v0, v2

    .line 14
    .line 15
    const/16 v2, 0x30

    .line 16
    .line 17
    if-lt v0, v2, :cond_1

    .line 18
    .line 19
    const/16 v2, 0x39

    .line 20
    .line 21
    if-gt v0, v2, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    :cond_1
    return v1
.end method

.method matchesIgnoreCase(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 6
    .line 7
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    const/4 v2, 0x0

    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 26
    .line 27
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 28
    .line 29
    add-int/2addr v5, v1

    .line 30
    aget-char v4, v4, v5

    .line 31
    .line 32
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eq v3, v4, :cond_1

    .line 37
    .line 38
    return v2

    .line 39
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 p1, 0x1

    .line 43
    return p1
.end method

.method matchesLetter()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 10
    .line 11
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 12
    .line 13
    aget-char v0, v0, v2

    .line 14
    .line 15
    const/16 v2, 0x41

    .line 16
    .line 17
    if-lt v0, v2, :cond_1

    .line 18
    .line 19
    const/16 v2, 0x5a

    .line 20
    .line 21
    if-le v0, v2, :cond_2

    .line 22
    .line 23
    :cond_1
    const/16 v2, 0x61

    .line 24
    .line 25
    if-lt v0, v2, :cond_3

    .line 26
    .line 27
    const/16 v2, 0x7a

    .line 28
    .line 29
    if-gt v0, v2, :cond_3

    .line 30
    .line 31
    :cond_2
    const/4 v1, 0x1

    .line 32
    :cond_3
    return v1
.end method

.method nextIndexOf(C)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 3
    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method nextIndexOf(Ljava/lang/CharSequence;)I
    .locals 7

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 5
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_3

    .line 6
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v2, v2, v1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    :goto_1
    add-int/2addr v1, v3

    .line 7
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v2, v2, v1

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    :goto_2
    if-ge v2, v4, :cond_1

    .line 10
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v6, v6, v2

    if-ne v5, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    if-ne v2, v4, :cond_2

    .line 11
    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v1, p1

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method pos()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 2
    .line 3
    return v0
.end method

.method rewindToMark()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    .line 2
    .line 3
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 4
    .line 5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 4
    .line 5
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 6
    .line 7
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 8
    .line 9
    sub-int/2addr v3, v2

    .line 10
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method unconsume()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 6
    .line 7
    return-void
.end method
