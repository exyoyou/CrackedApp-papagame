.class Lit/sephiroth/android/library/widget/ExpandableHListConnector;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/widget/ExpandableHListConnector$a;,
        Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;,
        Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
    }
.end annotation


# instance fields
.field private b:Landroid/widget/ExpandableListAdapter;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private final f:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expandableListAdapter"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->e:I

    .line 8
    .line 9
    new-instance v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$a;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$a;-><init>(Lit/sephiroth/android/library/widget/ExpandableHListConnector;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->f:Landroid/database/DataSetObserver;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->m(Landroid/widget/ExpandableListAdapter;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/ExpandableHListConnector;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->l(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private l(ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forceChildrenCountRefresh",
            "syncGroupPositions"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    iput v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->d:I

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    if-eqz p2, :cond_3

    .line 12
    .line 13
    add-int/lit8 p2, v1, -0x1

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_0
    if-ltz p2, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 23
    .line 24
    iget-wide v6, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->e:J

    .line 25
    .line 26
    iget v8, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:I

    .line 27
    .line 28
    invoke-virtual {p0, v6, v7, v8}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->f(JI)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    iget v7, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:I

    .line 33
    .line 34
    if-eq v6, v7, :cond_1

    .line 35
    .line 36
    if-ne v6, v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    :cond_0
    iput v6, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:I

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    if-eqz v4, :cond_3

    .line 52
    .line 53
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    const/4 p2, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    :goto_1
    if-ge v2, v1, :cond_6

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 65
    .line 66
    iget v6, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    .line 67
    .line 68
    if-eq v6, v3, :cond_5

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    iget v7, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    .line 74
    .line 75
    sub-int/2addr v6, v7

    .line 76
    goto :goto_3

    .line 77
    :cond_5
    :goto_2
    iget-object v6, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 78
    .line 79
    iget v7, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:I

    .line 80
    .line 81
    invoke-interface {v6, v7}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    :goto_3
    iget v7, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->d:I

    .line 86
    .line 87
    add-int/2addr v7, v6

    .line 88
    iput v7, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->d:I

    .line 89
    .line 90
    iget v7, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:I

    .line 91
    .line 92
    sub-int v4, v7, v4

    .line 93
    .line 94
    add-int/2addr p2, v4

    .line 95
    iput p2, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    .line 96
    .line 97
    add-int/2addr p2, v6

    .line 98
    iput p2, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    .line 99
    .line 100
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    move v4, v7

    .line 103
    goto :goto_1

    .line 104
    :cond_6
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method b(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupPos"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-static {v0, p1, v1, v1}, Lit/sephiroth/android/library/widget/a;->c(IIII)Lit/sephiroth/android/library/widget/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->i(Lit/sephiroth/android/library/widget/a;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/a;->g()V

    .line 12
    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 23
    .line 24
    .line 25
    return p1
.end method

.method c(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posMetadata"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v1, v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->l(ZZ)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 19
    .line 20
    iget-object p1, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 21
    .line 22
    iget p1, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:I

    .line 23
    .line 24
    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1
.end method

.method d(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupPos"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-static {v0, p1, v1, v1}, Lit/sephiroth/android/library/widget/a;->c(IIII)Lit/sephiroth/android/library/widget/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->i(Lit/sephiroth/android/library/widget/a;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/a;->g()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->e(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 19
    .line 20
    .line 21
    return p1
.end method

.method e(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posMetadata"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 2
    .line 3
    iget v0, v0, Lit/sephiroth/android/library/widget/a;->a:I

    .line 4
    .line 5
    if-ltz v0, :cond_3

    .line 6
    .line 7
    iget v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->e:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->e:I

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-lt v0, v2, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 36
    .line 37
    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:I

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b(I)Z

    .line 46
    .line 47
    .line 48
    iget v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c:I

    .line 49
    .line 50
    if-le v0, v2, :cond_2

    .line 51
    .line 52
    sub-int/2addr v0, v3

    .line 53
    iput v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c:I

    .line 54
    .line 55
    :cond_2
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 56
    .line 57
    iget v0, v0, Lit/sephiroth/android/library/widget/a;->a:I

    .line 58
    .line 59
    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 60
    .line 61
    invoke-interface {v2, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    const/4 v2, -0x1

    .line 66
    invoke-static {v2, v2, v0, v4, v5}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->f(IIIJ)Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:Ljava/util/ArrayList;

    .line 71
    .line 72
    iget p1, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c:I

    .line 73
    .line 74
    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, v1, v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->l(ZZ)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 84
    .line 85
    iget v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:I

    .line 86
    .line 87
    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    .line 88
    .line 89
    .line 90
    return v3

    .line 91
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 92
    .line 93
    const-string v0, "Need group"

    .line 94
    .line 95
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1
.end method

.method f(JI)I
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupIdToMatch",
            "seedGroupPosition"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 3
    .line 4
    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, -0x1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    const-wide/high16 v3, -0x8000000000000000L

    .line 13
    .line 14
    cmp-long v5, p1, v3

    .line 15
    .line 16
    if-nez v5, :cond_1

    .line 17
    .line 18
    return v2

    .line 19
    :cond_1
    const/4 v3, 0x0

    .line 20
    move/from16 v4, p3

    .line 21
    .line 22
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x1

    .line 27
    sub-int/2addr v1, v5

    .line 28
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v6

    .line 36
    const-wide/16 v8, 0x64

    .line 37
    .line 38
    add-long/2addr v6, v8

    .line 39
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->g()Landroid/widget/ExpandableListAdapter;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    if-nez v8, :cond_2

    .line 44
    .line 45
    return v2

    .line 46
    :cond_2
    move v9, v4

    .line 47
    move v10, v9

    .line 48
    :goto_0
    const/4 v11, 0x0

    .line 49
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v12

    .line 53
    cmp-long v14, v12, v6

    .line 54
    .line 55
    if-gtz v14, :cond_b

    .line 56
    .line 57
    invoke-interface {v8, v4}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    .line 58
    .line 59
    .line 60
    move-result-wide v12

    .line 61
    cmp-long v14, v12, p1

    .line 62
    .line 63
    if-nez v14, :cond_4

    .line 64
    .line 65
    return v4

    .line 66
    :cond_4
    if-ne v9, v1, :cond_5

    .line 67
    .line 68
    const/4 v12, 0x1

    .line 69
    goto :goto_2

    .line 70
    :cond_5
    const/4 v12, 0x0

    .line 71
    :goto_2
    if-nez v10, :cond_6

    .line 72
    .line 73
    const/4 v13, 0x1

    .line 74
    goto :goto_3

    .line 75
    :cond_6
    const/4 v13, 0x0

    .line 76
    :goto_3
    if-eqz v12, :cond_7

    .line 77
    .line 78
    if-eqz v13, :cond_7

    .line 79
    .line 80
    goto :goto_5

    .line 81
    :cond_7
    if-nez v13, :cond_a

    .line 82
    .line 83
    if-eqz v11, :cond_8

    .line 84
    .line 85
    if-nez v12, :cond_8

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_8
    if-nez v12, :cond_9

    .line 89
    .line 90
    if-nez v11, :cond_3

    .line 91
    .line 92
    if-nez v13, :cond_3

    .line 93
    .line 94
    :cond_9
    add-int/lit8 v10, v10, -0x1

    .line 95
    .line 96
    move v4, v10

    .line 97
    const/4 v11, 0x1

    .line 98
    goto :goto_1

    .line 99
    :cond_a
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 100
    .line 101
    move v4, v9

    .line 102
    goto :goto_0

    .line 103
    :cond_b
    :goto_5
    return v2
.end method

.method g()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->d:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->g()Landroid/widget/ExpandableListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/widget/Filterable;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/widget/Filterable;

    .line 10
    .line 11
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flatListPos"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 6
    .line 7
    iget v1, v0, Lit/sephiroth/android/library/widget/a;->d:I

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 13
    .line 14
    iget v0, v0, Lit/sephiroth/android/library/widget/a;->a:I

    .line 15
    .line 16
    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x1

    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 25
    .line 26
    iget v2, v0, Lit/sephiroth/android/library/widget/a;->a:I

    .line 27
    .line 28
    iget v0, v0, Lit/sephiroth/android/library/widget/a;->b:I

    .line 29
    .line 30
    invoke-interface {v1, v2, v0}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    const-string v0, "Flat list position is of unknown type"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public getItemId(I)J
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flatListPos"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 6
    .line 7
    iget-object v1, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 8
    .line 9
    iget v1, v1, Lit/sephiroth/android/library/widget/a;->a:I

    .line 10
    .line 11
    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 16
    .line 17
    iget v3, v2, Lit/sephiroth/android/library/widget/a;->d:I

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    if-ne v3, v4, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 23
    .line 24
    invoke-interface {v2, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v4, 0x1

    .line 30
    if-ne v3, v4, :cond_1

    .line 31
    .line 32
    iget-object v3, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 33
    .line 34
    iget v4, v2, Lit/sephiroth/android/library/widget/a;->a:I

    .line 35
    .line 36
    iget v2, v2, Lit/sephiroth/android/library/widget/a;->b:I

    .line 37
    .line 38
    invoke-interface {v3, v4, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    iget-object v4, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 43
    .line 44
    invoke-interface {v4, v0, v1, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    :goto_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 49
    .line 50
    .line 51
    return-wide v0

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 53
    .line 54
    const-string v0, "Flat list position is of unknown type"

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public getItemViewType(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flatListPos"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 6
    .line 7
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 8
    .line 9
    instance-of v2, v1, Landroid/widget/HeterogeneousExpandableList;

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    check-cast v1, Landroid/widget/HeterogeneousExpandableList;

    .line 15
    .line 16
    iget v2, v0, Lit/sephiroth/android/library/widget/a;->d:I

    .line 17
    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    iget v0, v0, Lit/sephiroth/android/library/widget/a;->a:I

    .line 21
    .line 22
    invoke-interface {v1, v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget v2, v0, Lit/sephiroth/android/library/widget/a;->a:I

    .line 28
    .line 29
    iget v0, v0, Lit/sephiroth/android/library/widget/a;->b:I

    .line 30
    .line 31
    invoke-interface {v1, v2, v0}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-interface {v1}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget v0, v0, Lit/sephiroth/android/library/widget/a;->d:I

    .line 42
    .line 43
    if-ne v0, v3, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x1

    .line 48
    :goto_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 49
    .line 50
    .line 51
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "flatListPos",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 6
    .line 7
    iget v2, v1, Lit/sephiroth/android/library/widget/a;->d:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 13
    .line 14
    iget v1, v1, Lit/sephiroth/android/library/widget/a;->a:I

    .line 15
    .line 16
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-interface {p1, v1, v2, p2, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v3, 0x1

    .line 26
    if-ne v2, v3, :cond_2

    .line 27
    .line 28
    iget-object v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 29
    .line 30
    iget v2, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    .line 31
    .line 32
    if-ne v2, p1, :cond_1

    .line 33
    .line 34
    const/4 v7, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    :goto_0
    iget-object v4, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 39
    .line 40
    iget v5, v1, Lit/sephiroth/android/library/widget/a;->a:I

    .line 41
    .line 42
    iget v6, v1, Lit/sephiroth/android/library/widget/a;->b:I

    .line 43
    .line 44
    move-object v8, p2

    .line 45
    move-object v9, p3

    .line 46
    invoke-interface/range {v4 .. v9}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_1
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 55
    .line 56
    const-string p2, "Flat list position is of unknown type"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public getViewTypeCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/widget/HeterogeneousExpandableList;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 8
    .line 9
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr v1, v0

    .line 18
    return v1

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    return v0
.end method

.method h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method i(Lit/sephiroth/android/library/widget/a;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    add-int/lit8 v4, v3, -0x1

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    iget v7, v1, Lit/sephiroth/android/library/widget/a;->a:I

    .line 16
    .line 17
    iget v6, v1, Lit/sephiroth/android/library/widget/a;->d:I

    .line 18
    .line 19
    iget v8, v1, Lit/sephiroth/android/library/widget/a;->b:I

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    move v5, v7

    .line 24
    invoke-static/range {v5 .. v10}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    return-object v1

    .line 29
    :cond_0
    const/4 v3, 0x0

    .line 30
    const/4 v10, 0x0

    .line 31
    :cond_1
    :goto_0
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x2

    .line 33
    const/4 v7, 0x1

    .line 34
    if-gt v10, v4, :cond_6

    .line 35
    .line 36
    sub-int v3, v4, v10

    .line 37
    .line 38
    div-int/2addr v3, v6

    .line 39
    add-int/2addr v3, v10

    .line 40
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    move-object v15, v8

    .line 45
    check-cast v15, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 46
    .line 47
    iget v13, v1, Lit/sephiroth/android/library/widget/a;->a:I

    .line 48
    .line 49
    iget v8, v15, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:I

    .line 50
    .line 51
    if-le v13, v8, :cond_2

    .line 52
    .line 53
    add-int/lit8 v10, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    if-ge v13, v8, :cond_3

    .line 57
    .line 58
    add-int/lit8 v4, v3, -0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    if-ne v13, v8, :cond_1

    .line 62
    .line 63
    iget v12, v1, Lit/sephiroth/android/library/widget/a;->d:I

    .line 64
    .line 65
    if-ne v12, v6, :cond_4

    .line 66
    .line 67
    iget v11, v15, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    .line 68
    .line 69
    iget v14, v1, Lit/sephiroth/android/library/widget/a;->b:I

    .line 70
    .line 71
    move/from16 v16, v3

    .line 72
    .line 73
    invoke-static/range {v11 .. v16}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    return-object v1

    .line 78
    :cond_4
    if-ne v12, v7, :cond_5

    .line 79
    .line 80
    iget v2, v15, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    .line 81
    .line 82
    iget v14, v1, Lit/sephiroth/android/library/widget/a;->b:I

    .line 83
    .line 84
    add-int/2addr v2, v14

    .line 85
    add-int/lit8 v11, v2, 0x1

    .line 86
    .line 87
    move/from16 v16, v3

    .line 88
    .line 89
    invoke-static/range {v11 .. v16}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    return-object v1

    .line 94
    :cond_5
    return-object v5

    .line 95
    :cond_6
    iget v8, v1, Lit/sephiroth/android/library/widget/a;->d:I

    .line 96
    .line 97
    if-eq v8, v6, :cond_7

    .line 98
    .line 99
    return-object v5

    .line 100
    :cond_7
    if-le v10, v3, :cond_8

    .line 101
    .line 102
    add-int/lit8 v3, v10, -0x1

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 109
    .line 110
    iget v3, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    .line 111
    .line 112
    iget v7, v1, Lit/sephiroth/android/library/widget/a;->a:I

    .line 113
    .line 114
    iget v2, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:I

    .line 115
    .line 116
    sub-int v2, v7, v2

    .line 117
    .line 118
    add-int v5, v3, v2

    .line 119
    .line 120
    iget v6, v1, Lit/sephiroth/android/library/widget/a;->d:I

    .line 121
    .line 122
    iget v8, v1, Lit/sephiroth/android/library/widget/a;->b:I

    .line 123
    .line 124
    const/4 v9, 0x0

    .line 125
    invoke-static/range {v5 .. v10}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    return-object v1

    .line 130
    :cond_8
    if-ge v4, v3, :cond_9

    .line 131
    .line 132
    add-int/2addr v7, v4

    .line 133
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 138
    .line 139
    iget v3, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    .line 140
    .line 141
    iget v2, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:I

    .line 142
    .line 143
    iget v4, v1, Lit/sephiroth/android/library/widget/a;->a:I

    .line 144
    .line 145
    sub-int/2addr v2, v4

    .line 146
    sub-int v2, v3, v2

    .line 147
    .line 148
    iget v3, v1, Lit/sephiroth/android/library/widget/a;->d:I

    .line 149
    .line 150
    iget v5, v1, Lit/sephiroth/android/library/widget/a;->b:I

    .line 151
    .line 152
    const/4 v6, 0x0

    .line 153
    invoke-static/range {v2 .. v7}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    return-object v1

    .line 158
    :cond_9
    return-object v5
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->g()Landroid/widget/ExpandableListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flatListPos"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 6
    .line 7
    iget v1, v0, Lit/sephiroth/android/library/widget/a;->d:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 13
    .line 14
    iget v2, v0, Lit/sephiroth/android/library/widget/a;->a:I

    .line 15
    .line 16
    iget v0, v0, Lit/sephiroth/android/library/widget/a;->b:I

    .line 17
    .line 18
    invoke-interface {v1, v2, v0}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    :cond_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 23
    .line 24
    .line 25
    return v2
.end method

.method j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "flPos"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v2, v1, -0x1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v6, -0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    move v3, p1

    .line 16
    move v5, p1

    .line 17
    invoke-static/range {v3 .. v8}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    move v3, v2

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-gt v1, v3, :cond_5

    .line 26
    .line 27
    sub-int v2, v3, v1

    .line 28
    .line 29
    div-int/lit8 v2, v2, 0x2

    .line 30
    .line 31
    add-int v9, v2, v1

    .line 32
    .line 33
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    move-object v8, v2

    .line 38
    check-cast v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 39
    .line 40
    iget v2, v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    .line 41
    .line 42
    if-le p1, v2, :cond_2

    .line 43
    .line 44
    add-int/lit8 v1, v9, 0x1

    .line 45
    .line 46
    :cond_1
    :goto_1
    move v2, v9

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget v4, v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    .line 49
    .line 50
    if-ge p1, v4, :cond_3

    .line 51
    .line 52
    add-int/lit8 v3, v9, -0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    if-ne p1, v4, :cond_4

    .line 56
    .line 57
    const/4 v5, 0x2

    .line 58
    iget v6, v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:I

    .line 59
    .line 60
    const/4 v7, -0x1

    .line 61
    move v4, p1

    .line 62
    invoke-static/range {v4 .. v9}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_4
    if-gt p1, v2, :cond_1

    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    sub-int v7, p1, v4

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    iget v6, v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:I

    .line 75
    .line 76
    move v4, p1

    .line 77
    invoke-static/range {v4 .. v9}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :cond_5
    if-le v1, v2, :cond_6

    .line 83
    .line 84
    add-int/lit8 v2, v1, -0x1

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 91
    .line 92
    iget v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    .line 93
    .line 94
    sub-int v2, p1, v2

    .line 95
    .line 96
    iget v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:I

    .line 97
    .line 98
    add-int/2addr v2, v0

    .line 99
    :goto_2
    move v8, v1

    .line 100
    move v5, v2

    .line 101
    goto :goto_3

    .line 102
    :cond_6
    if-ge v3, v2, :cond_7

    .line 103
    .line 104
    add-int/lit8 v1, v3, 0x1

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 111
    .line 112
    iget v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:I

    .line 113
    .line 114
    iget v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    .line 115
    .line 116
    sub-int/2addr v0, p1

    .line 117
    sub-int/2addr v2, v0

    .line 118
    goto :goto_2

    .line 119
    :goto_3
    const/4 v4, 0x2

    .line 120
    const/4 v6, -0x1

    .line 121
    const/4 v7, 0x0

    .line 122
    move v3, p1

    .line 123
    invoke-static/range {v3 .. v8}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    return-object p1

    .line 128
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    .line 129
    .line 130
    const-string v0, "Unknown state"

    .line 131
    .line 132
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1
.end method

.method public k(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupPosition"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 18
    .line 19
    iget v2, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:I

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public m(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expandableListAdapter"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->f:Landroid/database/DataSetObserver;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 11
    .line 12
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->f:Landroid/database/DataSetObserver;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method n(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expandedGroupMetadataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Landroid/widget/ExpandableListAdapter;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    sub-int/2addr v1, v2

    .line 18
    :goto_0
    if-ltz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 25
    .line 26
    iget v3, v3, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:I

    .line 27
    .line 28
    if-lt v3, v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:Ljava/util/ArrayList;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-direct {p0, v2, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->l(ZZ)V

    .line 38
    .line 39
    .line 40
    :cond_3
    :goto_1
    return-void
.end method

.method public o(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxExpGroupCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->e:I

    .line 2
    .line 3
    return-void
.end method
