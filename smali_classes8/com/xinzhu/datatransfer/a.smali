.class public Lcom/xinzhu/datatransfer/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "a"

.field static b:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static c:Lcom/xinzhu/overmind/utils/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xinzhu/overmind/utils/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/datatransfer/a;->b:Landroid/util/ArrayMap;

    .line 7
    .line 8
    new-instance v0, Lcom/xinzhu/overmind/utils/c;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/xinzhu/overmind/utils/c;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/xinzhu/datatransfer/a;->c:Lcom/xinzhu/overmind/utils/c;

    .line 14
    .line 15
    sget-object v0, Lcom/xinzhu/datatransfer/a;->b:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-static {}, Lcom/xinzhu/datatransfer/b;->d()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {}, Lcom/xinzhu/overmind/a;->E()Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/xinzhu/datatransfer/a;->c:Lcom/xinzhu/overmind/utils/c;

    .line 29
    .line 30
    invoke-static {}, Lcom/xinzhu/datatransfer/b;->b()Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/utils/c;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    sget-object v0, Lcom/xinzhu/datatransfer/a;->c:Lcom/xinzhu/overmind/utils/c;

    .line 38
    .line 39
    invoke-static {}, Lcom/xinzhu/datatransfer/b;->a()Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/utils/c;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/xinzhu/datatransfer/a;->c:Lcom/xinzhu/overmind/utils/c;

    .line 47
    .line 48
    invoke-static {}, Lcom/xinzhu/datatransfer/b;->d()Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/utils/c;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/xinzhu/datatransfer/b;->a()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v0, Lcom/xinzhu/datatransfer/a;->a:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "Need Data Transfer, do it."

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/xinzhu/datatransfer/a;->b:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/util/Map$Entry;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/io/File;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/io/File;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    :try_start_0
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/l;->g(Ljava/io/File;Ljava/io/File;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/l;->j(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 v0, 0x0

    .line 73
    invoke-static {v0}, Lk8/b;->a(Z)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lk8/a;->a()V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/xinzhu/datatransfer/b;->a()Ljava/io/File;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/l;->j(Ljava/io/File;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public static b()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/xinzhu/datatransfer/b;->a()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v0, Lcom/xinzhu/datatransfer/a;->a:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "Need Data Transfer for main package, do it."

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/xinzhu/datatransfer/a;->b:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/util/Map$Entry;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/io/File;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/io/File;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    :try_start_0
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/l;->g(Ljava/io/File;Ljava/io/File;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/l;->j(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 v0, 0x1

    .line 73
    invoke-static {v0}, Lk8/b;->a(Z)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
