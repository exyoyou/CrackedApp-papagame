.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j$a;->c:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j$a;->b:Ljava/lang/String;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j$a;->c:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;->a:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$100(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j$a;->c:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;->a:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j$a;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$200(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
