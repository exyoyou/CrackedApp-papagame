.class public abstract Lcom/xinzhu/overmind/server/pm/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/pm/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "IntentResolver"

.field private static final i:Z

.field private static final j:Z

.field private static final k:Z

.field private static final l:Ljava/util/Comparator;


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "TF;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final g:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/pm/g$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/g$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/server/pm/g;->l:Ljava/util/Comparator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/g;->a:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/g;->b:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/g;->c:Landroid/util/ArrayMap;

    .line 24
    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/g;->d:Landroid/util/ArrayMap;

    .line 31
    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/g;->e:Landroid/util/ArrayMap;

    .line 38
    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/g;->f:Landroid/util/ArrayMap;

    .line 45
    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/g;->g:Landroid/util/ArrayMap;

    .line 52
    .line 53
    return-void
.end method

.method private final B(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    const/4 p4, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return p4

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    add-int/lit8 p4, p4, 0x1

    .line 18
    .line 19
    invoke-direct {p0, p3, v0, p1}, Lcom/xinzhu/overmind/server/pm/g;->z(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return p4
.end method

.method private final C(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    iget-object p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    const/16 v3, 0x2f

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-lez v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v5, "/*"

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    move-object v6, v4

    .line 61
    move-object v4, v2

    .line 62
    move-object v2, v6

    .line 63
    :goto_1
    iget-object v5, p0, Lcom/xinzhu/overmind/server/pm/g;->b:Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-direct {p0, v5, v2, p1}, Lcom/xinzhu/overmind/server/pm/g;->z(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    if-lez v3, :cond_2

    .line 69
    .line 70
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/g;->c:Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-direct {p0, v2, v4, p1}, Lcom/xinzhu/overmind/server/pm/g;->z(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/g;->d:Landroid/util/ArrayMap;

    .line 77
    .line 78
    invoke-direct {p0, v2, v4, p1}, Lcom/xinzhu/overmind/server/pm/g;->z(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    return v1
.end method

.method private final a(Landroid/util/ArrayMap;Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, [Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/server/pm/g;->r(I)[Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    aput-object p3, v0, v2

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    array-length v3, v0

    .line 22
    move v4, v3

    .line 23
    :goto_0
    if-lez v4, :cond_1

    .line 24
    .line 25
    add-int/lit8 v5, v4, -0x1

    .line 26
    .line 27
    aget-object v5, v0, v5

    .line 28
    .line 29
    if-nez v5, :cond_1

    .line 30
    .line 31
    add-int/lit8 v4, v4, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-ge v4, v3, :cond_2

    .line 35
    .line 36
    aput-object p3, v0, v4

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    mul-int/lit8 v4, v3, 0x3

    .line 40
    .line 41
    div-int/2addr v4, v1

    .line 42
    invoke-virtual {p0, v4}, Lcom/xinzhu/overmind/server/pm/g;->r(I)[Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    aput-object p3, v1, v3

    .line 50
    .line 51
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :goto_1
    return-void
.end method

.method private d(Landroid/content/Intent;Lcom/xinzhu/overmind/server/pm/c;ZZLjava/lang/String;Ljava/lang/String;[Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/util/List;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/xinzhu/overmind/server/pm/c<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List<",
            "TR;>;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 4
    array-length v4, v1

    move v13, v4

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    const/4 v9, 0x1

    const-string v8, "IntentResolver"

    if-ge v14, v13, :cond_f

    .line 5
    aget-object v7, v1, v14

    if-eqz v7, :cond_f

    if-eqz p3, :cond_1

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Matching against filter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v12, :cond_2

    .line 7
    invoke-virtual {v0, v12, v7}, Lcom/xinzhu/overmind/server/pm/g;->q(Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p3, :cond_3

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Filter is not from package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; skipping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v0, v7, v2}, Lcom/xinzhu/overmind/server/pm/g;->c(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p3, :cond_3

    const-string v3, "  Filter\'s target already added"

    .line 10
    invoke-static {v8, v3}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    move/from16 v4, p9

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    goto/16 :goto_5

    .line 11
    :cond_4
    iget-object v3, v7, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Landroid/content/IntentFilter;

    const-string v16, "IntentResolver"

    move-object v4, v10

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v1, v7

    move-object v7, v11

    move-object/from16 v17, v10

    move-object v10, v8

    move-object/from16 v8, p2

    move-object/from16 v18, v11

    const/4 v11, 0x1

    move-object/from16 v9, v16

    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_9

    const-string v4, "android.intent.category.DEFAULT"

    if-eqz p3, :cond_5

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Filter matched!  match=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " hasDefault="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Landroid/content/IntentFilter;

    .line 14
    invoke-virtual {v6, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-static {v10, v5}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz p4, :cond_7

    .line 16
    iget-object v5, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Landroid/content/IntentFilter;

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v4, p9

    const/4 v15, 0x1

    goto :goto_5

    :cond_7
    :goto_3
    move/from16 v4, p9

    .line 17
    invoke-virtual {v0, v1, v3, v4}, Lcom/xinzhu/overmind/server/pm/g;->s(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;II)Ljava/lang/Object;

    move-result-object v1

    if-eqz p3, :cond_8

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Created result: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v1, :cond_e

    .line 19
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move/from16 v4, p9

    if-eqz p3, :cond_e

    const/4 v1, -0x4

    if-eq v3, v1, :cond_d

    const/4 v1, -0x3

    if-eq v3, v1, :cond_c

    const/4 v1, -0x2

    if-eq v3, v1, :cond_b

    const/4 v1, -0x1

    if-eq v3, v1, :cond_a

    const-string v1, "unknown reason"

    goto :goto_4

    :cond_a
    const-string v1, "type"

    goto :goto_4

    :cond_b
    const-string v1, "data"

    goto :goto_4

    :cond_c
    const-string v1, "action"

    goto :goto_4

    :cond_d
    const-string v1, "category"

    .line 20
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Filter did not match: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p7

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    goto/16 :goto_1

    :cond_f
    move-object v10, v8

    const/4 v11, 0x1

    if-eqz p3, :cond_11

    if-eqz v15, :cond_11

    .line 21
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    .line 22
    invoke-static {v10, v1}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 23
    :cond_10
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v11, :cond_11

    const-string v1, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    .line 24
    invoke-static {v10, v1}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_6
    return-void
.end method

.method private e([Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TF;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    .line 6
    if-ge v1, v2, :cond_3

    .line 7
    .line 8
    aget-object v2, p1, v1

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Landroid/content/IntentFilter;

    .line 14
    .line 15
    invoke-static {v3, p2}, Lcom/xinzhu/overmind/server/pm/g;->i(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static i(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eq v0, v1, :cond_3

    .line 39
    .line 40
    return v2

    .line 41
    :cond_3
    const/4 v1, 0x0

    .line 42
    :goto_1
    if-ge v1, v0, :cond_5

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_4

    .line 53
    .line 54
    return v2

    .line 55
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_5
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eq v0, v1, :cond_6

    .line 67
    .line 68
    return v2

    .line 69
    :cond_6
    const/4 v1, 0x0

    .line 70
    :goto_2
    if-ge v1, v0, :cond_8

    .line 71
    .line 72
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_7

    .line 81
    .line 82
    return v2

    .line 83
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_8
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eq p0, p1, :cond_9

    .line 95
    .line 96
    return v2

    .line 97
    :cond_9
    const/4 p0, 0x1

    .line 98
    return p0
.end method

.method private static o(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/pm/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/xinzhu/overmind/server/pm/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Lcom/xinzhu/overmind/server/pm/c;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    new-array v1, v1, [Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, [Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/server/pm/c;-><init>([Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method private final v(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    const/4 p4, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return p4

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    add-int/lit8 p4, p4, 0x1

    .line 18
    .line 19
    invoke-direct {p0, p3, v0, p1}, Lcom/xinzhu/overmind/server/pm/g;->a(Landroid/util/ArrayMap;Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return p4
.end method

.method private final w(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    iget-object p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    const/16 v3, 0x2f

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-lez v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v5, "/*"

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    move-object v6, v4

    .line 61
    move-object v4, v2

    .line 62
    move-object v2, v6

    .line 63
    :goto_1
    iget-object v5, p0, Lcom/xinzhu/overmind/server/pm/g;->b:Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-direct {p0, v5, v2, p1}, Lcom/xinzhu/overmind/server/pm/g;->a(Landroid/util/ArrayMap;Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V

    .line 66
    .line 67
    .line 68
    if-lez v3, :cond_2

    .line 69
    .line 70
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/g;->c:Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-direct {p0, v2, v4, p1}, Lcom/xinzhu/overmind/server/pm/g;->a(Landroid/util/ArrayMap;Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/g;->d:Landroid/util/ArrayMap;

    .line 77
    .line 78
    invoke-direct {p0, v2, v4, p1}, Lcom/xinzhu/overmind/server/pm/g;->a(Landroid/util/ArrayMap;Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    return v1
.end method

.method private final z(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, [Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_0

    .line 13
    .line 14
    aget-object v2, v0, v1

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v1

    .line 22
    :goto_1
    if-ltz v1, :cond_3

    .line 23
    .line 24
    aget-object v3, v0, v1

    .line 25
    .line 26
    if-ne v3, p3, :cond_2

    .line 27
    .line 28
    sub-int v3, v2, v1

    .line 29
    .line 30
    if-lez v3, :cond_1

    .line 31
    .line 32
    add-int/lit8 v4, v1, 0x1

    .line 33
    .line 34
    invoke-static {v0, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 v3, 0x0

    .line 38
    aput-object v3, v0, v2

    .line 39
    .line 40
    add-int/lit8 v2, v2, -0x1

    .line 41
    .line 42
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    if-gez v2, :cond_4

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    array-length p3, v0

    .line 52
    div-int/lit8 p3, p3, 0x2

    .line 53
    .line 54
    if-ge v2, p3, :cond_5

    .line 55
    .line 56
    add-int/lit8 p3, v2, 0x2

    .line 57
    .line 58
    invoke-virtual {p0, p3}, Lcom/xinzhu/overmind/server/pm/g;->r(I)[Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-static {v0, v1, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method protected A(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/g;->l:Ljava/util/Comparator;

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/g;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Landroid/content/IntentFilter;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/g;->e:Landroid/util/ArrayMap;

    .line 13
    .line 14
    const-string v2, "      Scheme: "

    .line 15
    .line 16
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xinzhu/overmind/server/pm/g;->v(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v1, "      Type: "

    .line 21
    .line 22
    invoke-direct {p0, p1, v1}, Lcom/xinzhu/overmind/server/pm/g;->w(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Landroid/content/IntentFilter;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/g;->f:Landroid/util/ArrayMap;

    .line 37
    .line 38
    const-string v3, "      Action: "

    .line 39
    .line 40
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/xinzhu/overmind/server/pm/g;->v(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Landroid/content/IntentFilter;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/g;->g:Landroid/util/ArrayMap;

    .line 52
    .line 53
    const-string v2, "      TypedAction: "

    .line 54
    .line 55
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xinzhu/overmind/server/pm/g;->v(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method protected c(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List<",
            "TR;>;)Z"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method protected f(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected g(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const-string p2, ": "

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method h(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "ZZ)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v10, p3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 4
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v11, v14, :cond_d

    .line 5
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 6
    array-length v15, v14

    const-string v8, ":"

    if-eqz p8, :cond_6

    if-nez p7, :cond_6

    .line 7
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    const/4 v9, 0x0

    :goto_1
    move-object/from16 v16, v10

    if-ge v9, v15, :cond_2

    .line 8
    aget-object v10, v14, v9

    if-eqz v10, :cond_2

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v0, v4, v10}, Lcom/xinzhu/overmind/server/pm/g;->q(Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)Z

    move-result v17

    if-nez v17, :cond_0

    move/from16 v18, v12

    move-object/from16 v17, v13

    const/4 v12, 0x1

    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {v0, v10}, Lcom/xinzhu/overmind/server/pm/g;->m(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v13

    .line 11
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v13

    if-gez v13, :cond_1

    .line 12
    new-instance v13, Landroid/util/MutableInt;

    move/from16 v18, v12

    const/4 v12, 0x1

    invoke-direct {v13, v12}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v7, v10, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    move/from16 v18, v12

    const/4 v12, 0x1

    .line 13
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/MutableInt;

    iget v13, v10, Landroid/util/MutableInt;->value:I

    add-int/2addr v13, v12

    iput v13, v10, Landroid/util/MutableInt;->value:I

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v10, v16

    move-object/from16 v13, v17

    move/from16 v12, v18

    goto :goto_1

    :cond_2
    move/from16 v18, v12

    move-object/from16 v17, v13

    const/4 v12, 0x1

    move-object/from16 v10, v16

    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 14
    :goto_3
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v9, v14, :cond_5

    if-eqz v10, :cond_3

    .line 15
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_3
    if-nez v13, :cond_4

    .line 16
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v13, 0x1

    .line 17
    :cond_4
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/MutableInt;

    iget v15, v15, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v1, v2, v14, v15}, Lcom/xinzhu/overmind/server/pm/g;->g(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V

    add-int/lit8 v9, v9, 0x1

    const/16 v18, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v13, v17

    goto :goto_6

    :cond_6
    move-object/from16 v16, v10

    move/from16 v18, v12

    move-object/from16 v17, v13

    const/4 v12, 0x1

    move-object/from16 v10, v16

    move-object/from16 v13, v17

    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_4
    if-ge v9, v15, :cond_c

    .line 18
    aget-object v12, v14, v9

    if-eqz v12, :cond_c

    if-eqz v4, :cond_7

    .line 19
    invoke-virtual {v0, v4, v12}, Lcom/xinzhu/overmind/server/pm/g;->q(Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)Z

    move-result v17

    if-nez v17, :cond_7

    goto :goto_5

    :cond_7
    if-eqz v10, :cond_8

    .line 20
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_8
    if-nez v16, :cond_9

    .line 21
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v16, 0x1

    .line 22
    :cond_9
    invoke-virtual {v0, v1, v2, v12}, Lcom/xinzhu/overmind/server/pm/g;->f(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V

    if-eqz p7, :cond_b

    if-nez v13, :cond_a

    .line 23
    new-instance v13, Landroid/util/PrintWriterPrinter;

    invoke-direct {v13, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 24
    :cond_a
    iget-object v3, v12, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Landroid/content/IntentFilter;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v13, v12}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_b
    const/16 v18, 0x1

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p5

    const/4 v12, 0x1

    goto :goto_4

    :cond_c
    :goto_6
    move/from16 v12, v18

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p5

    goto/16 :goto_0

    :cond_d
    move/from16 v18, v12

    return v18
.end method

.method public j()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TF;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/pm/g$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/g;->a:Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/xinzhu/overmind/server/pm/g$b;-><init>(Lcom/xinzhu/overmind/server/pm/g;Ljava/util/Iterator;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method protected k(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public l()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TF;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/g;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected m(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const-string p1, "IntentFilter"

    return-object p1
.end method

.method public n(Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/g;->e:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, [Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 20
    .line 21
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/pm/g;->e([Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ne v0, v2, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/g;->g:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, [Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 49
    .line 50
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/pm/g;->e([Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-ne v0, v2, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/g;->f:Landroid/util/ArrayMap;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, [Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 84
    .line 85
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/pm/g;->e([Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/g;->a:Ljava/util/HashSet;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const/4 v1, 0x0

    .line 97
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_5

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 108
    .line 109
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Landroid/content/IntentFilter;

    .line 110
    .line 111
    invoke-static {v3, p1}, Lcom/xinzhu/overmind/server/pm/g;->i(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_3

    .line 116
    .line 117
    if-nez v1, :cond_4

    .line 118
    .line 119
    new-instance v1, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_5
    return-object v1
.end method

.method protected p(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)Z"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract q(Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation
.end method

.method protected abstract r(I)[Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method protected s(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;II)TR;"
        }
    .end annotation

    .line 1
    return-object p1
.end method

.method public t(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v11, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v12

    .line 9
    new-instance v13, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    and-int/lit8 v0, v0, 0x8

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v14, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v15, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v15, 0x0

    .line 27
    :goto_0
    const-string v9, "IntentResolver"

    .line 28
    .line 29
    if-eqz v15, :cond_1

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "Resolving type="

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, " scheme="

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, " defaultOnly="

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move/from16 v8, p3

    .line 58
    .line 59
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, " userId="

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move/from16 v7, p4

    .line 68
    .line 69
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v2, " of "

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    move-object/from16 v6, p1

    .line 78
    .line 79
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v9, v0}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    move-object/from16 v6, p1

    .line 91
    .line 92
    move/from16 v8, p3

    .line 93
    .line 94
    move/from16 v7, p4

    .line 95
    .line 96
    :goto_1
    if-eqz v11, :cond_9

    .line 97
    .line 98
    const/16 v2, 0x2f

    .line 99
    .line 100
    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(I)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-lez v2, :cond_9

    .line 105
    .line 106
    invoke-virtual {v11, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const-string v4, "*"

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-nez v5, :cond_8

    .line 117
    .line 118
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    add-int/lit8 v0, v2, 0x2

    .line 123
    .line 124
    const-string v14, "Second type cut: "

    .line 125
    .line 126
    const-string v6, "First type cut: "

    .line 127
    .line 128
    if-ne v5, v0, :cond_4

    .line 129
    .line 130
    add-int/2addr v2, v1

    .line 131
    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    const/16 v1, 0x2a

    .line 136
    .line 137
    if-eq v0, v1, :cond_2

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_2
    iget-object v0, v10, Lcom/xinzhu/overmind/server/pm/g;->c:Landroid/util/ArrayMap;

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, [Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 147
    .line 148
    if-eqz v15, :cond_3

    .line 149
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v9, v1}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    :cond_3
    iget-object v1, v10, Lcom/xinzhu/overmind/server/pm/g;->d:Landroid/util/ArrayMap;

    .line 173
    .line 174
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    check-cast v1, [Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 179
    .line 180
    if-eqz v15, :cond_6

    .line 181
    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-static {v9, v2}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_4
    :goto_2
    iget-object v0, v10, Lcom/xinzhu/overmind/server/pm/g;->b:Landroid/util/ArrayMap;

    .line 206
    .line 207
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, [Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 212
    .line 213
    if-eqz v15, :cond_5

    .line 214
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-static {v9, v1}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    :cond_5
    iget-object v1, v10, Lcom/xinzhu/overmind/server/pm/g;->d:Landroid/util/ArrayMap;

    .line 238
    .line 239
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, [Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 244
    .line 245
    if-eqz v15, :cond_6

    .line 246
    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-static {v9, v2}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    :cond_6
    :goto_3
    iget-object v2, v10, Lcom/xinzhu/overmind/server/pm/g;->d:Landroid/util/ArrayMap;

    .line 270
    .line 271
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    check-cast v2, [Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 276
    .line 277
    if-eqz v15, :cond_7

    .line 278
    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    const-string v4, "Third type cut: "

    .line 285
    .line 286
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    invoke-static {v9, v3}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    :cond_7
    move-object v14, v1

    .line 304
    move-object/from16 v17, v2

    .line 305
    .line 306
    goto :goto_5

    .line 307
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    if-eqz v0, :cond_9

    .line 312
    .line 313
    iget-object v0, v10, Lcom/xinzhu/overmind/server/pm/g;->g:Landroid/util/ArrayMap;

    .line 314
    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    check-cast v0, [Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 324
    .line 325
    if-eqz v15, :cond_a

    .line 326
    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .line 331
    .line 332
    const-string v2, "Typed Action list: "

    .line 333
    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-static {v9, v1}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    goto :goto_4

    .line 352
    :cond_9
    const/4 v0, 0x0

    .line 353
    :cond_a
    :goto_4
    const/4 v14, 0x0

    .line 354
    const/16 v17, 0x0

    .line 355
    .line 356
    :goto_5
    if-eqz v12, :cond_c

    .line 357
    .line 358
    iget-object v1, v10, Lcom/xinzhu/overmind/server/pm/g;->e:Landroid/util/ArrayMap;

    .line 359
    .line 360
    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    check-cast v1, [Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 365
    .line 366
    if-eqz v15, :cond_b

    .line 367
    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .line 372
    .line 373
    const-string v3, "Scheme list: "

    .line 374
    .line 375
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-static {v9, v2}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    :cond_b
    move-object/from16 v16, v1

    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_c
    const/16 v16, 0x0

    .line 396
    .line 397
    :goto_6
    if-nez v11, :cond_d

    .line 398
    .line 399
    if-nez v12, :cond_d

    .line 400
    .line 401
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    if-eqz v1, :cond_d

    .line 406
    .line 407
    iget-object v0, v10, Lcom/xinzhu/overmind/server/pm/g;->f:Landroid/util/ArrayMap;

    .line 408
    .line 409
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    check-cast v0, [Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 418
    .line 419
    if-eqz v15, :cond_d

    .line 420
    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .line 425
    .line 426
    const-string v2, "Action list: "

    .line 427
    .line 428
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    invoke-static {v9, v1}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .line 444
    .line 445
    :cond_d
    move-object/from16 v18, v0

    .line 446
    .line 447
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/server/pm/g;->o(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/pm/c;

    .line 448
    .line 449
    .line 450
    move-result-object v19

    .line 451
    if-eqz v18, :cond_e

    .line 452
    .line 453
    move-object/from16 v0, p0

    .line 454
    .line 455
    move-object/from16 v1, p1

    .line 456
    .line 457
    move-object/from16 v2, v19

    .line 458
    .line 459
    move v3, v15

    .line 460
    move/from16 v4, p3

    .line 461
    .line 462
    move-object/from16 v5, p2

    .line 463
    .line 464
    move-object v6, v12

    .line 465
    move-object/from16 v7, v18

    .line 466
    .line 467
    move-object v8, v13

    .line 468
    move-object v11, v9

    .line 469
    move/from16 v9, p4

    .line 470
    .line 471
    invoke-direct/range {v0 .. v9}, Lcom/xinzhu/overmind/server/pm/g;->d(Landroid/content/Intent;Lcom/xinzhu/overmind/server/pm/c;ZZLjava/lang/String;Ljava/lang/String;[Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/util/List;I)V

    .line 472
    .line 473
    .line 474
    goto :goto_7

    .line 475
    :cond_e
    move-object v11, v9

    .line 476
    :goto_7
    if-eqz v14, :cond_f

    .line 477
    .line 478
    move-object/from16 v0, p0

    .line 479
    .line 480
    move-object/from16 v1, p1

    .line 481
    .line 482
    move-object/from16 v2, v19

    .line 483
    .line 484
    move v3, v15

    .line 485
    move/from16 v4, p3

    .line 486
    .line 487
    move-object/from16 v5, p2

    .line 488
    .line 489
    move-object v6, v12

    .line 490
    move-object v7, v14

    .line 491
    move-object v8, v13

    .line 492
    move/from16 v9, p4

    .line 493
    .line 494
    invoke-direct/range {v0 .. v9}, Lcom/xinzhu/overmind/server/pm/g;->d(Landroid/content/Intent;Lcom/xinzhu/overmind/server/pm/c;ZZLjava/lang/String;Ljava/lang/String;[Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/util/List;I)V

    .line 495
    .line 496
    .line 497
    :cond_f
    if-eqz v17, :cond_10

    .line 498
    .line 499
    move-object/from16 v0, p0

    .line 500
    .line 501
    move-object/from16 v1, p1

    .line 502
    .line 503
    move-object/from16 v2, v19

    .line 504
    .line 505
    move v3, v15

    .line 506
    move/from16 v4, p3

    .line 507
    .line 508
    move-object/from16 v5, p2

    .line 509
    .line 510
    move-object v6, v12

    .line 511
    move-object/from16 v7, v17

    .line 512
    .line 513
    move-object v8, v13

    .line 514
    move/from16 v9, p4

    .line 515
    .line 516
    invoke-direct/range {v0 .. v9}, Lcom/xinzhu/overmind/server/pm/g;->d(Landroid/content/Intent;Lcom/xinzhu/overmind/server/pm/c;ZZLjava/lang/String;Ljava/lang/String;[Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/util/List;I)V

    .line 517
    .line 518
    .line 519
    :cond_10
    if-eqz v16, :cond_11

    .line 520
    .line 521
    move-object/from16 v0, p0

    .line 522
    .line 523
    move-object/from16 v1, p1

    .line 524
    .line 525
    move-object/from16 v2, v19

    .line 526
    .line 527
    move v3, v15

    .line 528
    move/from16 v4, p3

    .line 529
    .line 530
    move-object/from16 v5, p2

    .line 531
    .line 532
    move-object v6, v12

    .line 533
    move-object/from16 v7, v16

    .line 534
    .line 535
    move-object v8, v13

    .line 536
    move/from16 v9, p4

    .line 537
    .line 538
    invoke-direct/range {v0 .. v9}, Lcom/xinzhu/overmind/server/pm/g;->d(Landroid/content/Intent;Lcom/xinzhu/overmind/server/pm/c;ZZLjava/lang/String;Ljava/lang/String;[Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/util/List;I)V

    .line 539
    .line 540
    .line 541
    :cond_11
    invoke-virtual {v10, v13}, Lcom/xinzhu/overmind/server/pm/g;->k(Ljava/util/List;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v10, v13}, Lcom/xinzhu/overmind/server/pm/g;->A(Ljava/util/List;)V

    .line 545
    .line 546
    .line 547
    if-eqz v15, :cond_12

    .line 548
    .line 549
    const-string v0, "Final result list:"

    .line 550
    .line 551
    invoke-static {v11, v0}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .line 553
    .line 554
    const/4 v14, 0x0

    .line 555
    :goto_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-ge v14, v0, :cond_12

    .line 560
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .line 565
    .line 566
    const-string v1, "  "

    .line 567
    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    invoke-static {v11, v0}, Lcom/xinzhu/overmind/utils/y;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .line 584
    .line 585
    add-int/lit8 v14, v14, 0x1

    .line 586
    .line 587
    goto :goto_8

    .line 588
    :cond_12
    return-object v13
.end method

.method public u(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "[TF;>;I)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    new-instance v11, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    and-int/lit8 v0, v0, 0x8

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    const/4 v12, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v12, 0x0

    .line 21
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/server/pm/g;->o(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/pm/c;

    .line 22
    .line 23
    .line 24
    move-result-object v13

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v14

    .line 29
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v15

    .line 33
    const/4 v9, 0x0

    .line 34
    :goto_1
    if-ge v9, v15, :cond_1

    .line 35
    .line 36
    move-object/from16 v8, p4

    .line 37
    .line 38
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v7, v0

    .line 43
    check-cast v7, [Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 44
    .line 45
    move-object/from16 v0, p0

    .line 46
    .line 47
    move-object/from16 v1, p1

    .line 48
    .line 49
    move-object v2, v13

    .line 50
    move v3, v12

    .line 51
    move/from16 v4, p3

    .line 52
    .line 53
    move-object/from16 v5, p2

    .line 54
    .line 55
    move-object v6, v14

    .line 56
    move-object v8, v11

    .line 57
    move/from16 v16, v9

    .line 58
    .line 59
    move/from16 v9, p5

    .line 60
    .line 61
    invoke-direct/range {v0 .. v9}, Lcom/xinzhu/overmind/server/pm/g;->d(Landroid/content/Intent;Lcom/xinzhu/overmind/server/pm/c;ZZLjava/lang/String;Ljava/lang/String;[Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/util/List;I)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v9, v16, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v10, v11}, Lcom/xinzhu/overmind/server/pm/g;->k(Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v10, v11}, Lcom/xinzhu/overmind/server/pm/g;->A(Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    return-object v11
.end method

.method public x(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/pm/g;->y(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/g;->a:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method y(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/g;->e:Landroid/util/ArrayMap;

    .line 8
    .line 9
    const-string v2, "      Scheme: "

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xinzhu/overmind/server/pm/g;->B(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "      Type: "

    .line 16
    .line 17
    invoke-direct {p0, p1, v1}, Lcom/xinzhu/overmind/server/pm/g;->C(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Landroid/content/IntentFilter;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/g;->f:Landroid/util/ArrayMap;

    .line 32
    .line 33
    const-string v3, "      Action: "

    .line 34
    .line 35
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/xinzhu/overmind/server/pm/g;->B(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Landroid/content/IntentFilter;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/g;->g:Landroid/util/ArrayMap;

    .line 47
    .line 48
    const-string v2, "      TypedAction: "

    .line 49
    .line 50
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xinzhu/overmind/server/pm/g;->B(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method
