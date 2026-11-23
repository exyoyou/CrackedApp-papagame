.class Lcn/fly/tools/utils/FlyPersistence$h$1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/utils/FlyPersistence$h;-><init>(IJJDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lcn/fly/tools/utils/FlyPersistence$g;",
        "Lcn/fly/tools/utils/FlyPersistence$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/tools/utils/FlyPersistence$h;


# direct methods
.method constructor <init>(Lcn/fly/tools/utils/FlyPersistence$h;IFZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$h$1;->a:Lcn/fly/tools/utils/FlyPersistence$h;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lcn/fly/tools/utils/FlyPersistence$g;",
            "Lcn/fly/tools/utils/FlyPersistence$c;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$h$1;->a:Lcn/fly/tools/utils/FlyPersistence$h;

    .line 6
    .line 7
    invoke-static {v1}, Lcn/fly/tools/utils/FlyPersistence$h;->c(Lcn/fly/tools/utils/FlyPersistence$h;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$h$1;->a:Lcn/fly/tools/utils/FlyPersistence$h;

    .line 19
    .line 20
    invoke-static {v1}, Lcn/fly/tools/utils/FlyPersistence$h;->d(Lcn/fly/tools/utils/FlyPersistence$h;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcn/fly/tools/utils/FlyPersistence$c;

    .line 29
    .line 30
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$c;->c(Lcn/fly/tools/utils/FlyPersistence$c;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    neg-long v2, v2

    .line 35
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 36
    .line 37
    .line 38
    :cond_1
    return v0
.end method
