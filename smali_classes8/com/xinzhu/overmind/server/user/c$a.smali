.class Lcom/xinzhu/overmind/server/user/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/server/user/c;->createUserLocked(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/xinzhu/overmind/server/user/c;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/user/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/user/c$a;->c:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    iput p2, p0, Lcom/xinzhu/overmind/server/user/c$a;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lna/c;->a()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget v3, p0, Lcom/xinzhu/overmind/server/user/c$a;->b:I

    .line 26
    .line 27
    invoke-virtual {v2, v1, v3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-virtual {v2, v1, v3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget v3, p0, Lcom/xinzhu/overmind/server/user/c$a;->b:I

    .line 49
    .line 50
    invoke-virtual {v2, v1, v3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->installPackageAsExist(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method
