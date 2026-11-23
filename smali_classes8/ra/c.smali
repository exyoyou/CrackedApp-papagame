.class public Lra/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lra/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)I
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1, p3}, Lcom/xinzhu/overmind/a;->v(Ljava/lang/String;I)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p2}, Lcom/xinzhu/overmind/utils/l;->j(Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p3}, Lcom/xinzhu/overmind/a;->r(Ljava/lang/String;I)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p2}, Lcom/xinzhu/overmind/utils/l;->p(Ljava/io/File;)Z

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p3}, Lcom/xinzhu/overmind/a;->n(Ljava/lang/String;I)Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Lcom/xinzhu/overmind/utils/l;->p(Ljava/io/File;)Z

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p3}, Lcom/xinzhu/overmind/a;->t(Ljava/lang/String;I)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p2}, Lcom/xinzhu/overmind/utils/l;->p(Ljava/io/File;)Z

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p3}, Lcom/xinzhu/overmind/a;->p(Ljava/lang/String;I)Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p2}, Lcom/xinzhu/overmind/utils/l;->p(Ljava/io/File;)Z

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p3}, Lcom/xinzhu/overmind/a;->x(Ljava/lang/String;I)Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/l;->p(Ljava/io/File;)Z

    .line 45
    .line 46
    .line 47
    invoke-static {p3}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/l;->p(Ljava/io/File;)Z

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    return p1
.end method
