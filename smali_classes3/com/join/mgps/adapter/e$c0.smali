.class public Lcom/join/mgps/adapter/e$c0;
.super Lcom/join/mgps/adapter/e$h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c0"
.end annotation


# instance fields
.field public e:Landroid/view/View;

.field final synthetic f:Lcom/join/mgps/adapter/e;


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
    iput-object p1, p0, Lcom/join/mgps/adapter/e$c0;->f:Lcom/join/mgps/adapter/e;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e$h0;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a1087

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/join/mgps/adapter/e$c0;->e:Landroid/view/View;

    .line 14
    .line 15
    return-void
.end method
