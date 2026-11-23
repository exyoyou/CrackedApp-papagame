.class Lcom/xinzhu/overmind/server/accounts/i$b;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/accounts/i$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Lcom/xinzhu/overmind/server/accounts/i$a;",
        "Lcom/xinzhu/overmind/server/accounts/i$c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xinzhu/overmind/server/accounts/i$b$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/Account;",
            "Lcom/xinzhu/overmind/server/accounts/i$b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const v0, 0xfa00

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i$b;->a:Ljava/util/HashMap;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i$b;->b:Ljava/util/HashMap;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method protected a(ZLcom/xinzhu/overmind/server/accounts/i$a;Lcom/xinzhu/overmind/server/accounts/i$c;Lcom/xinzhu/overmind/server/accounts/i$c;)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    if-nez p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/i$b;->a:Ljava/util/HashMap;

    .line 6
    .line 7
    new-instance p4, Landroid/util/Pair;

    .line 8
    .line 9
    iget-object p2, p2, Lcom/xinzhu/overmind/server/accounts/i$a;->a:Landroid/accounts/Account;

    .line 10
    .line 11
    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p3, p3, Lcom/xinzhu/overmind/server/accounts/i$c;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p4, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/xinzhu/overmind/server/accounts/i$b$a;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/accounts/i$b$a;->b()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public b(Landroid/accounts/Account;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i$b;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/xinzhu/overmind/server/accounts/i$b$a;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/accounts/i$b$a;->b()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i$b;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    new-instance v1, Landroid/util/Pair;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/xinzhu/overmind/server/accounts/i$b$a;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/accounts/i$b$a;->b()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public d(Lcom/xinzhu/overmind/server/accounts/i$a;Lcom/xinzhu/overmind/server/accounts/i$c;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/Pair;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/xinzhu/overmind/server/accounts/i$a;->a:Landroid/accounts/Account;

    .line 4
    .line 5
    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p2, Lcom/xinzhu/overmind/server/accounts/i$c;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/i$b;->a:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/xinzhu/overmind/server/accounts/i$b$a;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Lcom/xinzhu/overmind/server/accounts/i$b$a;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/xinzhu/overmind/server/accounts/i$b$a;-><init>(Lcom/xinzhu/overmind/server/accounts/i$b;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/accounts/i$b$a;->a(Lcom/xinzhu/overmind/server/accounts/i$a;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/i$b;->a:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i$b;->b:Ljava/util/HashMap;

    .line 36
    .line 37
    iget-object v1, p1, Lcom/xinzhu/overmind/server/accounts/i$a;->a:Landroid/accounts/Account;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/xinzhu/overmind/server/accounts/i$b$a;

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/i$b$a;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/server/accounts/i$b$a;-><init>(Lcom/xinzhu/overmind/server/accounts/i$b;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/accounts/i$b$a;->a(Lcom/xinzhu/overmind/server/accounts/i$a;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/i$b;->b:Ljava/util/HashMap;

    .line 56
    .line 57
    iget-object v2, p1, Lcom/xinzhu/overmind/server/accounts/i$a;->a:Landroid/accounts/Account;

    .line 58
    .line 59
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method protected e(Lcom/xinzhu/overmind/server/accounts/i$a;Lcom/xinzhu/overmind/server/accounts/i$c;)I
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/xinzhu/overmind/server/accounts/i$c;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/xinzhu/overmind/server/accounts/i$a;

    .line 2
    .line 3
    check-cast p3, Lcom/xinzhu/overmind/server/accounts/i$c;

    .line 4
    .line 5
    check-cast p4, Lcom/xinzhu/overmind/server/accounts/i$c;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/i$b;->a(ZLcom/xinzhu/overmind/server/accounts/i$a;Lcom/xinzhu/overmind/server/accounts/i$c;Lcom/xinzhu/overmind/server/accounts/i$c;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/xinzhu/overmind/server/accounts/i$a;

    .line 2
    .line 3
    check-cast p2, Lcom/xinzhu/overmind/server/accounts/i$c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/i$b;->e(Lcom/xinzhu/overmind/server/accounts/i$a;Lcom/xinzhu/overmind/server/accounts/i$c;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
