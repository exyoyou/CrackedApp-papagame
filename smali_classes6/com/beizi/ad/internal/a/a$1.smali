.class Lcom/beizi/ad/internal/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/internal/a/a;->a(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/beizi/ad/internal/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/internal/a/a;


# direct methods
.method constructor <init>(Lcom/beizi/ad/internal/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/internal/a/a$1;->a:Lcom/beizi/ad/internal/a/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/ad/internal/a/b;Lcom/beizi/ad/internal/a/b;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/beizi/ad/internal/a/b;->b()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p2}, Lcom/beizi/ad/internal/a/b;->b()J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    cmp-long v2, v0, p1

    .line 10
    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, -0x1

    .line 16
    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/beizi/ad/internal/a/b;

    .line 2
    .line 3
    check-cast p2, Lcom/beizi/ad/internal/a/b;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/beizi/ad/internal/a/a$1;->a(Lcom/beizi/ad/internal/a/b;Lcom/beizi/ad/internal/a/b;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
