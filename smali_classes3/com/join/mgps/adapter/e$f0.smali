.class public Lcom/join/mgps/adapter/e$f0;
.super Lcom/join/mgps/adapter/e$h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f0"
.end annotation


# instance fields
.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field final synthetic h:Lcom/join/mgps/adapter/e;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/e$f0;->h:Lcom/join/mgps/adapter/e;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e$h0;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a10d8

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/adapter/e$f0;->e:Landroid/widget/TextView;

    .line 16
    .line 17
    const p1, 0x7f0a048c

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/adapter/e$f0;->f:Landroid/widget/TextView;

    .line 27
    .line 28
    const p1, 0x7f0a1301

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/adapter/e$f0;->g:Landroid/widget/TextView;

    .line 38
    .line 39
    return-void
.end method
