.class public Lit/sephiroth/android/library/widget/AbsHListView$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# static fields
.field private static final j:I = 0xc8

.field private static final k:I = 0x1

.field private static final l:I = 0x2

.field private static final m:I = 0x3

.field private static final n:I = 0x4

.field private static final o:I = 0x5


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final g:I

.field private h:I

.field final synthetic i:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->g:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method a(III)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "targetPos",
            "boundPos",
            "duration"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 2
    .line 3
    iget v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/2addr v0, v1

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 13
    .line 14
    iget-object v3, v2, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 15
    .line 16
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 23
    .line 24
    iget-object v4, v4, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 25
    .line 26
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 27
    .line 28
    sub-int/2addr v2, v4

    .line 29
    if-lt p1, v1, :cond_0

    .line 30
    .line 31
    if-le p1, v0, :cond_1

    .line 32
    .line 33
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v5, "scrollToVisible called with targetPos "

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v5, " not visible ["

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v5, ", "

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v5, "]"

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_1
    if-lt p2, v1, :cond_2

    .line 68
    .line 69
    if-le p2, v0, :cond_3

    .line 70
    .line 71
    :cond_2
    const/4 p2, -0x1

    .line 72
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 73
    .line 74
    sub-int/2addr p1, v1

    .line 75
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    const/4 v4, 0x0

    .line 88
    if-le p1, v2, :cond_4

    .line 89
    .line 90
    sub-int/2addr p1, v2

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    const/4 p1, 0x0

    .line 93
    :goto_0
    if-ge v0, v3, :cond_5

    .line 94
    .line 95
    sub-int p1, v0, v3

    .line 96
    .line 97
    :cond_5
    if-nez p1, :cond_6

    .line 98
    .line 99
    return-void

    .line 100
    :cond_6
    if-ltz p2, :cond_8

    .line 101
    .line 102
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 103
    .line 104
    sub-int/2addr p2, v1

    .line 105
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-gez p1, :cond_7

    .line 122
    .line 123
    add-int v5, p2, v1

    .line 124
    .line 125
    if-le v5, v2, :cond_7

    .line 126
    .line 127
    sub-int/2addr p2, v2

    .line 128
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    goto :goto_1

    .line 133
    :cond_7
    if-lez p1, :cond_8

    .line 134
    .line 135
    sub-int p2, v0, v1

    .line 136
    .line 137
    if-ge p2, v3, :cond_8

    .line 138
    .line 139
    sub-int/2addr v0, v3

    .line 140
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    :cond_8
    :goto_1
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 145
    .line 146
    invoke-virtual {p2, p1, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->M0(II)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method b(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 5
    .line 6
    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lit/sephiroth/android/library/widget/AbsHListView$k$a;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$k$a;-><init>(Lit/sephiroth/android/library/widget/AbsHListView$k;I)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->J2:Ljava/lang/Runnable;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 26
    .line 27
    iget v2, v1, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 28
    .line 29
    add-int/2addr v0, v2

    .line 30
    const/4 v3, 0x1

    .line 31
    sub-int/2addr v0, v3

    .line 32
    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AdapterView;->getCount()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    sub-int/2addr v1, v3

    .line 37
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/16 v1, 0xc8

    .line 47
    .line 48
    const/4 v4, -0x1

    .line 49
    if-ge p1, v2, :cond_2

    .line 50
    .line 51
    sub-int/2addr v2, p1

    .line 52
    add-int/2addr v2, v3

    .line 53
    const/4 v0, 0x2

    .line 54
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->b:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    if-le p1, v0, :cond_4

    .line 58
    .line 59
    sub-int v0, p1, v0

    .line 60
    .line 61
    add-int/lit8 v2, v0, 0x1

    .line 62
    .line 63
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->b:I

    .line 64
    .line 65
    :goto_0
    if-lez v2, :cond_3

    .line 66
    .line 67
    div-int/2addr v1, v2

    .line 68
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    .line 72
    .line 73
    :goto_1
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->c:I

    .line 74
    .line 75
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->d:I

    .line 76
    .line 77
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:I

    .line 78
    .line 79
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 80
    .line 81
    iget-object p1, p1, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 82
    .line 83
    invoke-virtual {p1, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    invoke-virtual {p0, p1, v4, v1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->a(III)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method c(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "position",
            "boundPosition"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->g()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->b(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 12
    .line 13
    iget-boolean v2, v1, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$k$b;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView$k$b;-><init>(Lit/sephiroth/android/library/widget/AbsHListView$k;II)V

    .line 20
    .line 21
    .line 22
    iput-object v0, v1, Lit/sephiroth/android/library/widget/AbsHListView;->J2:Ljava/lang/Runnable;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 33
    .line 34
    iget v3, v2, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 35
    .line 36
    add-int/2addr v1, v3

    .line 37
    const/4 v4, 0x1

    .line 38
    sub-int/2addr v1, v4

    .line 39
    invoke-virtual {v2}, Lit/sephiroth/android/library/widget/AdapterView;->getCount()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    sub-int/2addr v2, v4

    .line 44
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const/16 v2, 0xc8

    .line 54
    .line 55
    if-ge p1, v3, :cond_5

    .line 56
    .line 57
    sub-int/2addr v1, p2

    .line 58
    if-ge v1, v4, :cond_3

    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    sub-int/2addr v3, p1

    .line 62
    add-int/2addr v3, v4

    .line 63
    sub-int/2addr v1, v4

    .line 64
    if-ge v1, v3, :cond_4

    .line 65
    .line 66
    const/4 v3, 0x4

    .line 67
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->b:I

    .line 68
    .line 69
    :goto_0
    move v3, v1

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    const/4 v1, 0x2

    .line 72
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->b:I

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    if-le p1, v1, :cond_9

    .line 76
    .line 77
    sub-int v3, p2, v3

    .line 78
    .line 79
    if-ge v3, v4, :cond_6

    .line 80
    .line 81
    return-void

    .line 82
    :cond_6
    sub-int v1, p1, v1

    .line 83
    .line 84
    add-int/2addr v1, v4

    .line 85
    sub-int/2addr v3, v4

    .line 86
    if-ge v3, v1, :cond_7

    .line 87
    .line 88
    const/4 v1, 0x3

    .line 89
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->b:I

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_7
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->b:I

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :goto_1
    if-lez v3, :cond_8

    .line 96
    .line 97
    div-int/2addr v2, v3

    .line 98
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_8
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    .line 102
    .line 103
    :goto_2
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->c:I

    .line 104
    .line 105
    iput p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->d:I

    .line 106
    .line 107
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:I

    .line 108
    .line 109
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 110
    .line 111
    iget-object p1, p1, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 112
    .line 113
    invoke-virtual {p1, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_9
    invoke-virtual {p0, p1, p2, v2}, Lit/sephiroth/android/library/widget/AbsHListView$k;->a(III)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method d(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "offset"
        }
    .end annotation

    .line 1
    const/16 v0, 0xc8

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->e(III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method e(III)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "position",
            "offset",
            "duration"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 5
    .line 6
    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lit/sephiroth/android/library/widget/AbsHListView$k$c;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView$k$c;-><init>(Lit/sephiroth/android/library/widget/AbsHListView$k;III)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->J2:Ljava/lang/Runnable;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr p2, v1

    .line 32
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 33
    .line 34
    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AdapterView;->getCount()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->c:I

    .line 50
    .line 51
    iput p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->h:I

    .line 52
    .line 53
    const/4 v2, -0x1

    .line 54
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->d:I

    .line 55
    .line 56
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:I

    .line 57
    .line 58
    const/4 v3, 0x5

    .line 59
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->b:I

    .line 60
    .line 61
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 62
    .line 63
    iget v4, v3, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 64
    .line 65
    add-int v5, v4, v0

    .line 66
    .line 67
    add-int/lit8 v5, v5, -0x1

    .line 68
    .line 69
    if-ge p1, v4, :cond_2

    .line 70
    .line 71
    sub-int/2addr v4, p1

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    if-le p1, v5, :cond_4

    .line 74
    .line 75
    sub-int v4, p1, v5

    .line 76
    .line 77
    :goto_0
    int-to-float p1, v4

    .line 78
    int-to-float p2, v0

    .line 79
    div-float/2addr p1, p2

    .line 80
    const/high16 p2, 0x3f800000    # 1.0f

    .line 81
    .line 82
    cmpg-float p2, p1, p2

    .line 83
    .line 84
    if-gez p2, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    int-to-float p2, p3

    .line 88
    div-float/2addr p2, p1

    .line 89
    float-to-int p3, p2

    .line 90
    :goto_1
    iput p3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    .line 91
    .line 92
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:I

    .line 93
    .line 94
    iget-object p1, v3, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 95
    .line 96
    invoke-virtual {p1, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    sub-int/2addr p1, v4

    .line 101
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 110
    .line 111
    sub-int/2addr p1, p2

    .line 112
    invoke-virtual {v0, p1, p3, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->N0(IIZ)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 8
    .line 9
    iget v2, v1, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 10
    .line 11
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->b:I

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    if-eq v3, v4, :cond_13

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eq v3, v5, :cond_f

    .line 19
    .line 20
    const/4 v7, 0x3

    .line 21
    if-eq v3, v7, :cond_a

    .line 22
    .line 23
    const/4 v7, 0x4

    .line 24
    if-eq v3, v7, :cond_6

    .line 25
    .line 26
    const/4 v0, 0x5

    .line 27
    if-eq v3, v0, :cond_0

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:I

    .line 32
    .line 33
    if-ne v0, v2, :cond_1

    .line 34
    .line 35
    iget-object v0, v1, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:I

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->c:I

    .line 48
    .line 49
    add-int v3, v2, v0

    .line 50
    .line 51
    sub-int/2addr v3, v4

    .line 52
    if-ge v1, v2, :cond_2

    .line 53
    .line 54
    sub-int v5, v2, v1

    .line 55
    .line 56
    add-int/lit8 v6, v5, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    if-le v1, v3, :cond_3

    .line 60
    .line 61
    sub-int v6, v1, v3

    .line 62
    .line 63
    :cond_3
    :goto_0
    int-to-float v5, v6

    .line 64
    int-to-float v0, v0

    .line 65
    div-float/2addr v5, v0

    .line 66
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/high16 v5, 0x3f800000    # 1.0f

    .line 71
    .line 72
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-ge v1, v2, :cond_4

    .line 77
    .line 78
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    neg-int v1, v1

    .line 85
    int-to-float v1, v1

    .line 86
    mul-float v1, v1, v0

    .line 87
    .line 88
    float-to-int v1, v1

    .line 89
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    .line 90
    .line 91
    int-to-float v2, v2

    .line 92
    mul-float v2, v2, v0

    .line 93
    .line 94
    float-to-int v0, v2

    .line 95
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 96
    .line 97
    invoke-virtual {v2, v1, v0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->N0(IIZ)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 101
    .line 102
    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 103
    .line 104
    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_3

    .line 108
    .line 109
    :cond_4
    if-le v1, v3, :cond_5

    .line 110
    .line 111
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    int-to-float v1, v1

    .line 118
    mul-float v1, v1, v0

    .line 119
    .line 120
    float-to-int v1, v1

    .line 121
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    .line 122
    .line 123
    int-to-float v2, v2

    .line 124
    mul-float v2, v2, v0

    .line 125
    .line 126
    float-to-int v0, v2

    .line 127
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 128
    .line 129
    invoke-virtual {v2, v1, v0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->N0(IIZ)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 133
    .line 134
    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 135
    .line 136
    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_3

    .line 140
    .line 141
    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 142
    .line 143
    sub-int/2addr v1, v2

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->h:I

    .line 153
    .line 154
    sub-int/2addr v0, v1

    .line 155
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    .line 156
    .line 157
    int-to-float v1, v1

    .line 158
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    int-to-float v2, v2

    .line 163
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 164
    .line 165
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    int-to-float v3, v3

    .line 170
    div-float/2addr v2, v3

    .line 171
    mul-float v1, v1, v2

    .line 172
    .line 173
    float-to-int v1, v1

    .line 174
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 175
    .line 176
    invoke-virtual {v2, v0, v1, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->N0(IIZ)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_3

    .line 180
    .line 181
    :cond_6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    sub-int/2addr v1, v5

    .line 186
    if-gez v1, :cond_7

    .line 187
    .line 188
    return-void

    .line 189
    :cond_7
    add-int/2addr v2, v1

    .line 190
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:I

    .line 191
    .line 192
    if-ne v2, v3, :cond_8

    .line 193
    .line 194
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 195
    .line 196
    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 197
    .line 198
    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_8
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 203
    .line 204
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    sub-int v5, v0, v1

    .line 217
    .line 218
    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 219
    .line 220
    iget-object v6, v6, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 221
    .line 222
    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 223
    .line 224
    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->g:I

    .line 225
    .line 226
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:I

    .line 231
    .line 232
    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->d:I

    .line 233
    .line 234
    if-le v2, v7, :cond_9

    .line 235
    .line 236
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 237
    .line 238
    sub-int/2addr v5, v6

    .line 239
    neg-int v1, v5

    .line 240
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    .line 241
    .line 242
    invoke-virtual {v0, v1, v2, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->N0(IIZ)V

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 246
    .line 247
    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 248
    .line 249
    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_3

    .line 253
    .line 254
    :cond_9
    sub-int/2addr v0, v6

    .line 255
    add-int/2addr v1, v3

    .line 256
    if-le v0, v1, :cond_17

    .line 257
    .line 258
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 259
    .line 260
    sub-int/2addr v0, v1

    .line 261
    neg-int v0, v0

    .line 262
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    .line 263
    .line 264
    invoke-virtual {v2, v0, v1, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->N0(IIZ)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_3

    .line 268
    .line 269
    :cond_a
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->d:I

    .line 274
    .line 275
    if-eq v2, v1, :cond_e

    .line 276
    .line 277
    if-le v0, v4, :cond_e

    .line 278
    .line 279
    add-int/2addr v0, v2

    .line 280
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 281
    .line 282
    iget v3, v1, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 283
    .line 284
    if-lt v0, v3, :cond_b

    .line 285
    .line 286
    goto :goto_1

    .line 287
    :cond_b
    add-int/2addr v2, v4

    .line 288
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:I

    .line 289
    .line 290
    if-ne v2, v0, :cond_c

    .line 291
    .line 292
    iget-object v0, v1, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 293
    .line 294
    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :cond_c
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 311
    .line 312
    iget-object v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 313
    .line 314
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 315
    .line 316
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->g:I

    .line 317
    .line 318
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->d:I

    .line 323
    .line 324
    if-ge v2, v5, :cond_d

    .line 325
    .line 326
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 327
    .line 328
    add-int/2addr v1, v0

    .line 329
    sub-int/2addr v1, v3

    .line 330
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    .line 335
    .line 336
    invoke-virtual {v5, v0, v1, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->N0(IIZ)V

    .line 337
    .line 338
    .line 339
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:I

    .line 340
    .line 341
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 342
    .line 343
    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 344
    .line 345
    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_3

    .line 349
    .line 350
    :cond_d
    if-le v0, v3, :cond_17

    .line 351
    .line 352
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 353
    .line 354
    sub-int/2addr v0, v3

    .line 355
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    .line 356
    .line 357
    invoke-virtual {v1, v0, v2, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->N0(IIZ)V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_3

    .line 361
    .line 362
    :cond_e
    :goto_1
    return-void

    .line 363
    :cond_f
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:I

    .line 364
    .line 365
    if-ne v2, v0, :cond_10

    .line 366
    .line 367
    iget-object v0, v1, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 368
    .line 369
    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 370
    .line 371
    .line 372
    return-void

    .line 373
    :cond_10
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    if-nez v0, :cond_11

    .line 378
    .line 379
    return-void

    .line 380
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-lez v2, :cond_12

    .line 385
    .line 386
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->g:I

    .line 387
    .line 388
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 389
    .line 390
    iget-object v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 391
    .line 392
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 393
    .line 394
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    goto :goto_2

    .line 399
    :cond_12
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 400
    .line 401
    iget-object v1, v1, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 402
    .line 403
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 404
    .line 405
    :goto_2
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 406
    .line 407
    sub-int/2addr v0, v1

    .line 408
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    .line 409
    .line 410
    invoke-virtual {v3, v0, v1, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->N0(IIZ)V

    .line 411
    .line 412
    .line 413
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:I

    .line 414
    .line 415
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->c:I

    .line 416
    .line 417
    if-le v2, v0, :cond_17

    .line 418
    .line 419
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 420
    .line 421
    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 422
    .line 423
    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 424
    .line 425
    .line 426
    goto :goto_3

    .line 427
    :cond_13
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    sub-int/2addr v1, v4

    .line 432
    add-int/2addr v2, v1

    .line 433
    if-gez v1, :cond_14

    .line 434
    .line 435
    return-void

    .line 436
    :cond_14
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:I

    .line 437
    .line 438
    if-ne v2, v3, :cond_15

    .line 439
    .line 440
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 441
    .line 442
    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 443
    .line 444
    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 445
    .line 446
    .line 447
    return-void

    .line 448
    :cond_15
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 449
    .line 450
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    sub-int/2addr v0, v1

    .line 463
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 464
    .line 465
    iget v5, v1, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 466
    .line 467
    sub-int/2addr v5, v4

    .line 468
    iget-object v1, v1, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 469
    .line 470
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 471
    .line 472
    if-ge v2, v5, :cond_16

    .line 473
    .line 474
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->g:I

    .line 475
    .line 476
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    :cond_16
    sub-int/2addr v3, v0

    .line 481
    add-int/2addr v3, v1

    .line 482
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 483
    .line 484
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    .line 485
    .line 486
    invoke-virtual {v0, v3, v1, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->N0(IIZ)V

    .line 487
    .line 488
    .line 489
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:I

    .line 490
    .line 491
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->c:I

    .line 492
    .line 493
    if-ge v2, v0, :cond_17

    .line 494
    .line 495
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 496
    .line 497
    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 498
    .line 499
    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 500
    .line 501
    .line 502
    :cond_17
    :goto_3
    return-void
.end method
