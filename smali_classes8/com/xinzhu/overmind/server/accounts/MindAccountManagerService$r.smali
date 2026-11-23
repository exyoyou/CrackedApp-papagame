.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "r"
.end annotation


# instance fields
.field public a:Landroid/accounts/Account;

.field public b:I


# direct methods
.method public constructor <init>(Landroid/accounts/Account;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->a:Landroid/accounts/Account;

    .line 5
    .line 6
    iput p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->a:Landroid/accounts/Account;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->a:Landroid/accounts/Account;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->b:I

    .line 24
    .line 25
    iget p1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->b:I

    .line 26
    .line 27
    if-ne v1, p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->a:Landroid/accounts/Account;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->b:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->a:Landroid/accounts/Account;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " u"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->b:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
