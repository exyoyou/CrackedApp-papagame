.class Lcn/fly/tools/b/k$9;
.super Lcn/fly/tools/b/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/b/k;->t()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/fly/tools/b/k$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/tools/b/k;


# direct methods
.method constructor <init>(Lcn/fly/tools/b/k;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/b/k$9;->a:Lcn/fly/tools/b/k;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcn/fly/tools/b/k$a;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)J
    .locals 2

    const-wide/32 v0, 0x2bf20

    return-wide v0
.end method

.method protected b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/fly/tools/b/k$9;->a:Lcn/fly/tools/b/k;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/fly/tools/b/k;->a(Lcn/fly/tools/b/k;)Lcn/fly/tools/b/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcn/fly/tools/b/b;->ar()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
