.class Lcom/facebook/cache/disk/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/cache/disk/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cache/disk/i;->get()Lcom/facebook/cache/disk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field b:J

.field final synthetic c:Lcom/facebook/cache/disk/i;


# direct methods
.method constructor <init>(Lcom/facebook/cache/disk/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/i$a;->c:Lcom/facebook/cache/disk/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/facebook/cache/disk/i$a;->b:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/cache/disk/c$c;Lcom/facebook/cache/disk/c$c;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/i$a;->c:Lcom/facebook/cache/disk/i;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/facebook/cache/disk/i$a;->b:J

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/cache/disk/i;->a(Lcom/facebook/cache/disk/c$c;J)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/facebook/cache/disk/i$a;->c:Lcom/facebook/cache/disk/i;

    .line 10
    .line 11
    iget-wide v1, p0, Lcom/facebook/cache/disk/i$a;->b:J

    .line 12
    .line 13
    invoke-virtual {v0, p2, v1, v2}, Lcom/facebook/cache/disk/i;->a(Lcom/facebook/cache/disk/c$c;J)F

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    cmpg-float v0, p1, p2

    .line 18
    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    cmpl-float p1, p2, p1

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, -0x1

    .line 30
    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/facebook/cache/disk/c$c;

    .line 2
    .line 3
    check-cast p2, Lcom/facebook/cache/disk/c$c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/facebook/cache/disk/i$a;->a(Lcom/facebook/cache/disk/c$c;Lcom/facebook/cache/disk/c$c;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
