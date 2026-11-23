.class final Lcn/fly/commons/cc/u$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/commons/cc/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Lcn/fly/commons/cc/t;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    invoke-virtual {v0, p1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    invoke-virtual {v0}, Lcn/fly/commons/cc/t;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    invoke-virtual {v0, p1}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    invoke-virtual {v0, p1, p2}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    invoke-virtual {v0, p1, p2}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    invoke-virtual {v0, p1}, Lcn/fly/commons/cc/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    invoke-virtual {v0, p1, p2}, Lcn/fly/commons/cc/t;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
