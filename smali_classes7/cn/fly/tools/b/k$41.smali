.class Lcn/fly/tools/b/k$41;
.super Lcn/fly/tools/b/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/b/k;->ah()Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/fly/tools/b/k$a<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/tools/b/k;


# direct methods
.method constructor <init>(Lcn/fly/tools/b/k;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/b/k$41;->a:Lcn/fly/tools/b/k;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcn/fly/tools/b/k$a;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/fly/tools/b/k$41;->a:Lcn/fly/tools/b/k;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/fly/tools/b/k;->b(Lcn/fly/tools/b/k;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcn/fly/tools/b/k$41;->a:Lcn/fly/tools/b/k;

    .line 10
    .line 11
    invoke-static {v0}, Lcn/fly/tools/b/k;->b(Lcn/fly/tools/b/k;)Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-static {}, Lcn/fly/tools/b/b;->w()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcn/fly/tools/b/k$41;->a:Lcn/fly/tools/b/k;

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcn/fly/tools/b/k;->a(Lcn/fly/tools/b/k;Landroid/content/Context;)Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    :cond_1
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
    invoke-virtual {p0}, Lcn/fly/tools/b/k$41;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
