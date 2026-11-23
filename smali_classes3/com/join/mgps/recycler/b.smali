.class public Lcom/join/mgps/recycler/b;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# instance fields
.field private a:Lcom/join/mgps/recycler/a;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/join/mgps/recycler/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapter",
            "spanSize"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/recycler/b;->a:Lcom/join/mgps/recycler/a;

    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/recycler/b;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/recycler/b;->a:Lcom/join/mgps/recycler/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/recycler/a;->isHeader(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/recycler/b;->a:Lcom/join/mgps/recycler/a;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/join/mgps/recycler/a;->isFooter(I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 22
    :goto_1
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget v1, p0, Lcom/join/mgps/recycler/b;->b:I

    .line 25
    .line 26
    :cond_2
    return v1
.end method
