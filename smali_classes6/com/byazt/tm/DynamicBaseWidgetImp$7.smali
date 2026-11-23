.class public Lcom/byazt/tm/DynamicBaseWidgetImp$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x30,
        0x6a3
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tm/DynamicBaseWidgetImp;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/tm/DynamicBaseWidgetImp;


# direct methods
.method public constructor <init>(Lcom/byazt/tm/DynamicBaseWidgetImp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tm/DynamicBaseWidgetImp$7;->c:Lcom/byazt/tm/DynamicBaseWidgetImp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidgetImp$7;->c:Lcom/byazt/tm/DynamicBaseWidgetImp;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/tm/DynamicBaseWidgetImp;->my:Lcom/byazt/nk/InteractViewContainer;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lcom/byazt/tm/DynamicBaseWidgetImp;->c(Lcom/byazt/tm/DynamicBaseWidgetImp;Z)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidgetImp$7;->c:Lcom/byazt/tm/DynamicBaseWidgetImp;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/tm/DynamicBaseWidgetImp;->my:Lcom/byazt/nk/InteractViewContainer;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/nk/InteractViewContainer;->uj()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidgetImp$7;->c:Lcom/byazt/tm/DynamicBaseWidgetImp;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/byazt/tm/DynamicBaseWidgetImp;->my:Lcom/byazt/nk/InteractViewContainer;

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidgetImp$7;->c:Lcom/byazt/tm/DynamicBaseWidgetImp;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/byazt/tm/DynamicBaseWidgetImp;->my:Lcom/byazt/nk/InteractViewContainer;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
