.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xinzhu/overmind/server/pm/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;->a:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 1
    new-instance p2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j$a;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j$a;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;->a:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mHandler:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 0

    .line 1
    return-void
.end method
