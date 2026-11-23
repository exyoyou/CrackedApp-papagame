.class Lcom/join/mgps/adapter/d2$f2;
.super Lf7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/d2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f2"
.end annotation


# instance fields
.field d:Lcom/facebook/drawee/view/SimpleDraweeView;

.field e:Lcom/join/android/app/component/video/StandardVideoView;

.field f:Landroid/widget/LinearLayout;

.field final synthetic g:Lcom/join/mgps/adapter/d2;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$f2;->g:Lcom/join/mgps/adapter/d2;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lf7/a;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a0a17

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$f2;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 16
    .line 17
    const p1, 0x7f0a1b6a

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/join/android/app/component/video/StandardVideoView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$f2;->e:Lcom/join/android/app/component/video/StandardVideoView;

    .line 27
    .line 28
    const p1, 0x7f0a1405

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/LinearLayout;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$f2;->f:Landroid/widget/LinearLayout;

    .line 38
    .line 39
    return-void
.end method
