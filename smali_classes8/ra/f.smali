.class public Lra/f;
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
    invoke-static {p1, p3}, Lcom/xinzhu/overmind/a;->r(Ljava/lang/String;I)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p2}, Lcom/xinzhu/overmind/utils/l;->j(Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p3}, Lcom/xinzhu/overmind/a;->x(Ljava/lang/String;I)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/l;->j(Ljava/io/File;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1
.end method
