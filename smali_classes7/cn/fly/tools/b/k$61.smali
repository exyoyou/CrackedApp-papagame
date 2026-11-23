.class Lcn/fly/tools/b/k$61;
.super Lcn/fly/tools/b/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/b/k;->aB()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/fly/tools/b/k$a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/tools/b/k;


# direct methods
.method constructor <init>(Lcn/fly/tools/b/k;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/b/k$61;->a:Lcn/fly/tools/b/k;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcn/fly/tools/b/k$a;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Integer;)J
    .locals 2

    .line 1
    const-wide/32 v0, 0x2bf20

    return-wide v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)J
    .locals 2

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcn/fly/tools/b/k$61;->a(Ljava/lang/Integer;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcn/fly/tools/b/k$61;->a:Lcn/fly/tools/b/k;

    invoke-static {v0}, Lcn/fly/tools/b/k;->a(Lcn/fly/tools/b/k;)Lcn/fly/tools/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/fly/tools/b/b;->aq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/fly/tools/b/k$61;->a()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
