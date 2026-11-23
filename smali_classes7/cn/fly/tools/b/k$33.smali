.class Lcn/fly/tools/b/k$33;
.super Lcn/fly/tools/b/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/b/k;->r(Z)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/fly/tools/b/k$a<",
        "Ljava/util/ArrayList<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcn/fly/tools/b/k;


# direct methods
.method constructor <init>(Lcn/fly/tools/b/k;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/b/k$33;->b:Lcn/fly/tools/b/k;

    .line 2
    .line 3
    iput-boolean p3, p0, Lcn/fly/tools/b/k$33;->a:Z

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcn/fly/tools/b/k$a;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)J
    .locals 2

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcn/fly/tools/b/k$33;->a(Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Ljava/util/ArrayList;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)J"
        }
    .end annotation

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcn/fly/tools/b/k$33;->b:Lcn/fly/tools/b/k;

    invoke-static {v2, p1}, Lcn/fly/tools/b/k;->a(Lcn/fly/tools/b/k;Ljava/util/Calendar;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x5265c00

    :goto_0
    return-wide v2
.end method

.method protected a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcn/fly/tools/b/k$33;->b:Lcn/fly/tools/b/k;

    invoke-static {v0}, Lcn/fly/tools/b/k;->a(Lcn/fly/tools/b/k;)Lcn/fly/tools/b/b;

    move-result-object v0

    iget-boolean v1, p0, Lcn/fly/tools/b/k$33;->a:Z

    invoke-virtual {v0, v1}, Lcn/fly/tools/b/b;->c(Z)Ljava/util/ArrayList;

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
    invoke-virtual {p0}, Lcn/fly/tools/b/k$33;->a()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
