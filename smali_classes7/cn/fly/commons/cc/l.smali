.class public Lcn/fly/commons/cc/l;
.super Landroid/database/ContentObserver;
.source "SourceFile"

# interfaces
.implements Lcn/fly/commons/cc/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/ContentObserver;",
        "Lcn/fly/commons/cc/y<",
        "Lcn/fly/commons/cc/l;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/fly/commons/cc/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public a(Lcn/fly/commons/cc/n;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/fly/commons/cc/l;->a:Lcn/fly/commons/cc/n;

    return-void
.end method

.method public a(Lcn/fly/commons/cc/l;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/fly/commons/cc/l;",
            "Ljava/lang/Class<",
            "Lcn/fly/commons/cc/l;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[Z[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    const-string p2, "setHandler"

    .line 3
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    array-length p2, p4

    const/4 p5, 0x1

    if-ne p2, p5, :cond_0

    aget-object p2, p4, p3

    if-eqz p2, :cond_0

    instance-of p4, p2, Lcn/fly/commons/cc/n;

    if-eqz p4, :cond_0

    .line 4
    check-cast p2, Lcn/fly/commons/cc/n;

    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/l;->a(Lcn/fly/commons/cc/n;)V

    return p5

    :cond_0
    return p3
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/fly/commons/cc/l;

    invoke-virtual/range {p0 .. p7}, Lcn/fly/commons/cc/l;->a(Lcn/fly/commons/cc/l;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public onChange(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/fly/commons/cc/l;->a:Lcn/fly/commons/cc/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcn/fly/commons/cc/l;->a:Lcn/fly/commons/cc/n;

    .line 19
    .line 20
    const-string v1, "onChange"

    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Lcn/fly/commons/cc/n;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
