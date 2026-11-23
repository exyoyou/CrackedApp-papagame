.class public Lorg/ppsspp/ppsspp/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ppsspp/ppsspp/m$c;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = ".."


# instance fields
.field private a:Lorg/ppsspp/ppsspp/m$c;

.field private final b:Landroid/app/Activity;

.field private c:[Ljava/lang/String;

.field private d:Ljava/io/File;

.field private e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/io/File;Lorg/ppsspp/ppsspp/m$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/ppsspp/ppsspp/m$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/m$a;-><init>(Lorg/ppsspp/ppsspp/m;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/ppsspp/ppsspp/m;->e:Ljava/util/Comparator;

    .line 10
    .line 11
    new-instance v0, Lorg/ppsspp/ppsspp/m$b;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/m$b;-><init>(Lorg/ppsspp/ppsspp/m;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/ppsspp/ppsspp/m;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/ppsspp/ppsspp/m;->b:Landroid/app/Activity;

    .line 19
    .line 20
    iput-object p3, p0, Lorg/ppsspp/ppsspp/m;->a:Lorg/ppsspp/ppsspp/m$c;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    if-nez p3, :cond_0

    .line 27
    .line 28
    new-instance p2, Ljava/io/File;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-direct {p0, p2}, Lorg/ppsspp/ppsspp/m;->f(Ljava/io/File;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method static synthetic a(Lorg/ppsspp/ppsspp/m;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/m;->c:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lorg/ppsspp/ppsspp/m;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/ppsspp/ppsspp/m;->e(Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic c(Lorg/ppsspp/ppsspp/m;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/ppsspp/ppsspp/m;->f(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lorg/ppsspp/ppsspp/m;)Lorg/ppsspp/ppsspp/m$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/m;->a:Lorg/ppsspp/ppsspp/m$c;

    .line 2
    .line 3
    return-object p0
.end method

.method private e(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    const-string v0, ".."

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lorg/ppsspp/ppsspp/m;->d:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    iget-object v1, p0, Lorg/ppsspp/ppsspp/m;->d:Ljava/io/File;

    .line 19
    .line 20
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method private f(Ljava/io/File;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/m;->d:Ljava/io/File;

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, ".."

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Lorg/ppsspp/ppsspp/m;->e:Ljava/util/Comparator;

    .line 27
    .line 28
    invoke-static {p1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 29
    .line 30
    .line 31
    array-length v2, p1

    .line 32
    const/4 v3, 0x0

    .line 33
    :goto_0
    if-ge v3, v2, :cond_1

    .line 34
    .line 35
    aget-object v4, p1, v3

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-array p1, v1, [Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, [Ljava/lang/String;

    .line 54
    .line 55
    iput-object p1, p0, Lorg/ppsspp/ppsspp/m;->c:[Ljava/lang/String;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public g()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/ppsspp/ppsspp/m;->b:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/ppsspp/ppsspp/m;->d:Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lorg/ppsspp/ppsspp/m;->c:[Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, p0, Lorg/ppsspp/ppsspp/m;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 25
    .line 26
    .line 27
    return-void
.end method
