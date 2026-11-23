.class public Lra/b;
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
    iget-object p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/xinzhu/overmind/a;->d(Ljava/lang/String;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p2}, Lcom/xinzhu/overmind/utils/l;->j(Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 13
    .line 14
    iget-object p2, p2, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p2}, Lcom/xinzhu/overmind/a;->d(Ljava/lang/String;)Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p2}, Lcom/xinzhu/overmind/utils/l;->p(Ljava/io/File;)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/l;->p(Ljava/io/File;)Z

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    return p1
.end method
