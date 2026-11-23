.class public final Lcom/xinzhu/overmind/server/content/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/content/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/content/b$b$a;
    }
.end annotation


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/content/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/content/b$b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xinzhu/overmind/server/content/b$b;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/xinzhu/overmind/server/content/b$b;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/xinzhu/overmind/server/content/b$b;->a:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method static synthetic a(Lcom/xinzhu/overmind/server/content/b$b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/content/b$b;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method private b(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .locals 18

    move-object/from16 v8, p0

    move/from16 v0, p2

    .line 1
    invoke-direct/range {p0 .. p1}, Lcom/xinzhu/overmind/server/content/b$b;->f(Landroid/net/Uri;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v9, v8, Lcom/xinzhu/overmind/server/content/b$b;->c:Ljava/util/ArrayList;

    new-instance v10, Lcom/xinzhu/overmind/server/content/b$b$a;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/xinzhu/overmind/server/content/b$b$a;-><init>(Lcom/xinzhu/overmind/server/content/b$b;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/xinzhu/overmind/server/content/b$b;->g(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4
    iget-object v2, v8, Lcom/xinzhu/overmind/server/content/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 5
    iget-object v4, v8, Lcom/xinzhu/overmind/server/content/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/xinzhu/overmind/server/content/b$b;

    .line 6
    iget-object v4, v9, Lcom/xinzhu/overmind/server/content/b$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v11, v0, 0x1

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    .line 7
    invoke-direct/range {v9 .. v17}, Lcom/xinzhu/overmind/server/content/b$b;->b(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    new-instance v9, Lcom/xinzhu/overmind/server/content/b$b;

    invoke-direct {v9, v1}, Lcom/xinzhu/overmind/server/content/b$b;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, v8, Lcom/xinzhu/overmind/server/content/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v0, 0x1

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    .line 10
    invoke-direct/range {v9 .. v17}, Lcom/xinzhu/overmind/server/content/b$b;->b(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    return-void

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Uri ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") used for observer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(ZLandroid/database/IContentObserver;ZILjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/database/IContentObserver;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/content/b$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/content/b$b;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :goto_0
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_1
    if-ge v2, v0, :cond_6

    .line 18
    .line 19
    iget-object v3, p0, Lcom/xinzhu/overmind/server/content/b$b;->c:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/xinzhu/overmind/server/content/b$b$a;

    .line 26
    .line 27
    iget-object v4, v3, Lcom/xinzhu/overmind/server/content/b$b$a;->b:Landroid/database/IContentObserver;

    .line 28
    .line 29
    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-ne v4, p2, :cond_1

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    const/4 v4, 0x0

    .line 38
    :goto_2
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-nez p3, :cond_2

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_2
    const/4 v5, -0x1

    .line 44
    if-eq p4, v5, :cond_3

    .line 45
    .line 46
    invoke-static {v3}, Lcom/xinzhu/overmind/server/content/b$b$a;->a(Lcom/xinzhu/overmind/server/content/b$b$a;)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eq v6, v5, :cond_3

    .line 51
    .line 52
    invoke-static {v3}, Lcom/xinzhu/overmind/server/content/b$b$a;->a(Lcom/xinzhu/overmind/server/content/b$b$a;)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-ne p4, v5, :cond_5

    .line 57
    .line 58
    :cond_3
    if-nez p1, :cond_4

    .line 59
    .line 60
    iget-boolean v5, v3, Lcom/xinzhu/overmind/server/content/b$b$a;->e:Z

    .line 61
    .line 62
    if-eqz v5, :cond_5

    .line 63
    .line 64
    :cond_4
    new-instance v5, Lcom/xinzhu/overmind/server/content/b$a;

    .line 65
    .line 66
    iget-object v3, v3, Lcom/xinzhu/overmind/server/content/b$b$a;->b:Landroid/database/IContentObserver;

    .line 67
    .line 68
    invoke-direct {v5, p0, v3, v4}, Lcom/xinzhu/overmind/server/content/b$a;-><init>(Lcom/xinzhu/overmind/server/content/b$b;Landroid/database/IContentObserver;Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_6
    return-void
.end method

.method private f(Landroid/net/Uri;)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    return p1
.end method

.method private g(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    add-int/lit8 p2, p2, -0x1

    .line 15
    .line 16
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method


# virtual methods
.method public c(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .locals 9

    .line 1
    const/4 v2, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v3, p2

    .line 5
    move v4, p3

    .line 6
    move-object v5, p4

    .line 7
    move v6, p5

    .line 8
    move v7, p6

    .line 9
    move/from16 v8, p7

    .line 10
    .line 11
    invoke-direct/range {v0 .. v8}, Lcom/xinzhu/overmind/server/content/b$b;->b(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public e(Landroid/net/Uri;ILandroid/database/IContentObserver;ZILjava/util/ArrayList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/database/IContentObserver;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/content/b$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v6, p0

    .line 2
    move/from16 v7, p2

    .line 3
    .line 4
    invoke-direct/range {p0 .. p1}, Lcom/xinzhu/overmind/server/content/b$b;->f(Landroid/net/Uri;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lt v7, v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    move-object v0, p0

    .line 12
    move-object/from16 v2, p3

    .line 13
    .line 14
    move/from16 v3, p4

    .line 15
    .line 16
    move/from16 v4, p5

    .line 17
    .line 18
    move-object/from16 v5, p6

    .line 19
    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/xinzhu/overmind/server/content/b$b;->d(ZLandroid/database/IContentObserver;ZILjava/util/ArrayList;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/xinzhu/overmind/server/content/b$b;->g(Landroid/net/Uri;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    const/4 v1, 0x0

    .line 30
    move-object v0, p0

    .line 31
    move-object/from16 v2, p3

    .line 32
    .line 33
    move/from16 v3, p4

    .line 34
    .line 35
    move/from16 v4, p5

    .line 36
    .line 37
    move-object/from16 v5, p6

    .line 38
    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/xinzhu/overmind/server/content/b$b;->d(ZLandroid/database/IContentObserver;ZILjava/util/ArrayList;)V

    .line 40
    .line 41
    .line 42
    move-object v0, v8

    .line 43
    :goto_0
    iget-object v1, v6, Lcom/xinzhu/overmind/server/content/b$b;->b:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x0

    .line 50
    :goto_1
    if-ge v2, v1, :cond_3

    .line 51
    .line 52
    iget-object v3, v6, Lcom/xinzhu/overmind/server/content/b$b;->b:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    move-object v8, v3

    .line 59
    check-cast v8, Lcom/xinzhu/overmind/server/content/b$b;

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-object v3, v8, Lcom/xinzhu/overmind/server/content/b$b;->a:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    :cond_1
    add-int/lit8 v10, v7, 0x1

    .line 72
    .line 73
    move-object/from16 v9, p1

    .line 74
    .line 75
    move-object/from16 v11, p3

    .line 76
    .line 77
    move/from16 v12, p4

    .line 78
    .line 79
    move/from16 v13, p5

    .line 80
    .line 81
    move-object/from16 v14, p6

    .line 82
    .line 83
    invoke-virtual/range {v8 .. v14}, Lcom/xinzhu/overmind/server/content/b$b;->e(Landroid/net/Uri;ILandroid/database/IContentObserver;ZILjava/util/ArrayList;)V

    .line 84
    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    :goto_2
    return-void
.end method

.method public h(Landroid/database/IContentObserver;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/content/b$b;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    const/4 v3, 0x1

    .line 10
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    iget-object v4, p0, Lcom/xinzhu/overmind/server/content/b$b;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lcom/xinzhu/overmind/server/content/b$b;

    .line 19
    .line 20
    invoke-virtual {v4, p1}, Lcom/xinzhu/overmind/server/content/b$b;->h(Landroid/database/IContentObserver;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    iget-object v4, p0, Lcom/xinzhu/overmind/server/content/b$b;->b:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    add-int/lit8 v2, v2, -0x1

    .line 32
    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    :cond_0
    add-int/2addr v2, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/xinzhu/overmind/server/content/b$b;->c:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v2, 0x0

    .line 48
    :goto_1
    if-ge v2, v0, :cond_3

    .line 49
    .line 50
    iget-object v4, p0, Lcom/xinzhu/overmind/server/content/b$b;->c:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lcom/xinzhu/overmind/server/content/b$b$a;

    .line 57
    .line 58
    iget-object v5, v4, Lcom/xinzhu/overmind/server/content/b$b$a;->b:Landroid/database/IContentObserver;

    .line 59
    .line 60
    invoke-interface {v5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-ne v5, p1, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/xinzhu/overmind/server/content/b$b;->c:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v4, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/xinzhu/overmind/server/content/b$b;->b:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_4

    .line 85
    .line 86
    iget-object p1, p0, Lcom/xinzhu/overmind/server/content/b$b;->c:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_4

    .line 93
    .line 94
    return v3

    .line 95
    :cond_4
    return v1
.end method
