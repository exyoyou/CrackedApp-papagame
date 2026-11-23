.class Lcom/papa91/arc/widget/listview/ListViewFinal$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/widget/listview/ListViewFinal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/widget/listview/ListViewFinal;


# direct methods
.method constructor <init>(Lcom/papa91/arc/widget/listview/ListViewFinal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal$1;->this$0:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal$1;->this$0:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    return-void
.end method
