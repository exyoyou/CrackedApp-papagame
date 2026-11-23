.class public final synthetic Lcom/xinzhu/overmind/server/accounts/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;

.field public final synthetic c:Landroid/accounts/Account;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/g;->b:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;

    iput-object p2, p0, Lcom/xinzhu/overmind/server/accounts/g;->c:Landroid/accounts/Account;

    iput p3, p0, Lcom/xinzhu/overmind/server/accounts/g;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/g;->b:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/g;->c:Landroid/accounts/Account;

    iget v2, p0, Lcom/xinzhu/overmind/server/accounts/g;->d:I

    invoke-static {v0, v1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V

    return-void
.end method
