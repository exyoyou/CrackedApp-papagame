.class Lcom/xinzhu/overmind/server/accounts/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/accounts/i$b;,
        Lcom/xinzhu/overmind/server/accounts/i$a;,
        Lcom/xinzhu/overmind/server/accounts/i$c;
    }
.end annotation


# static fields
.field private static final b:I = 0xfa00


# instance fields
.field private a:Lcom/xinzhu/overmind/server/accounts/i$b;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/i$b;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/accounts/i$b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i;->a:Lcom/xinzhu/overmind/server/accounts/i$b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/i$a;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/i$a;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/xinzhu/overmind/server/accounts/i;->a:Lcom/xinzhu/overmind/server/accounts/i$b;

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lcom/xinzhu/overmind/server/accounts/i$c;

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide p3

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    iget-wide v0, p2, Lcom/xinzhu/overmind/server/accounts/i$c;->b:J

    .line 21
    .line 22
    cmp-long v2, p3, v0

    .line 23
    .line 24
    if-gez v2, :cond_0

    .line 25
    .line 26
    iget-object p1, p2, Lcom/xinzhu/overmind/server/accounts/i$c;->a:Ljava/lang/String;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_0
    if-eqz p2, :cond_1

    .line 30
    .line 31
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p2, p2, Lcom/xinzhu/overmind/server/accounts/i$c;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    return-object p1
.end method

.method public b(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    cmp-long v2, v0, p6

    .line 11
    .line 12
    if-lez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/i$a;

    .line 16
    .line 17
    invoke-direct {v0, p1, p3, p4, p5}, Lcom/xinzhu/overmind/server/accounts/i$a;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/xinzhu/overmind/server/accounts/i$c;

    .line 21
    .line 22
    invoke-direct {p1, p2, p6, p7}, Lcom/xinzhu/overmind/server/accounts/i$c;-><init>(Ljava/lang/String;J)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/xinzhu/overmind/server/accounts/i;->a:Lcom/xinzhu/overmind/server/accounts/i$b;

    .line 26
    .line 27
    invoke-virtual {p2, v0, p1}, Lcom/xinzhu/overmind/server/accounts/i$b;->d(Lcom/xinzhu/overmind/server/accounts/i$a;Lcom/xinzhu/overmind/server/accounts/i$c;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public c(Landroid/accounts/Account;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i;->a:Lcom/xinzhu/overmind/server/accounts/i$b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/accounts/i$b;->b(Landroid/accounts/Account;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i;->a:Lcom/xinzhu/overmind/server/accounts/i$b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/i$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
