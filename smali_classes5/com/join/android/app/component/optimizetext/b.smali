.class public Lcom/join/android/app/component/optimizetext/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:I = 0xf

.field public static final e:I = 0x64


# instance fields
.field private a:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/LruCache;

    .line 5
    .line 6
    const/16 v1, 0x64

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    .line 12
    .line 13
    const/16 v0, 0xf

    .line 14
    .line 15
    iput v0, p0, Lcom/join/android/app/component/optimizetext/b;->c:I

    .line 16
    .line 17
    iput-object p1, p0, Lcom/join/android/app/component/optimizetext/b;->b:Landroid/content/Context;

    .line 18
    .line 19
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    array-length v1, p1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    aget-object v3, p1, v2

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/String;IILandroid/text/TextPaint;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "content",
            "width",
            "tagLines",
            "textPaint"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/optimizetext/b;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_5

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Ljava/lang/String;

    .line 29
    .line 30
    if-ne v2, p3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    add-int/lit8 p1, p1, -0x4

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 39
    .line 40
    .line 41
    const-string p1, "..."

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_0
    const-string v6, "\n\r"

    .line 48
    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-nez v6, :cond_4

    .line 54
    .line 55
    const-string v6, "\n"

    .line 56
    .line 57
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/16 v6, 0x14

    .line 65
    .line 66
    if-gt v3, v6, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    invoke-static {v6, v4, v7, p4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    float-to-int v6, v6

    .line 87
    if-ge v6, p2, :cond_3

    .line 88
    .line 89
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    add-int/lit8 v4, v3, -0x2

    .line 102
    .line 103
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    goto :goto_0

    .line 108
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 109
    .line 110
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1
.end method

.method private c(Landroid/text/SpannableStringBuilder;IILandroid/text/TextPaint;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "content",
            "width",
            "tagLines",
            "textPaint"
        }
    .end annotation

    .line 1
    const-string v0, "..."

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {p0, v1}, Lcom/join/android/app/component/optimizetext/b;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    if-eqz v7, :cond_6

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Ljava/lang/String;

    .line 35
    .line 36
    if-ne v4, p3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    const/4 p3, 0x4

    .line 43
    if-le p2, p3, :cond_0

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    sub-int/2addr p2, p3

    .line 50
    :cond_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    invoke-virtual {p1, p2, p3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_1
    const-string v8, "\n\r"

    .line 72
    .line 73
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-nez v8, :cond_5

    .line 78
    .line 79
    const-string v8, "\n"

    .line 80
    .line 81
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-eqz v8, :cond_2

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const/16 v8, 0x14

    .line 89
    .line 90
    if-gt v5, v8, :cond_3

    .line 91
    .line 92
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    add-int/lit8 v5, v5, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    invoke-static {v8, v6, v9, p4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    float-to-int v8, v8

    .line 111
    if-ge v8, p2, :cond_4

    .line 112
    .line 113
    add-int/lit8 v5, v5, 0x1

    .line 114
    .line 115
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    add-int/lit8 v6, v5, -0x2

    .line 126
    .line 127
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const/4 v5, 0x0

    .line 131
    goto :goto_0

    .line 132
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 133
    .line 134
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    .line 141
    .line 142
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)Landroid/text/StaticLayout;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/StaticLayout;

    .line 8
    .line 9
    return-object p1
.end method

.method public e(Lcom/join/android/app/component/optimizetext/c;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    new-instance v2, Landroid/text/TextPaint;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->b:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 18
    .line 19
    iput v0, v2, Landroid/text/TextPaint;->density:F

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->b:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const v1, 0x7f071395

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35
    .line 36
    .line 37
    const-string v0, "#909090"

    .line 38
    .line 39
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    .line 45
    .line 46
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 47
    .line 48
    new-instance v8, Landroid/graphics/Canvas;

    .line 49
    .line 50
    invoke-direct {v8}, Landroid/graphics/Canvas;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Lcom/join/android/app/component/optimizetext/c;->b()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    invoke-interface {p1}, Lcom/join/android/app/component/optimizetext/c;->a()Landroid/text/SpannableStringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {}, Lcom/join/android/app/component/optimizetext/a;->g()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->b:Landroid/content/Context;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const v3, 0x7f070ed4

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/4 v3, 0x2

    .line 79
    mul-int/lit8 v0, v0, 0x2

    .line 80
    .line 81
    sub-int/2addr p1, v0

    .line 82
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_0

    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    .line 89
    .line 90
    invoke-virtual {v0, v9}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    .line 95
    .line 96
    invoke-direct {p0, v1, p1, v3, v2}, Lcom/join/android/app/component/optimizetext/b;->c(Landroid/text/SpannableStringBuilder;IILandroid/text/TextPaint;)V

    .line 97
    .line 98
    .line 99
    new-instance v10, Landroid/text/StaticLayout;

    .line 100
    .line 101
    const v5, 0x3f99999a    # 1.2f

    .line 102
    .line 103
    .line 104
    const/4 v6, 0x0

    .line 105
    const/4 v7, 0x1

    .line 106
    move-object v0, v10

    .line 107
    move v3, p1

    .line 108
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v10, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    .line 115
    .line 116
    invoke-virtual {p1, v9, v10}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    :cond_0
    return-void
.end method

.method public f(Lcom/join/android/app/component/optimizetext/c;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "maxLines"
        }
    .end annotation

    .line 1
    new-instance v2, Landroid/text/TextPaint;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->b:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 18
    .line 19
    iput v0, v2, Landroid/text/TextPaint;->density:F

    .line 20
    .line 21
    iget v0, p0, Lcom/join/android/app/component/optimizetext/b;->c:I

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/android/app/component/optimizetext/a;->s(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    int-to-float v0, v0

    .line 28
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 29
    .line 30
    .line 31
    const-string v0, "#4A4A4A"

    .line 32
    .line 33
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    .line 39
    .line 40
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 41
    .line 42
    new-instance v8, Landroid/graphics/Canvas;

    .line 43
    .line 44
    invoke-direct {v8}, Landroid/graphics/Canvas;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Lcom/join/android/app/component/optimizetext/c;->b()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    invoke-interface {p1}, Lcom/join/android/app/component/optimizetext/c;->a()Landroid/text/SpannableStringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {}, Lcom/join/android/app/component/optimizetext/a;->g()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->b:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const v3, 0x7f070ed4

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    mul-int/lit8 v0, v0, 0x2

    .line 73
    .line 74
    sub-int v3, p1, v0

    .line 75
    .line 76
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_1

    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    .line 83
    .line 84
    invoke-virtual {p1, v9}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-nez p1, :cond_1

    .line 89
    .line 90
    const/4 p1, -0x1

    .line 91
    if-eq p2, p1, :cond_0

    .line 92
    .line 93
    invoke-direct {p0, v1, v3, p2, v2}, Lcom/join/android/app/component/optimizetext/b;->c(Landroid/text/SpannableStringBuilder;IILandroid/text/TextPaint;)V

    .line 94
    .line 95
    .line 96
    :cond_0
    new-instance p1, Landroid/text/StaticLayout;

    .line 97
    .line 98
    const v5, 0x3f99999a    # 1.2f

    .line 99
    .line 100
    .line 101
    const/4 v6, 0x0

    .line 102
    const/4 v7, 0x1

    .line 103
    move-object v0, p1

    .line 104
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 108
    .line 109
    .line 110
    iget-object p2, p0, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    .line 111
    .line 112
    invoke-virtual {p2, v9, p1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    :cond_1
    return-void
.end method

.method public g(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "tagLines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/join/android/app/component/optimizetext/c;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/component/optimizetext/a;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x41500000    # 13.0f

    .line 6
    .line 7
    invoke-static {v1}, Lcom/join/android/app/component/optimizetext/a;->a(F)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lcom/join/android/app/component/optimizetext/b;->h(Ljava/util/List;II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public h(Ljava/util/List;II)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "width",
            "tagLines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/join/android/app/component/optimizetext/c;",
            ">;II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v0, p3

    .line 6
    .line 7
    new-instance v11, Landroid/text/TextPaint;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v11, v3}, Landroid/text/TextPaint;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iget-object v3, v1, Lcom/join/android/app/component/optimizetext/b;->b:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 24
    .line 25
    iput v3, v11, Landroid/text/TextPaint;->density:F

    .line 26
    .line 27
    iget v3, v1, Lcom/join/android/app/component/optimizetext/b;->c:I

    .line 28
    .line 29
    invoke-static {v3}, Lcom/join/android/app/component/optimizetext/a;->s(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    int-to-float v3, v3

    .line 34
    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35
    .line 36
    .line 37
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 38
    .line 39
    new-instance v13, Landroid/graphics/Canvas;

    .line 40
    .line 41
    invoke-direct {v13}, Landroid/graphics/Canvas;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v14

    .line 48
    if-eqz v14, :cond_3

    .line 49
    .line 50
    monitor-enter p1

    .line 51
    const/4 v3, 0x0

    .line 52
    const/4 v15, 0x0

    .line 53
    :goto_0
    if-ge v15, v14, :cond_2

    .line 54
    .line 55
    :try_start_0
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/join/android/app/component/optimizetext/c;

    .line 60
    .line 61
    invoke-interface {v3}, Lcom/join/android/app/component/optimizetext/c;->b()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Lcom/join/android/app/component/optimizetext/c;

    .line 70
    .line 71
    invoke-interface {v3}, Lcom/join/android/app/component/optimizetext/c;->a()Landroid/text/SpannableStringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_1

    .line 84
    .line 85
    iget-object v4, v1, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    .line 86
    .line 87
    invoke-virtual {v4, v10}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    if-nez v4, :cond_1

    .line 92
    .line 93
    const/4 v4, -0x1

    .line 94
    if-eq v0, v4, :cond_0

    .line 95
    .line 96
    move/from16 v9, p2

    .line 97
    .line 98
    invoke-direct {v1, v3, v9, v0, v11}, Lcom/join/android/app/component/optimizetext/b;->b(Ljava/lang/String;IILandroid/text/TextPaint;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    goto :goto_1

    .line 103
    :cond_0
    move/from16 v9, p2

    .line 104
    .line 105
    :goto_1
    move-object v4, v3

    .line 106
    new-instance v8, Landroid/text/StaticLayout;

    .line 107
    .line 108
    const/high16 v16, 0x3f800000    # 1.0f

    .line 109
    .line 110
    const/16 v17, 0x0

    .line 111
    .line 112
    const/16 v18, 0x1

    .line 113
    .line 114
    move-object v3, v8

    .line 115
    move-object v5, v11

    .line 116
    move/from16 v6, p2

    .line 117
    .line 118
    move-object v7, v12

    .line 119
    move-object/from16 v19, v8

    .line 120
    .line 121
    move/from16 v8, v16

    .line 122
    .line 123
    move/from16 v9, v17

    .line 124
    .line 125
    move-object v0, v10

    .line 126
    move/from16 v10, v18

    .line 127
    .line 128
    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 129
    .line 130
    .line 131
    move-object/from16 v3, v19

    .line 132
    .line 133
    invoke-virtual {v3, v13}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 134
    .line 135
    .line 136
    iget-object v4, v1, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    .line 137
    .line 138
    invoke-virtual {v4, v0, v3}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    :cond_1
    add-int/lit8 v15, v15, 0x1

    .line 142
    .line 143
    move/from16 v0, p3

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_2
    monitor-exit p1

    .line 147
    return-void

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    throw v0

    .line 151
    :cond_3
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j(I)Lcom/join/android/app/component/optimizetext/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/android/app/component/optimizetext/b;->c:I

    .line 2
    .line 3
    return-object p0
.end method

.method public k(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxSize"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->trimToSize(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
